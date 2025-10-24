import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:dating_app/constants/colors.dart';
import 'package:dating_app/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<ProfileCard> profile = [];

  List<String> images = [
    'assets/images/user1.jpg',
    'assets/images/user7.png',
    'assets/images/user2.jpg',
    'assets/images/user3.jpg',
    'assets/images/user4.jpg',
    'assets/images/user5.jpeg',
    'assets/images/user6.png',
  ];

  @override
  void initState() {
    super.initState();
    _loadCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:  Text('For You', style: TextStyle(color: ColorConstants.primaryColor, fontSize: 28, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.person, color: ColorConstants.primaryColor,),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.message, color: ColorConstants.primaryColor,),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          AppinioSwiper(
            cardBuilder: (context, index) => profile[index],
            cardCount: profile.length,
            loop: true,
          ),
          Positioned(
            bottom: 50,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () { },
                  child: Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(Icons.close, color: ColorConstants.close, size: 32,),
                  ),
                ),
                InkWell(
                  onTap: () { },
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(Icons.star, color: ColorConstants.star, size: 32,),
                  ),
                ),
                InkWell(
                  onTap: () { },
                  child: Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(Icons.favorite, color: ColorConstants.favorite, size: 32,),
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }

  void _loadCards() {
    for (String image in images) {
      profile.add(ProfileCard(image: image));
    }
  }
}