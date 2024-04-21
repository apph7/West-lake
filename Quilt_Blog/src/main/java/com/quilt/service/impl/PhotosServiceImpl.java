package com.quilt.service.impl;

import com.quilt.dao.PhotosDAO;
import com.quilt.entity.Photos;
import com.quilt.entity.PhotosWithBLOBs;
import com.quilt.entity.UserWithBLOBs;
import com.quilt.service.PhotosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;;

import java.util.List;

@Service
public class PhotosServiceImpl implements PhotosService {

    @Autowired
    PhotosDAO photosDAO;

    @Override
    public int addPhotos(Photos photos) {
        return photosDAO.insertSelective(photos);
    }

    @Override
    public int deletePhotos(Integer id) {
        return photosDAO.deleteByPrimaryKey(id);
    }

    @Override
    public List<Photos> getAllPhotos() {
        return photosDAO.getAllPhotos();
    }

    @Override
    public int getPhotosCount() {
        return photosDAO.getPhotosCount();
    }
    @Override
    public int modPhotosInfo(PhotosWithBLOBs photosWithBLOBs) {
        return photosDAO.updateByPrimaryKeySelective(photosWithBLOBs);
    }

}
