import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AuthenticationController extends GetxController{

  static AuthenticationController authController = Get.find();

  late Rx<File?> pickedFile;
  File? get profileImage => pickedFile.value;
  XFile? imageFile;

  // from gallery
  pickImageFileFromGallery() async{
   imageFile = await ImagePicker().pickImage(source: ImageSource.gallery);

   if(imageFile != null){
    Get.snackbar("Profile Image", "You've successfully picked your profile image from your gallery.");
   }

   pickedFile = Rx<File?>(File(imageFile!.path));
  }

  //from camera
  captureImageFromCamera() async{
   imageFile = await ImagePicker().pickImage(source: ImageSource.camera);

   if(imageFile != null){
    Get.snackbar("Profile Image", "You've successfully captured your profile image using camera.");
   }

   pickedFile = Rx<File?>(File(imageFile!.path));
  }

}