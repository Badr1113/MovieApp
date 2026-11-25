import 'package:flutter/material.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/routes_manager/routes.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundColor: ColorManager.cardBackground,
                  child: Icon(Icons.person, size: 35, color: ColorManager.primaryYellow),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'User Name',
                        style: TextStyle(color: ColorManager.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: ColorManager.red),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.updateProfileRoute);
                        },
                        child: const Text('Edit Profile'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
