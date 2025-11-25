import 'package:doctor_appointment/core/di/depensency_injection.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_cubit.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/all_my_appointment_screen.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/doctor_details_screen.dart';
import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_cubit.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/all_specility_screen.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/botton_navegation_bart.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/home_screen.dart';
import 'package:doctor_appointment/feature/login/prsentation/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment/feature/login/prsentation/screens/login_screen.dart';
import 'package:doctor_appointment/feature/onBording/prsentation/screens/on_bording_screen.dart';
import 'package:doctor_appointment/feature/profile/presentation/logic/cubit/profile_cubit.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/notification_screen.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/profile_screen.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/update_profile_screen.dart';
import 'package:doctor_appointment/feature/search/presentation/screens/search_screen.dart';
import 'package:doctor_appointment/feature/signUp/presentation/logic/cubit/signup_cubit.dart';
import 'package:doctor_appointment/feature/signUp/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route? generateRout(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBordingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: LoginScreen(),
              ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignupCubit>(),
                child: SignUpScreen(),
              ),
        );
      case Routes.doctorDetailsScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => DoctorAapointmentCubit(getIt()),
                child: DoctorDetailsScreen(
                  doctor: (settings.arguments as Map)['doctor'] as Doctor,
                  doctorImage:
                      (settings.arguments as Map)['doctorImage'] as String,
                ),
              ),
        );
      case Routes.allMyAppointmentScreen:
        return MaterialPageRoute(builder: (_) => AllMyAppointmentScreen());

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case Routes.updateProfileScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => ProfileCubit(getIt()),
                child: UpdateProfileScreen(),
              ),
        );
      case Routes.notificationScreen:
        return MaterialPageRoute(
          builder:
              (_) => NotificationScreen(
                payload: settings.arguments as String?,
              ) /*NotificationScreen(payload: settings.arguments as String?)*/,
        );
      case Routes.bottomNavigationBar:
        return MaterialPageRoute(builder: (_) => BottomNavBarView());
      case Routes.allSpecilityScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create:
                    (context) => HomeCubit(getIt())..getspecializationsState(),
                child: AllSpecilityScreen(),
              ),
        );
      case Routes.searchScreen:
        return MaterialPageRoute(builder: (_) => SearchScreen());

      default:
        return null;
    }
  }
}
