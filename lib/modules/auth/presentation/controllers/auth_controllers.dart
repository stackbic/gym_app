import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_app/app/router/router_constants.dart';
import 'package:gym_app/app/widgets/responsive_widget/responsive_builder.dart';
import 'package:gym_app/modules/auth/domain/entities/auth_entity.dart';

class AuthController extends StateNotifier<AuthEntity> {
  AuthController() : super(AuthEntity.initial());

  //Ontap function for login button
  onTapLogin(BuildContext context) {
    commonNavigation(context: context, route: AppRouterConstants.homeRoute);
  }
}
