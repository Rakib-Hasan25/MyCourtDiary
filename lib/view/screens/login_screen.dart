import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycourtdiary/view/utlis/color_palette.dart';
import 'package:mycourtdiary/view/utlis/image_assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 1;
    double w = MediaQuery.of(context).size.width * 1;
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageAssets.backgroundImagePNG),
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3), // Adjust the opacity (0.0 to 1.0)
            BlendMode.dstATop,
          ), // Replace with your image asset path
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              height: h / 7,
              width: w / 1.2,
              decoration: BoxDecoration(
                color: ColorPalette.primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        // SizedBox(

                        //   height: h/6,
                        // width: w/2,
                        // child: Image.asset(ImageAssets.myCourtDiaryLogoPNG),
                        // ),

                        Container(
                          height: h / 7,
                          width: w / 3,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageAssets
                                  .myCourtDiaryLogoPNG), // Replace with your image asset path
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        )

                        // Image.asset(ImageAssets.myCourtDiaryLogoPNG)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "My Court Diary",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontFamily: "Jacques Francois",
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          // SizedBox(height: 20,),
                          // SizedBox(height: h/8,
                          // width: w/2.5,
                          // child: Image.asset(ImageAssets.slogan),
                          // )
                          Text(
                            "ডায়েরি এখন আমার হাতের মুঠোয়",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: "Noto Sans Bengali"),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
                height: h / 2.5,
                width: w,
                decoration: BoxDecoration(
                  color: ColorPalette.primaryColor.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.8),
                          child: TextFormField(
                            //validation er bepar ase tai
                            controller: _emailController,
                            style: TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: Colors.grey,
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey,fontFamily: "Jacques Francois")),
                            validator: (String? text) {
                              if (text?.isEmpty ?? true) {
                                return "Enter Email Address";
                              } else if (text!.isEmail == false) {
                                return 'Enter a Valid Email Adress';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.8),
                          child: TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            style: TextStyle(color: Colors.white,fontFamily: "Jacques Francois"),
                            decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                suffixIcon: Icon(Icons.remove_red_eye_rounded,
                                    color: Colors.grey)),
                            validator: (String? text) {
                              if (text?.isEmpty ?? true) {
                                return "Enter Password";
                              } else if (text!.length < 6) {
                                return 'password more than 6 character ';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      SizedBox(
                        width: 150,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          // onPressed: () =>_emailController.text=="admin" && _passwordController.text =="admin"?Get.offAll(AdminDashBoard()):authController.loginUser(_emailController.text,_passwordController.text,_formkey.currentState!.validate()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.login,
                                color: Colors.black,
                                size: 25,
                              ),
                              Text(
                                " Log In",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16,fontFamily: "Jacques Francois"),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                        ),
                      ),

                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          // onTap: ()=> Navigator.push(context,PageTransition(child: SignUpScreen(), type: PageTransitionType.bottomToTop)),
                          child: RichText(
                            text: TextSpan(
                                text: "Don't have an account yet?  ",
                                children: [
                                  TextSpan(
                                      text: "Create Account",
                                      style: TextStyle(color: Colors.blue))
                                ]),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 5,
                      ),

                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          // onTap: ()=> Navigator.push(context,PageTransition(child: SignUpScreen(), type: PageTransitionType.bottomToTop)),
                          child: RichText(
                            text: TextSpan(
                                text: "Forget Password?  ",
                                children: [
                                  TextSpan(
                                      text: "Reset Now",
                                      style: TextStyle(color: Colors.blue))
                                ]),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 1,
                      ),

                      
                    ],
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
