// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import '../views/authentication_screen.dart';
import '../views/choose_language_screen.dart';
import '../views/login_screen.dart';
import '../views/sell_screen_1.dart';
import '../views/otp_screen.dart';
import '../views/pages/navigationbar_page.dart';
import '../views/pages/onboarding_pages.dart';
import '../views/register_screen.dart';
import '../views/sell_screen_2.dart';
import '../views/sell_screen_3.dart';
import '../views/sell_screen_4.dart';
import '../views/splash_screen.dart';
import '../views/success_screen.dart';

const String splashScreen = '/splash-screen';
const String chooseLanguageScreen = '/chooseLanguage-page';
const String onboardingPage = '/onboarding-page';
const String authenticationScreen = '/authentication-screen';
const String registrationScreen = '/register-screen';
const String otpScreen = '/otp-screen';
const String successScreen = '/success-screen';
const String loginScreen = '/login-screen';
const String bottomNavigationPage = '/bottomNavigation-screen';
const String mySellScreenOne = '/sellOne-screen';
const String sellScreenTwo = '/sellTwo-screen';
const String sellScreenThree = '/sellThree-screen';
const String sellScreenFour = '/sellFour-screen';

List<GetPage> pages = [
  GetPage(name: splashScreen, page: () => SplashScreen()),
  GetPage(name: chooseLanguageScreen, page: () => ChooseLanguageScreen()),
  GetPage(name: onboardingPage, page: () => OnboardingPages()),
  GetPage(name: authenticationScreen, page: () => AuthenticationScreen()),
  GetPage(name: registrationScreen, page: () => RegisterScreen()),
  GetPage(name: otpScreen, page: () => OtpScreen()),
  GetPage(name: successScreen, page: () => SuccessScreen()),
  GetPage(name: loginScreen, page: () => LoginScreen()),
  GetPage(name: bottomNavigationPage, page: () => NavigationbarPage()),
  GetPage(name: mySellScreenOne, page: () => MySellScreenOne()),
  GetPage(name: sellScreenTwo, page: () => SellScreenTwo()),
  GetPage(name: sellScreenThree, page: () => SellScreenThree()),
  GetPage(name: sellScreenFour, page: () => SellScreenFour()),
];
