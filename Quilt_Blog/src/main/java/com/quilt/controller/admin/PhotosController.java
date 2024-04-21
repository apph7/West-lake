package com.quilt.controller.admin;

import com.quilt.dto.Result;
import com.quilt.entity.*;
import com.quilt.exception.enums.QuiltEnums;
import com.quilt.service.LogService;
import com.quilt.service.PhotosService;
import com.quilt.utils.FileUploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin/photos")
public class PhotosController {

    @RequestMapping("/info")
    public String getPhotosInfoPage(HttpSession session, Model model){
        return "admin/photos_info";
    }
    @RequestMapping("/info/add")
    @ResponseBody
    public Result addPhotosInfo(HttpSession session,
                                @RequestParam("photoName") String photoName,
                                @RequestParam("photoPic") MultipartFile photoPic) {
        User user = (User)session.getAttribute("user");
        if ( user == null ){
            return new Result(QuiltEnums.FAILED);
        }
        PhotosWithBLOBs photosWithBLOBs = new PhotosWithBLOBs();
        photosWithBLOBs.setPhotoName(photoName);
        try {

            if (photoPic != null && photoPic.getSize() >0){
                photosWithBLOBs.setPhotoPic(FileUploadUtil.saveImage(session,photoPic));
            }

            int r = photosService.addPhotos(photosWithBLOBs);
            if (r == 1){

                return new Result(QuiltEnums.SUCCESS);
            }

            return new Result(QuiltEnums.FAILED);

        }catch (IOException e){

            return new Result(QuiltEnums.FAILED);
        }



    }
    /**
     * 渲染相册记录页面
     * @param session
     * @param model
     * @return
     */

    @Autowired
    PhotosService photosService;

    @RequestMapping("/all")
    public String getAllPhotosPage(HttpSession session, Model model){

        User user = (User) session.getAttribute("user");
        if(user == null){

            return "redirect:/login";
        }

        List<Photos> photos = photosService.getAllPhotos();

        model.addAttribute("photos",photos);

        return "admin/photos";
    }

    @RequestMapping("/delete/{id}")
    @ResponseBody
    public Result deleteLogRecord(HttpSession session,
                                  @PathVariable("id")Integer id){

        User user = (User) session.getAttribute("user");
        if(user == null){
            return new Result(QuiltEnums.FAILED);
        }

        int r = photosService.deletePhotos(id);

        if(r==1){

            return new Result(QuiltEnums.SUCCESS);
        }

        return new Result(QuiltEnums.FAILED);
    }

    /**
     * 添加标签
     * @param session
     * @param photoId
     * @param photoName
     * @param photoPic
     * @return
     */
    @RequestMapping("/photos/add")
    @ResponseBody
    public Result deletePhotos(HttpSession session,
                               @RequestParam("photoId") Integer photoId,
                               @RequestParam("photoName") String photoName,
                               @RequestParam("photoPic") String photoPic){

        User user = (User) session.getAttribute("user");
        if ( user == null ){

            return new Result(QuiltEnums.FAILED);

        }

        Photos photos = new Photos();

        photos.setPhotoName(photoName);
        photos.setPhotoPic(photoPic);

        int r = photosService.addPhotos(photos);

        if( r==1 ){

            return new Result(QuiltEnums.SUCCESS);
        }
        return new Result(QuiltEnums.FAILED);
    }

}