import 'package:flutter/material.dart';
import 'package:flutter_b21/models/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: 'assets/images/Group.png', title: 'Trending news'),
    OnBoardingModel(
      image: 'assets/images/Group-1.png',
      title: 'React,Save & Share News',
    ),
    OnBoardingModel(
      image: 'assets/images/Group-2.png',
      title: 'Video & live News From Youtube',
    ),
    OnBoardingModel(
      image: 'assets/images/Group-3.png',
      title: 'Browse News From Variety Of Categories',
    ),
  ];

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page View Demo")),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: onBoardingList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Image.asset(onBoardingList[i].image.toString()),
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
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
