import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:wellshift/screens/customer_service.dart';
import 'package:wellshift/screens/delay_check_in.dart';
import 'package:wellshift/screens/lets_get_started.dart';
import 'package:wellshift/screens/progress_page.dart';
import 'package:wellshift/screens/recommended_music.dart';
import 'package:wellshift/screens/recovery_code.dart';
import 'package:wellshift/screens/recover_password.dart';
import 'package:wellshift/screens/reset_password.dart';
import 'package:wellshift/screens/support_groups.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => const ProgressPage(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(
        microseconds: 400000,
      ),
    ),
    GetPage(
      name: '/recover_password',
      page: () => RecoverPassword(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(
        microseconds: 400000,
      ),
    ),
    GetPage(
      name: '/recovery_code',
      page: () => RecoveryCode(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(
        microseconds: 400000,
      ),
    ),
    GetPage(
      name: '/reset_password',
      page: () => ResetPassword(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(
        microseconds: 400000,
      ),
    ),
    GetPage(
      name: '/delay_check_in',
      page: () => DelayCheckIn(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(
        microseconds: 400000,
      ),
    ),
    GetPage(
      name: '/lets_get_started',
      page: () => LetsGetStarted(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(
        microseconds: 400000,
      ),
    ),
    GetPage(
      name: '/customer_service',
      page: () => CustomerService(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(
        microseconds: 400000,
      ),
    ),
    GetPage(
      name: '/support_groups',
      page: () => SupportGroups(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(
        microseconds: 400000,
      ),
    ),
    GetPage(
      name: '/music',
      page: () => Music(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(
        microseconds: 400000,
      ),
    ),
  ];
}
