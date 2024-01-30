import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_hat_task/presentation/core/app_icons.dart';
import 'package:magic_hat_task/presentation/core/colors.dart';
import 'package:magic_hat_task/presentation/core/constants/dimension.dart';
import 'package:magic_hat_task/presentation/core/theme/theme.dart';

const IconThemeData _iconThemeData = IconThemeData(size: 24);
const double _elevation = 2.0;
const double _iconSize = 20.0;
double _labelFontSize = 12.0.sp;
const double _iconBottomPadding = 4.0;

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.secondary,
      child: _buildProviders(
        child: AutoTabsScaffold(
          backgroundColor: Colors.transparent,
          routes: const [],
          bottomNavigationBuilder: _buildBottomNavigationBar,
        ),
      ),
    );
  }

  Widget _buildProviders({required Widget child}) {
    return MultiBlocProvider(
      providers: [],
      child: child,
    );
  }

  Widget _buildBottomNavigationBar(
    BuildContext context,
    TabsRouter tabsRouter,
  ) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
              color: AppColors.primary.withOpacity(0.4), width: 0.5.sp),
        ),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: _elevation,
        backgroundColor: AppColors.grey,
        selectedItemColor: AppColors.secondary,
        unselectedItemColor: AppColors.primary.withOpacity(0.4),
        selectedIconTheme: _iconThemeData,
        selectedLabelStyle: context.appTextTheme.caption
            .size(_labelFontSize)
            .copyWith(fontWeight: FontWeight.w500),
        unselectedLabelStyle: context.appTextTheme.caption
            .size(_labelFontSize)
            .copyWith(fontWeight: FontWeight.w500),
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: [
          _buildItem(
            context,
            label: "Home",
            icon: AppIcons.home,
            activeIconColor: AppColors.secondary,
            iconSize: _iconSize + lightSpace * 0.7,
          ),
          _buildItem(
            context,
            label: "Readings",
            icon: AppIcons.readings,
            activeIconColor: AppColors.secondary,
            iconSize: _iconSize + lightSpace * 0.7,
          ),
          _buildItem(
            context,
            label: "Profile",
            icon: AppIcons.profile,
            activeIconColor: AppColors.secondary,
            iconSize: _iconSize + lightSpace * 0.7,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildItem(
    BuildContext context, {
    required String label,
    required IconData icon,
    required Color activeIconColor,
    required double iconSize,
  }) {
    return BottomNavigationBarItem(
      label: label,
      icon: Padding(
        padding: const EdgeInsets.only(
          bottom: _iconBottomPadding,
          top: largeSpace,
        ),
        child: Icon(
          icon,
          color: AppColors.primary.withOpacity(0.4),
          size: iconSize,
        ),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(
          bottom: _iconBottomPadding,
          top: largeSpace,
        ),
        child: Icon(
          icon,
          color: activeIconColor,
          size: iconSize,
        ),
      ),
    );
  }

  // Notification logic
  // void _onWidgetBuilt() {
  //   context
  //       .read<NotificationBloc>()
  //       .add(const NotificationEvent.setupNotification());
  // }
}
