import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/utils/size_config.dart';
import 'package:responsive_ui/widgets/adaptive_layout.dart';
import 'package:responsive_ui/widgets/custom_drawer.dart';
import 'package:responsive_ui/layouts/dashboard_desktop_layout.dart';
import 'package:responsive_ui/layouts/dashboard_mobile_layout.dart';
import 'package:responsive_ui/layouts/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              // leading: const Icon(Icons.menu),
              title: Text(
                'Responsive UI',
                style: AppStyles.styleSemiBold24(context),
              ),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
