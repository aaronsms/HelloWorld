import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/register_profile_bloc.dart';
import 'package:helloworld/application/identity_access/register/register_account_bloc.dart';
import 'package:helloworld/domain/identity_access/model/user/email_address.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/age.dart';
import 'package:helloworld/domain/identity_access/model/user/name.dart';
import 'package:helloworld/domain/identity_access/model/user/password.dart';
import 'package:helloworld/injection.dart';
import 'package:helloworld/presentation/login/login_page.dart';
import 'package:helloworld/presentation/password_reset/submit_email_page.dart';
import 'package:helloworld/presentation/sign_up/register_account_learner_page.dart';
import 'package:helloworld/presentation/sign_up/register_account_mentor_page.dart';
import 'package:helloworld/presentation/sign_up/register_pre_page.dart';
import 'package:helloworld/presentation/sign_up/register_profile_learner_page.dart';
import 'package:helloworld/presentation/sign_up/register_profile_mentor_page.dart';
import 'package:helloworld/presentation/sign_up/register_qualifications_page.dart';
import 'package:helloworld/presentation/sign_up/verified_email_learner_page.dart';
import 'package:helloworld/presentation/sign_up/verified_email_mentor_page.dart';
import 'package:helloworld/presentation/sign_up/verify_email_page.dart';
import 'package:sailor/sailor.dart';

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
        builder: (context, args, params) {

          return MultiBlocProvider(
            providers: [
//              BlocProvider.value(
//                value: BlocProvider.of<RegisterAccountBloc>(context),
//              ),
              BlocProvider<RegisterProfileBloc>(
                lazy: false,
                create: (_) {
                  return RegisterProfileBloc();
                },
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
        builder: (context, args, params) {
          return MultiBlocProvider(
            providers: [
//              BlocProvider.value(
//                value: BlocProvider.of<RegisterAccountBloc>(context),
//              ),
              BlocProvider<RegisterProfileBloc>(
                lazy: false,
                create: (context) => RegisterProfileBloc(),
              ),
            ],
            child: RegisterProfileLearnerPage(),
          );
        },
        params: [
          SailorParam<Name>(name: 'name', isRequired: true),
          SailorParam<EmailAddress>(name: 'email', isRequired: true),
          SailorParam<Password>(name: 'password', isRequired: true),
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
    ]);
  }
}
