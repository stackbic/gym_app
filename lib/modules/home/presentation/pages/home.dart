import 'package:flutter/cupertino.dart';
import 'package:gym_app/app/widgets/responsive_widget/responsive_builder.dart';
import 'package:gym_app/modules/home/presentation/pages/home_mob/home_mob.dart';
import 'package:gym_app/modules/home/presentation/pages/home_tab/home_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: HomeMob(),
      tablet: HomeTab(),
    );
  }
}
