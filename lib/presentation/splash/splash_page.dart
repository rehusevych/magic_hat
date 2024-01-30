import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:magic_hat_task/gen/assets.gen.dart';
import 'package:magic_hat_task/presentation/core/colors.dart';
import 'package:magic_hat_task/presentation/core/constants/dimension.dart';
import 'package:magic_hat_task/presentation/core/theme/theme.dart';
import 'package:magic_hat_task/presentation/widgets/background/splash_background.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: (lightSpace).w),
            child: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: (mediumSpace * 3).w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: (mediumSpace * 6).h),
                      Text(
                        "Unlock your hidden messages...",
                        style: context.appTextTheme.label
                            .size(32.sp)
                            .paint(AppColors.secondary)
                            .align(height: 1.1),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(flex: 3),
                      SvgPicture.asset(
                        Assets.icon.logoSvg,
                        height: 140.h,
                        width: 140.w,
                      ),
                      SizedBox(height: (mediumSpace * 5).h),
                      const Spacer(),
                      Text(
                        "...with our 4th generation tea leaf reader.",
                        style: context.appTextTheme.label
                            .paint(AppColors.secondary)
                            .size(24.sp)
                            .align(height: 1.1),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: (mediumSpace * 5).h),
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
