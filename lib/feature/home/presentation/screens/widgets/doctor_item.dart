import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

// class DoctorItem extends StatelessWidget {
//   const DoctorItem({super.key, required this.doctorModel,this.doctorImage=AppImages.docImagTest});
//   final Doctor doctorModel;
//   final String doctorImage;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 20.0),
//       child: Row(
//         spacing: 16,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadiusGeometry.circular(16),
//             child: Image.asset(doctorImage,)),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   doctorModel.name ?? "Name",
//                   style: AppTextStyles.interBoldBlack18,
//                 ),
//                 Text(
//                   doctorModel.address ?? "address",
//                   style: AppTextStyles.interMedium14,
//                   maxLines: 1,
//                 ),
//                 Row(
//                   spacing: 4,
//                   children: [
//                     Text(
//                       doctorModel.appointPrice.toString(),
//                       style: AppTextStyles.interBold16,
//                     ),
//                     Text(r"$", style: AppTextStyles.interBold16),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class DoctorItem extends StatelessWidget {
  const DoctorItem({
    super.key,
    required this.doctorModel,
    this.doctorImage = AppImages.docImagTest,
  });

  final Doctor? doctorModel;
  final String doctorImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        spacing: 16,
        children: [
          doctorModel == null
              ? ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(16),
                child: Container(height: 90, width: 90, color: Colors.grey))
              : ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  doctorImage,
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorModel?.name ?? "Doctor Name",
                  style: AppTextStyles.interBoldBlack18,
                ),
                Text(
                  doctorModel?.address ?? "Address",
                  style: AppTextStyles.interMedium14,
                  maxLines: 1,
                ),

                Row(
                  spacing: 4,
                  children: [
                    Text(
                      doctorModel?.appointPrice?.toString() ?? "00",
                      style: AppTextStyles.interBold16,
                    ),
                    Text(r"$", style: AppTextStyles.interBold16),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
