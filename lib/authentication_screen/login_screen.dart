import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_app_2/authentication_screen/registration_screen.dart';
import 'package:tinder_app_2/widgets/custom_text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool showProgressBar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // image
              const SizedBox(
                height: 120,
              ),
              Image.asset(
                'asset/images/logo.png',
                width: 300,
              ),

              // text
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              const Text(
                'Login now to find your best match',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 28,
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
                  //  assetRef: "",
                    labelText: "Password",
                    isObscure: true,
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // login btn
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
                      'Login',
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

              // don't have an account? create here button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dont have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const RegistrationScreen());
                    },
                    child: const Text(
                      "Create Here",
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

              showProgressBar == true ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
              ) : Container(),

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
