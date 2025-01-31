import 'package:flutter/material.dart';
import 'package:gym_app/app/config/app_constants.dart';
import 'package:gym_app/app/widgets/common_container/common_container.dart';

class HomeMob extends StatelessWidget {
  const HomeMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBlack,
      appBar: AppBar(
        backgroundColor: AppColors.kBlack,
        leading: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hey there!",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w200,
                    ),
              ),
              Text(
                "George David",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        leadingWidth: double.infinity,
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                Text(
                  "Financial Overview",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                CommonContainerWithBorder(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Credits",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                "\$10,350",
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      fontSize: 30,
                                    ),
                              ),
                            ],
                          ),
                          Container(
                            height: 50,
                            width: 2,
                            color: AppColors.kPrimaryColor,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pending Due",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                "\$2,350",
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      fontSize: 30,
                                      color: AppColors.kPrimaryColor,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
