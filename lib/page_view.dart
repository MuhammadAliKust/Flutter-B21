import 'package:flutter/material.dart';
import 'package:flutter_b21/models/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  PageController controller = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(title: 'Trending news', image: 'assets/images/Group.png'),
    OnBoardingModel(
      title: 'React,Save & Share News',
      image: 'assets/images/Group-1.png',
    ),
    OnBoardingModel(
      title: 'Video & live News From Youtube',
      image: 'assets/images/Group-2.png',
    ),
    OnBoardingModel(
      title: 'Browse News From Variety Of Categories',
      image: 'assets/images/Group-3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page View")),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemCount: onBoardingList.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Image.asset(onBoardingList[i].image),
                    Text(
                      onBoardingList[i].title,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SmoothPageIndicator(
            controller: controller, // PageController
            count: onBoardingList.length,
            effect: ExpandingDotsEffect(), // your preferred effect
            onDotClicked: (index) {},
          ),
          SizedBox(height: 160),
        ],
      ),
    );
  }
}
