import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/register/account/register_account_bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/register_profile_bloc.dart';
import 'package:helloworld/domain/identity_access/model/user/email_address.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/age.dart';
import 'package:helloworld/domain/identity_access/model/user/name.dart';
import 'package:helloworld/domain/identity_access/model/user/password.dart';
import 'package:helloworld/presentation/homepage/landing_page.dart';
import 'package:helloworld/presentation/login/login_page.dart';
import 'package:helloworld/presentation/password_reset/submit_email_page.dart';
import 'package:helloworld/presentation/profile/learner_profile.dart';
import 'package:helloworld/presentation/register/register_account_learner_page.dart';
import 'package:helloworld/presentation/register/register_account_mentor_page.dart';
import 'package:helloworld/presentation/register/register_pre_page.dart';
import 'package:helloworld/presentation/register/register_profile_learner_page.dart';
import 'package:helloworld/presentation/register/register_profile_mentor_page.dart';
import 'package:helloworld/presentation/register/register_qualifications_page.dart';
import 'package:helloworld/presentation/register/verified_email_learner_page.dart';
import 'package:helloworld/presentation/register/verified_email_mentor_page.dart';
import 'package:helloworld/presentation/register/verify_email_page.dart';
import 'package:helloworld/presentation/requests/request_page.dart';
import 'package:sailor/sailor.dart';

import '../../injection.dart';

// ignore: avoid_classes_with_only_static_members
class Routes {
  static final Sailor sailor = Sailor();

  static const String login = '/';
  static const String register = '/register';
  static const String resetPassword = '/password';
  static const String learnerAccount = '/register/learner/account';
  static const String learnerProfile = '/register/learner/profile';
  static const String mentorAccount = '/register/mentor/account';
  static const String mentorProfile = '/register/mentor/profile';
  static const String mentorQualification = '/register/mentor/qualification';
  static const String verifyEmail = '/register/verify';
  static const String verifiedLearner = '/register/learner/verified';
  static const String verifiedMentor = '/register/mentor/verified';

  static const String homepage = '/home';
  static const String profile = '/profile';
  static const String schedule = '/schedule';
  static const String requests = '/requests';

  static void createRoutes() {
    sailor.addRoutes([
      SailorRoute(
        name: login,
        builder: (context, args, params) {
          return LoginPage();
        },
      ),
      SailorRoute(
        name: register,
        builder: (context, args, params) {
          return RegisterPrePage();
        },
      ),
      SailorRoute(
        name: resetPassword,
        builder: (context, args, params) {
          return SubmitEmailPage();
        },
      ),
      SailorRoute(
        name: mentorAccount,
        builder: (context, args, params) {
          return RegisterAccountMentorPage();
        },
      ),
      SailorRoute(
        name: mentorProfile,
        builder: (_, args, params) {
          final context = params.param<BuildContext>('context');
          return MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: BlocProvider.of<RegisterAccountBloc>(context),
              ),
              BlocProvider<RegisterProfileBloc>(
                lazy: false,
                create: (_) => getIt<RegisterProfileBloc>(),
              ),
            ],
            child: RegisterProfileMentorPage(),
          );
        },
        params: [
          SailorParam<Name>(name: 'name', isRequired: true),
          SailorParam<EmailAddress>(name: 'email', isRequired: true),
          SailorParam<Password>(name: 'password', isRequired: true),
          SailorParam<Age>(name: 'age', isRequired: true),
          SailorParam<BuildContext>(name: 'context', isRequired: true),
        ],
      ),
      SailorRoute(
        name: mentorQualification,
        builder: (context, args, params) {
          return RegisterQualificationsPage();
        },
      ),
      SailorRoute(
        name: learnerAccount,
        builder: (context, args, params) {
          return RegisterAccountLearnerPage();
        },
      ),
      SailorRoute(
        name: learnerProfile,
        builder: (_, args, params) {
          final context = params.param<BuildContext>('context');
          return MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: BlocProvider.of<RegisterAccountBloc>(context),
              ),
              BlocProvider<RegisterProfileBloc>(
                lazy: false,
                create: (_) => getIt<RegisterProfileBloc>(),
              ),
            ],
            child: RegisterProfileLearnerPage(),
          );
        },
        params: [
          SailorParam<Name>(name: 'name', isRequired: true),
          SailorParam<EmailAddress>(name: 'email', isRequired: true),
          SailorParam<Password>(name: 'password', isRequired: true),
          SailorParam<BuildContext>(name: 'context', isRequired: true),
        ],
      ),
      SailorRoute(
        name: verifyEmail,
        builder: (context, args, params) {
          return VerifyEmailPage();
        },
      ),
      SailorRoute(
        name: verifiedLearner,
        builder: (context, args, params) {
          return VerifiedEmailLearnerPage();
        },
      ),
      SailorRoute(
        name: verifiedMentor,
        builder: (context, args, params) {
          return VerifiedEmailMentorPage();
        },
      ),
      SailorRoute(
        name: homepage,
        builder: (context, args, params) {
          return LandingPage();
        },
      ),
      SailorRoute(
        name: schedule,
        builder: (context, args, params) {
          return RequestPage();
        },
      ),
      SailorRoute(
        name: profile,
        builder: (context, args, params) {
          return LearnerProfile();
        },
      ),
    ]);
  }
}
