import 'package:dating_app/constants/colors.dart';
import 'package:dating_app/pages/user_info_page.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.1,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:  (context) => UserInfoPage(image: image))
              );
            },
            child: Hero(
              tag: 'profile_image_$image',
              child: Container(
                height: MediaQuery.of(context).size.height / 1.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(image.toString()),
                    fit: BoxFit.cover,
                  ),
                  )
                ),
            ),
          ),
          Positioned(
            bottom: 170,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Malena Veronica, 23', style: TextStyle(color: ColorConstants.secondary, fontSize: 24, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 12,),
                  Text('Fashion Designer at Victoria Secret', style: TextStyle(color: ColorConstants.secondary, fontSize: 16)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}