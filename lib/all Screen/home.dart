
import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
       
        children: <Widget>[
     
            /// Carousel FullScreen
          BannerCarousel.fullScreen(
            banners: BannerImages.listBanners,
            height: 200,
            animation: false,
            initialPage: 1,
            // OR pageController: PageController(initialPage: 6),
          ),

       
          SizedBox(
            height: 20,
          ),


        ],
      ),
    );
  }
}

class BannerImages {
  static const String banner1 =
      "https://play-lh.googleusercontent.com/kvaPFPHuLufB1rbLehs9LukdubfLfD02Encv16k55Kth-zthVtBrT77mLoobSBPpGw=w526-h296-rw";
  static const String banner2 =
      "https://i.pinimg.com/474x/bb/b2/26/bbb226401ef104c0abc1ab0b9209b370.jpg";
  static const String banner3 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdk1urD8pPjSSLAWZPec35ahY77JRTnsluONyUMnxAzK0dpilrkTnL2wqZEajs7bHXpUU&usqp=CAU";
  static const String banner4 =
      "https://img.freepik.com/free-vector/hand-drawn-vegetables-supermarket-twitter-header_23-2149385522.jpg?auto=format&h=200";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}