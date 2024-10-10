import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_app_2/controllers/authentication_controller.dart';
import 'package:tinder_app_2/widgets/custom_text_field_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //personal info
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController ageTextEditingController = TextEditingController();
  TextEditingController phoneNoTextEditingController = TextEditingController();
  TextEditingController cityTextEditingController = TextEditingController();
  TextEditingController countryTextEditingController = TextEditingController();
  TextEditingController profileHeadingTextEditingController =
      TextEditingController();
  TextEditingController lookingForInaPartnerTextEditingController =
      TextEditingController();

  // appearance
  TextEditingController heightTextEditingController = TextEditingController();
  TextEditingController weightTextEditingController = TextEditingController();
  TextEditingController bodyTypeTextEditingController = TextEditingController();

  // life style
  TextEditingController drinkTextEditingController = TextEditingController();
  TextEditingController smokeTextEditingController = TextEditingController();
  TextEditingController martialStatusTextEditingController =
      TextEditingController();
  TextEditingController haveChildrenTextEditingController =
      TextEditingController();
  TextEditingController noOfChildrenTextEditingController =
      TextEditingController();
  TextEditingController professionTextEditingController =
      TextEditingController();
  TextEditingController employmentStatusTextEditingController =
      TextEditingController();
  TextEditingController incomeTextEditingController = TextEditingController();
  TextEditingController livingSituationTextEditingController =
      TextEditingController();
  TextEditingController willingToRelocateTextEditingController =
      TextEditingController();
  TextEditingController relationshipYouAreLookingForTextEditingController =
      TextEditingController();

  // background - cultural values
  TextEditingController nationalityTextEditingController =
      TextEditingController();
  TextEditingController educationTextEditingController =
      TextEditingController();
  TextEditingController languageSpokenTextEditingController =
      TextEditingController();
  TextEditingController religionTextEditingController = TextEditingController();
  TextEditingController ethinicityTextEditingController =
      TextEditingController();

  bool showProgressBar = false;
  var authenticationController = AuthenticationController.authController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              const Text(
                'to get Started Now.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              // choose image circle avatar
              authenticationController.imageFile == null
                  ? const CircleAvatar(
                      radius: 80,
                      backgroundImage:
                          AssetImage("asset/images/profile_avatar.jpg"),
                      backgroundColor: Colors.black,
                    )
                  : Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: FileImage(
                            File(
                              authenticationController.imageFile!.path,
                            ),
                          ),
                        ),
                      ),
                    ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //pick from image
                  IconButton(
                    onPressed: () async {
                      await authenticationController.pickImageFileFromGallery();

                      setState(() {
                        authenticationController.imageFile;
                      });
                    },
                    icon: const Icon(
                      Icons.image_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // capture from camera
                  IconButton(
                    onPressed: () async {
                      await authenticationController.captureImageFromCamera();

                      setState(() {
                        authenticationController.imageFile;
                      });
                    },
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 30,
              ),

              // personal info
              const Text(
                "Personal Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // name
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: nameTextEditingController,
                    iconData: Icons.person_outline,
                    // assetRef: "",
                    labelText: "name",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // email
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: emailTextEditingController,
                    iconData: Icons.email_outlined,
                    //  assetRef: "",
                    labelText: "Email",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // password
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 50,
                  child: CustomTextFieldWidget(
                    editingController: passwordTextEditingController,
                    iconData: Icons.lock_open_outlined,
                    // assetRef: "",
                    labelText: "Password",
                    isObscure: true,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // age
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: ageTextEditingController,
                    iconData: Icons.numbers,
                    //  assetRef: "",
                    labelText: "Age",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // phoneNo
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: phoneNoTextEditingController,
                    iconData: Icons.phone,
                    //  assetRef: "",
                    labelText: "Phone",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // city
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: cityTextEditingController,
                    iconData: Icons.location_city,
                    //  assetRef: "",
                    labelText: "City",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // country
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: countryTextEditingController,
                    iconData: Icons.location_city,
                    //  assetRef: "",
                    labelText: "Country",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // profile heading
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: profileHeadingTextEditingController,
                    iconData: Icons.text_fields,
                    //  assetRef: "",
                    labelText: "Profile Heading",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // looking for in partner
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController:
                        lookingForInaPartnerTextEditingController,
                    iconData: Icons.face,
                    //  assetRef: "",
                    labelText: "What you're looking For In a Partner",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // Appearance

              const Text(
                "Appearance:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // height
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: heightTextEditingController,
                    iconData: Icons.insert_chart,
                    // assetRef: "",
                    labelText: "Height",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // Weight
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: weightTextEditingController,
                    iconData: Icons.table_chart,
                    // assetRef: "",
                    labelText: "Weight",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // bodyType
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: bodyTypeTextEditingController,
                    iconData: Icons.type_specimen,
                    // assetRef: "",
                    labelText: "Body Type",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // Life Style

              const Text(
                "Life Style:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // drink
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: drinkTextEditingController,
                    iconData: Icons.local_drink_outlined,
                    // assetRef: "",
                    labelText: "Drink",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // smoke
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: smokeTextEditingController,
                    iconData: Icons.smoking_rooms,
                    // assetRef: "",
                    labelText: "Smoke",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // martialStatus
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: martialStatusTextEditingController,
                    iconData: CupertinoIcons.person_2,
                    // assetRef: "",
                    labelText: "Martial Status",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // haveChildren
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: haveChildrenTextEditingController,
                    iconData: CupertinoIcons.person_3_fill,
                    // assetRef: "",
                    labelText: "Do you have children?",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // noOfChildren
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: noOfChildrenTextEditingController,
                    iconData: CupertinoIcons.person_3_fill,
                    // assetRef: "",
                    labelText: "Number of Children",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // profession
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: professionTextEditingController,
                    iconData: Icons.business_center,
                    // assetRef: "",
                    labelText: "Profession",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // employmentStatus
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: employmentStatusTextEditingController,
                    iconData: CupertinoIcons.rectangle_stack_person_crop_fill,
                    // assetRef: "",
                    labelText: "Employment Status",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // income
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: incomeTextEditingController,
                    iconData: CupertinoIcons.money_dollar_circle,
                    // assetRef: "",
                    labelText: "Income",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // livingSituation
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: livingSituationTextEditingController,
                    iconData: CupertinoIcons.person_2_square_stack,
                    // assetRef: "",
                    labelText: "Living Situation",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // willingToRelocate
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: willingToRelocateTextEditingController,
                    iconData: CupertinoIcons.person_2,
                    // assetRef: "",
                    labelText: "Are you willing To Relocate?",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // relationshipYouAreLookingFor
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController:
                        relationshipYouAreLookingForTextEditingController,
                    iconData: CupertinoIcons.person_2,
                    // assetRef: "",
                    labelText: "What relationship you are looking for?",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              //Background - Cultural Values

              const Text(
                "Background - Cultural Values:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // Nationality
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: nationalityTextEditingController,
                    iconData: Icons.flag_circle_outlined,
                    // assetRef: "",
                    labelText: "Nationality",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // education
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: educationTextEditingController,
                    iconData: Icons.history_edu,
                    // assetRef: "",
                    labelText: "Education",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // languageSpoken
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: languageSpokenTextEditingController,
                    iconData: CupertinoIcons.person_badge_plus_fill,
                    // assetRef: "",
                    labelText: "Language Spoken",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // religion
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: religionTextEditingController,
                    iconData: CupertinoIcons.checkmark_seal_fill,
                    // assetRef: "",
                    labelText: "Religion",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // ethnicity
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: ethinicityTextEditingController,
                    iconData: CupertinoIcons.eye,
                    // assetRef: "",
                    labelText: "Ethnicity",
                    isObscure: false,
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // create acc btn

              Container(
                width: Get.width,
                height: 55,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: InkWell(
                  onTap: () {},
                  child: const Center(
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              // already have an acc? login here button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Text(
                      "Login Here",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              showProgressBar == true
                  ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                    )
                  : Container(),

              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
