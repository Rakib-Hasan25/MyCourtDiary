import 'package:flutter/material.dart';
import 'package:mycourtdiary/view/utlis/color_palette.dart';
import 'package:mycourtdiary/view/utlis/image_assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 1;
    double w = MediaQuery.of(context).size.width * 1;

    return Scaffold(
        body: Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageAssets
              .backgroundImagePNG), // Replace with your image asset path
          fit: BoxFit.cover,
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(
          height: 80,
        ),

        Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),

          child: Container(
            height: h / 5.2,
            width: w,
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
                        height: h / 5.5,
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
                              fontSize: 29, fontWeight: FontWeight.bold,fontFamily: "Jacques Francois"),
                        ),
                        // SizedBox(height: 20,),
                        // SizedBox(height: h/8,
                        // width: w/2.5,
                        // child: Image.asset(ImageAssets.slogan),
                        // )
                        Text(
                          "ডায়েরি এখন আমার হাতের মুঠোয়",
                          style: TextStyle(
                              fontSize: 15, fontFamily: "Noto Sans Bengali"),
                        ),

                       
                      ],
                    ),
                  )
                ]),
          ),
        ),

        // SizedBox(width: 50,),











        Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Container(
            height: 90,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 69, 67, 67).withOpacity(0.3),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Container(
                  height: 120,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageAssets
                            .lawyerIcon), // Replace with your image asset path
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  "Lawyer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,fontFamily: "Jacques Francois"),
                )
              ],
            ),
          ),
        ),














        Padding(
          padding: const EdgeInsets.only(left: 8,right: 8),
          child: Container(
            height: h / 5.7,
            width: w,
            decoration: BoxDecoration(
              color: ColorPalette.primaryColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20),
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
                        height: h / 10,
                        width: w / 2.2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageAssets
                                .myDiaryLogo), // Replace with your image asset path
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),

                      Text(
                        "My Diary",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600,fontFamily: "Jacques Francois"),
                      ),

                      // Image.asset(ImageAssets.myCourtDiaryLogoPNG)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Column(
                      children: [
                        Container(
                          height: h / 10,
                          width: w / 2.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageAssets.registrationLogo), // Replace with your image asset path
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Text(
                          "Registration",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600,fontFamily: "Jacques Francois"),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Container(
            height: 90,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 69, 67, 67).withOpacity(0.3),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Container(
                  height: 120,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageAssets.citizenIcon), // Replace with your image asset path
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  "Citizen",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,fontFamily: "Jacques Francois"),
                )
              ],
            ),
          ),
        ),

      Padding(
          padding: const EdgeInsets.only(left: 8,right: 8),
          child: Container(
            height: h / 5.7,
            width: w,
            decoration: BoxDecoration(
              color: ColorPalette.primaryColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
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
                        SizedBox(height: 7,),
                        Container(
                          height: h / 10,
                          width: w / 2.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageAssets
                                  .findLawyerlogo), // Replace with your image asset path
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
              
                        Text(
                          "Find Lawyer",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600,fontFamily: "Jacques Francois"),
                        ),
              
                        // Image.asset(ImageAssets.myCourtDiaryLogoPNG)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Column(
                        children: [
                        SizedBox(height: 7,),

                          Container(
                            height: h / 10,
                            width: w / 2.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImageAssets.buyBookslogo), // Replace with your image asset path
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Text(
                            "Buy Books",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600,fontFamily: "Jacques Francois"),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ]),
    ));
  }
}
