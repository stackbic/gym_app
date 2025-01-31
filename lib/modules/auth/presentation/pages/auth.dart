import 'package:flutter/cupertino.dart';
import 'package:gym_app/app/widgets/responsive_widget/responsive_builder.dart';
import 'package:gym_app/modules/auth/presentation/pages/auth_mob/auth_mob.dart';

import 'auth_tab/auth_tab.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: AuthMob(),
      tablet: AuthTab(),
    );
  }
}
