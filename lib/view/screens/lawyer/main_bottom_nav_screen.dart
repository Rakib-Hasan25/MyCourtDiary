import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycourtdiary/controllers/main_bottom_nav_controller.dart';
import 'package:mycourtdiary/view/screens/lawyer/lawyer_home_screen.dart';
import 'package:mycourtdiary/view/utlis/image_assets.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final List<Widget> _screens = [
    const LawyerHomeScreen(),
    const LawyerHomeScreen(),

    const LawyerHomeScreen(),
    const LawyerHomeScreen(),
    const LawyerHomeScreen(),

     
  ];

  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //  Get.find<DepartmentDataController>().getDepartmentData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(builder: (controller) {
      return Scaffold(
        body: _screens[controller.currentSelectedIndex ?? 0],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 37, 55, 65),
          currentIndex: controller.currentSelectedIndex ?? 0,
          onTap: controller.changeScreen,
          selectedItemColor: Color.fromARGB(255, 20, 19, 19),
          unselectedItemColor: const Color.fromARGB(255, 115, 99, 99),
          showUnselectedLabels: true,
          // showSelectedLabels: true,
          elevation: 4,

          items: [
            BottomNavigationBarItem(
                icon: SizedBox(child: Image.asset(ImageAssets.homeIcon)),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: SizedBox(child: Image.asset(ImageAssets.myCasesIcon)),
                label: 'My Cases'),
            BottomNavigationBarItem(
                icon: SizedBox(child: Image.asset(ImageAssets.newCasesIcon)),
                label: 'New Case'),
            BottomNavigationBarItem(
                icon: SizedBox(child: Image.asset(ImageAssets.searchCasesIcon)),
                label: 'Search Case'),
            BottomNavigationBarItem(
                icon: SizedBox(
                    child: Image.asset(ImageAssets.meIcon)),
                label: 'Me'),
          ],
        ),
      );
    });
  }
}
