import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:linxo_test/src/config/theme/color.dart';
import 'package:linxo_test/src/config/theme/style.dart';
import 'package:linxo_test/src/domain/model/user/user_model.dart';
import 'package:linxo_test/src/frontend/view/home/user_detail_page.dart';

class UserCard extends StatelessWidget {
  final UserModel user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 8),
      child: InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => UserDetailsPage(user: user))),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                clipBehavior: Clip.antiAlias,
                child: CachedNetworkImage(imageUrl: user.picture.medium, fit: BoxFit.cover),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${user.name.first} ${user.name.last}", style: AppTextStyle.darkBlue(14, weight: FontWeight.w500)),
                  const SizedBox(height: 2),
                  Text(user.email, style: AppTextStyle.darkGrey(12)),
                ],
              ),
              const Spacer(),
              const Icon(Icons.chevron_right, color: AppColor.darkGrey, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
