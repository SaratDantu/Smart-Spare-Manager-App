import 'package:smart_app/presentation/slash_screen/slash_screen.dart';
import 'package:smart_app/presentation/slash_screen/binding/slash_binding.dart';
import 'package:smart_app/presentation/registration_screen/registration_screen.dart';
import 'package:smart_app/presentation/registration_screen/binding/registration_binding.dart';
import 'package:smart_app/presentation/otp_verification_screen/otp_verification_screen.dart';
import 'package:smart_app/presentation/otp_verification_screen/binding/otp_verification_binding.dart';
import 'package:smart_app/presentation/successful_verification_screen/successful_verification_screen.dart';
import 'package:smart_app/presentation/successful_verification_screen/binding/successful_verification_binding.dart';
import 'package:smart_app/presentation/sign_in_page_screen/sign_in_page_screen.dart';
import 'package:smart_app/presentation/sign_in_page_screen/binding/sign_in_page_binding.dart';
import 'package:smart_app/presentation/home_page_screen/home_page_screen.dart';
import 'package:smart_app/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:smart_app/presentation/spare_parts_page_screen/spare_parts_page_screen.dart';
import 'package:smart_app/presentation/spare_parts_page_screen/binding/spare_parts_page_binding.dart';
import 'package:smart_app/presentation/stock_page_screen/stock_page_screen.dart';
import 'package:smart_app/presentation/stock_page_screen/binding/stock_page_binding.dart';
import 'package:smart_app/presentation/orders_page_screen/orders_page_screen.dart';
import 'package:smart_app/presentation/orders_page_screen/binding/orders_page_binding.dart';
import 'package:smart_app/presentation/vendors_list_screen/vendors_list_screen.dart';
import 'package:smart_app/presentation/vendors_list_screen/binding/vendors_list_binding.dart';
import 'package:smart_app/presentation/notifications_page_screen/notifications_page_screen.dart';
import 'package:smart_app/presentation/notifications_page_screen/binding/notifications_page_binding.dart';
import 'package:smart_app/presentation/settings_page_screen/settings_page_screen.dart';
import 'package:smart_app/presentation/settings_page_screen/binding/settings_page_binding.dart';
import 'package:smart_app/presentation/about_us_screen/about_us_screen.dart';
import 'package:smart_app/presentation/about_us_screen/binding/about_us_binding.dart';
import 'package:smart_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:smart_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String slashScreen = '/slash_screen';

  static const String registrationScreen = '/registration_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String successfulVerificationScreen =
      '/successful_verification_screen';

  static const String signInPageScreen = '/sign_in_page_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String sparePartsPageScreen = '/spare_parts_page_screen';

  static const String stockPageScreen = '/stock_page_screen';

  static const String ordersPageScreen = '/orders_page_screen';

  static const String vendorsListScreen = '/vendors_list_screen';

  static const String notificationsPageScreen = '/notifications_page_screen';

  static const String settingsPageScreen = '/settings_page_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: slashScreen,
      page: () => SlashScreen(),
      bindings: [
        SlashBinding(),
      ],
    ),
    GetPage(
      name: registrationScreen,
      page: () => RegistrationScreen(),
      bindings: [
        RegistrationBinding(),
      ],
    ),
    GetPage(
      name: otpVerificationScreen,
      page: () => OtpVerificationScreen(),
      bindings: [
        OtpVerificationBinding(),
      ],
    ),
    GetPage(
      name: successfulVerificationScreen,
      page: () => SuccessfulVerificationScreen(),
      bindings: [
        SuccessfulVerificationBinding(),
      ],
    ),
    GetPage(
      name: signInPageScreen,
      page: () => SignInPageScreen(),
      bindings: [
        SignInPageBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: sparePartsPageScreen,
      page: () => SparePartsPageScreen(),
      bindings: [
        SparePartsPageBinding(),
      ],
    ),
    GetPage(
      name: stockPageScreen,
      page: () => StockPageScreen(),
      bindings: [
        StockPageBinding(),
      ],
    ),
    GetPage(
      name: ordersPageScreen,
      page: () => OrdersPageScreen(),
      bindings: [
        OrdersPageBinding(),
      ],
    ),
    GetPage(
      name: vendorsListScreen,
      page: () => VendorsListScreen(),
      bindings: [
        VendorsListBinding(),
      ],
    ),
    GetPage(
      name: notificationsPageScreen,
      page: () => NotificationsPageScreen(),
      bindings: [
        NotificationsPageBinding(),
      ],
    ),
    GetPage(
      name: settingsPageScreen,
      page: () => SettingsPageScreen(),
      bindings: [
        SettingsPageBinding(),
      ],
    ),
    GetPage(
      name: aboutUsScreen,
      page: () => AboutUsScreen(),
      bindings: [
        AboutUsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SlashScreen(),
      bindings: [
        SlashBinding(),
      ],
    )
  ];
}
