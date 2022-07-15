// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import '../views/authentication_screen.dart';
import '../views/choose_language_screen.dart';
import '../views/login_screen.dart';
import '../views/otp_screen.dart';
import '../views/pages/navigationbar_page.dart';
import '../views/pages/onboarding_pages.dart';
import '../views/register_screen.dart';
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
];
