import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/state_manager.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/constants/image_strings.dart';
import 'package:myapp/src/constants/size.dart';
import 'package:myapp/src/constants/text_strings.dart';
import 'package:myapp/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    splashController.startAnimate();
    return Scaffold(
      body: Stack(
        children: [
          Obx( ()=> AnimatedPositioned(
                top: splashController.animate.value ? 0 : -30,
                left: splashController.animate.value ? 0 : -30,
                duration: const Duration(milliseconds: 1500),
                child: const Image(image: AssetImage(tSplashtopIcon),height: 150,width: 150,)
            ),),
          Obx(() =>AnimatedPositioned(
            duration: const Duration(milliseconds: 1500),
              top: 150,
              left: splashController.animate.value ? tDefaultSize : -80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(tAppName, style: Theme.of(context).textTheme.headline3),
                  Text(tAppTagLine,style: Theme.of(context).textTheme.headline4,)
              ],)
          ),),
          Obx(() =>AnimatedPositioned(
            duration: const Duration(milliseconds: 2500),
              bottom: splashController.animate.value ? 100 : -10,
              child: const Image(
                image: AssetImage(tSplashtopIcon),width: 400,height: 250,)),),
          Obx(() => AnimatedPositioned(
            duration: const Duration(milliseconds: 1500),
              bottom: splashController.animate.value ? 40 : -30,
              right: tDefaultSize,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: tPrimaryColor,
                  borderRadius: BorderRadius.circular(50,),
                ),
              )))
        ],
      ),
    );
  }
}
