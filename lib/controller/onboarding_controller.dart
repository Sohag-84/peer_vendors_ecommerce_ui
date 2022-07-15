import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:peer_vendors_ecommerce_ui/routes/routes.dart';

import '../constant/strings.dart';
import '../model/onboarding_model.dart';

class OnboardingController extends GetxController {
  final selectedPageIndex = 0.obs;
  var pageController = PageController();
  bool get isLastPage => selectedPageIndex.value == onboardingPage.length-1;
  forwardAction(){
    if(isLastPage){
      Get.offAllNamed(authenticationScreen);
    }else{
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.easeIn);
    }

  }
  List<OnboardingInfo> onboardingPage = [
    OnboardingInfo(
        imageAsset: 'images/welcome.png',
        title: OnboardingStringOne.title,
        description: OnboardingStringOne.description,
    ),
    OnboardingInfo(
        imageAsset: 'images/find.png',
        title: OnboardignStringTwo.title,
        description: OnboardignStringTwo.description,),
    OnboardingInfo(
        imageAsset: 'images/buy.png',
        title: OnboardingStringThree.title,
        description: OnboardingStringThree.description,),
    OnboardingInfo(
      imageAsset: 'images/safe.png',
      title: OnboardingStringThree.title,
      description: OnboardingStringThree.description,),
  ];
}