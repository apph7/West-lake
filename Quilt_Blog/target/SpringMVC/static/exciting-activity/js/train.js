let acfirstButton = document.querySelector('#contact-submit')
let acTips = document.querySelector('#ac-tips')
let acform = document.querySelector('#contact')
let iphoneRepeate = document.querySelector('.iphone-repeate')
let verifyForm = document.querySelector('#verifyForm')
let iphoneStr = ''
acfirstButton.addEventListener('click',function(){
    let str = ``

let checkedBox = document.querySelector('#must-checked')
if(!checkedBox.checked){
    str += '请同意服务条款'
}
let nameBox = document.querySelector('#ac-name')
if(nameBox.value.length == 0){
    str += ' 姓名不能为空'
}
let acEmail = document.querySelector('#ac-email')
let pattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
let x = pattern.test(acEmail.value)
if(!x){
    str += ' 邮箱有误'
}

let acIphone = document.querySelector('.ac-iphone')
let tel = /^1\d{10}$/;
if (!tel.test(acIphone.value)) {
	str += ' 手机号码有误'
}else{
    iphoneStr = ' ' + acIphone.value
}
let acPersonid = document.querySelector('#ac-personid')

let regCard = /^[1-9]\d{5}(18|19|20|21|22)?\d{2}(0[1-9]|1[0-2])(0[1-9]|[12]\d|3[01])\d{3}(\d|[Xx])$/;
if(acPersonid.value.card != "" &&!regCard.test(acPersonid.value))
{
    str  += ' 身份证输入不正确'
}

let radios = document.getElementsByName('acpayType');
let isSelected = false;
for(let i = 0; i < radios.length; i++) {
    if(radios[i].checked) {
        isSelected = true;
        break;
    }
}
if(!isSelected) {
    str += ' 请选择票种'
}
let acText  =  document.querySelector('#ac-text')
if(acText.value.length == 0){
    str += ' 个人介绍不能为空'
}

acTips.innerText = str

// 如果你要调试,直接把下面这个if的条件删去（不能删内容）
// 就能无视表单的验证限制了
if(str == ''){
    acform.classList.add('fade')
    iphoneRepeate.innerText = iphoneStr
    verifyForm.classList.remove('fade')
   
}
})



let acCancle = document.querySelectorAll('.ac-cancle')
let acPay = document.querySelector('#ac-pay')
let acTrain = document.querySelector('#ac-train')
acCancle.forEach(element => {
    element.addEventListener('click',function(){
        acform.classList.remove('fade')
        iphoneRepeate.innerText = ''
        verifyForm.classList.add('fade')
        acPay.classList.add('fade')
    })
});
acTrain.addEventListener('click',function(){
    acPay.classList.remove('fade')
})
// 验证码
let count = document.querySelector('.count')
let allowedCLick = true
count.addEventListener('click',function(){
    if(!allowedCLick){
        return
    }
    allowedCLick = false
    let timer = 60;
    count.innerHTML = timer;
    let countdown = setInterval(function() {
        count.innerHTML = timer;
         if (timer == 0) {
            clearInterval(countdown);
            count.innerHTML = '重新获取';
            count.style.color = '#000000';
            count.style.cursor = 'pointer';
            allowedCLick = true

        } else {
            
            timer--;
            count.style.cursor = 'not-allowed';
        }
}, 1000);
})

let testCode = 2222
let acMoney = document.querySelector('.ac-money')
let acSure = document.querySelector('.ac-sure')
let tip3 = document.querySelector('#tip3')
acSure.addEventListener('click',function(){
if(document.querySelector('#verifyCode').value == testCode){
    // 验证成功,提交上面那个表单 此处应该把第一个表单给到后端去
    

    // 出现支付窗口
    tip3.innerHTML = ''
    acMoney.classList.remove('fade')
    verifyForm.classList.add('fade')

}else{
// 失败了 阻止提交
tip3.innerHTML = '验证码不正确'
}
})

// 如果支付完成 要去掉支付窗口和其他窗口
function returnToOrgin(){
    verifyForm.classList.add('fade') 
    acMoney.classList.add('fade')

    acform.classList.remove('fade')
    iphoneRepeate.innerText = ''
    acPay.classList.add('fade')
}