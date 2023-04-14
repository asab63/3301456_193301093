import 'package:get/get.dart';

validInput(String val ,int min ,int max ,String type){
  if(type == "username"){
    if(!GetUtils.isUsername(val)){
      return "geçerli kullanıcı adı değil";
    }
  }
   if(type == "email"){
    if(!GetUtils.isEmail(val)){
      return "geçerli Email değil";
    }
  }
   if(type == "phone"){
    if(!GetUtils.isPhoneNumber(val)){
      return "geçerli telefon numarasi değil";
    }
  }
  if(val.isEmpty){
    return "boş olamaz";
  }
  if(val.length < min){
    return "$min 'den küçük olamaz";
  }
  if(val.length > max){
    return "$max 'den büyük olamaz";
  }
}