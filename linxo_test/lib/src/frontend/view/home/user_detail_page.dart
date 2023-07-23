import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:linxo_test/src/config/theme/color.dart';
import 'package:linxo_test/src/config/theme/style.dart';
import 'package:linxo_test/src/domain/model/user/user_model.dart';
import 'package:linxo_test/src/utils/extension/widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class UserDetailsPage extends StatelessWidget {
  final UserModel user;

  const UserDetailsPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SlidingUpPanel(
        body: Column(
          children: [
            SizedBox(
              height: mediaQuery.size.height / 2,
              width: mediaQuery.size.width,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: CachedNetworkImage(imageUrl: user.picture.large, fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: mediaQuery.padding.top + 12,
                    left: 27,
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(color: Colors.black.withOpacity(.3), shape: BoxShape.circle),
                        child: const Icon(Icons.chevron_left, color: Colors.white, size: 30).center(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        minHeight: mediaQuery.size.height / 2 + 40,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: const [],
        panelBuilder: (controller) {
          return SingleChildScrollView(
            controller: controller,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27).add(EdgeInsets.only(bottom: mediaQuery.padding.bottom + 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: 40,
                      height: 2,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: AppColor.darkGrey),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text("${user.name.title} ${user.name.first} ${user.name.last}", style: AppTextStyle.darkBlue(17, weight: FontWeight.w700)),
                  const SizedBox(height: 8),
                  Text("${user.email} - ${user.phone}", style: AppTextStyle.darkBlue(14, weight: FontWeight.w500)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
