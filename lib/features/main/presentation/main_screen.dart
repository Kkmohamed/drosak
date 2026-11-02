import 'package:drosak/core/resources/app_colors.dart';
import 'package:drosak/core/resources/app_images.dart';
import 'package:drosak/core/resources/app_sizes.dart';
import 'package:drosak/core/resources/app_strings.dart';
import 'package:drosak/features/attendance/presentation/attendance_screen.dart';
import 'package:drosak/features/educational_stages/presentaion/educational_stages_screen.dart';
import 'package:drosak/features/groups/presentation/groups_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../payments/presentation/payments_screen.dart';
import '../../students/presentation/students_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const List<Widget> screens = [
    GroupsScreen(),
    EducationalStagesScreen(),
    AttendanceScreen(),
    StudentsScreen(),
    PaymentsScreen(),
  ];
  late int currentIndex;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    currentIndex = arguments?['index'] ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: AppSizes.sp12,
        unselectedFontSize: AppSizes.sp12,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        unselectedItemColor: AppColors.unselected,
        selectedItemColor: AppColors.primaryPurple,
        backgroundColor: AppColors.gray,
        unselectedLabelStyle: TextStyle(fontSize: AppSizes.sp10),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.groups,
              colorFilter: currentIndex == 0
                  ? ColorFilter.mode(AppColors.primaryPurple, BlendMode.srcIn)
                  : null,
            ),
            label: AppStrings.groups,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.stages,
              colorFilter: currentIndex == 1
                  ? ColorFilter.mode(AppColors.primaryPurple, BlendMode.srcIn)
                  : null,
            ),
            label: AppStrings.educationalStages,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.attendance,
              colorFilter: currentIndex == 2
                  ? ColorFilter.mode(AppColors.primaryPurple, BlendMode.srcIn)
                  : null,
            ),
            label: AppStrings.attendance,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.students,
              colorFilter: currentIndex == 3
                  ? ColorFilter.mode(AppColors.primaryPurple, BlendMode.srcIn)
                  : null,
            ),
            label: AppStrings.students,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.cash,
              colorFilter: currentIndex == 4
                  ? ColorFilter.mode(AppColors.primaryPurple, BlendMode.srcIn)
                  : null,
            ),
            label: AppStrings.payments,
          ),
        ],
      ),
    );
  }
}
