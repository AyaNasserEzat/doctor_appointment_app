import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/profile/presentation/logic/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileOptionItem extends StatelessWidget {
  const ProfileOptionItem({
    super.key,
    required this.title,
    required this.image,
    required this.imageColor,
    required this.backgroundContainer,
    required this.onTap,
  });
  final String title;
  final String image;
  final Color imageColor;
  final Color backgroundContainer;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.updateProfileScreen).then((_) {
          BlocProvider.of<ProfileCubit>(context).getProfile();
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          spacing: 10,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: backgroundContainer,
              ),
              child: Center(
                child: Image.asset(
                  image,
                  color: imageColor,
                  width: 28,
                  height: 25,
                ),
              ),
            ),
            Text(title, style: AppTextStyles.interBold16),
          ],
        ),
      ),
    );
  }
}
