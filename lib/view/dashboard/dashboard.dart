// ignore_for_file: deprecated_member_use

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dashboardscreen/model/dashboard_model.dart';
import 'package:dashboardscreen/view/constants/color.dart';
import 'package:dashboardscreen/view/constants/images.dart';
import 'package:dashboardscreen/view/utils/size_config.dart';
import 'package:dashboardscreen/view/widgets/shape.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: 100 * SizeConfig.heightMultiplier,
          width: 100 * SizeConfig.widthMultiplier,
          margin: EdgeInsets.all(2.5 * SizeConfig.widthMultiplier),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CarouselSlider(
                items: [
                  Image.asset(agriculture),
                  Image.asset(agriculture),
                  Image.asset(agriculture),
                ],
                options: CarouselOptions(
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  height: 10 * SizeConfig.heightMultiplier,
                  autoPlayCurve: Curves.decelerate,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 45 * SizeConfig.heightMultiplier,
                width: 100 * SizeConfig.widthMultiplier,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: dashboardList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final DashboardModel showData = dashboardList[index];
                    return CustomContainer(
                      imageAsset: showData.imageAsset,
                      name: showData.name,
                      number: showData.number,
                      onPress: () {},
                    );
                  },
                ),
              ),
              HorizontalTile(
                name: 'My Dairy Farm',
                onPress: () {},
                imageAsset: dairy,
              ),
              const SizedBox(height: 10),
              HorizontalTile(
                name: 'My Agriculture',
                onPress: () {},
                imageAsset: agriculture,
              ),

              // SizedBox(height: 3 * SizeConfig.heightMultiplier),
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalTile extends StatelessWidget {
  const HorizontalTile({
     this.onPress,
     this.name,
     this.imageAsset,
    Key key,
  }) : super(key: key);
  final String name, imageAsset;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPress,
          child: Container(
            height: 14 * SizeConfig.heightMultiplier,
            width: 90 * SizeConfig.heightMultiplier,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: darkPeachColor, width: 2),
            ),
            child: Stack(
              children: [
                // Positioned(
                //   bottom: 0,
                //   child: Container(
                //     width: 94 * SizeConfig.widthMultiplier,
                //     height: 1.25 * SizeConfig.heightMultiplier,
                //     decoration: BoxDecoration(
                //       color: const Color(0xff46BDFA).withOpacity(0.8),
                //       borderRadius: const BorderRadius.only(
                //         bottomLeft: Radius.circular(10),
                //         bottomRight: Radius.circular(10),
                //       ),
                //     ),
                //   ),
                // ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    height: 15 * SizeConfig.heightMultiplier,
                    width: 99 * SizeConfig.widthMultiplier,
                    child: CustomPaint(
                      size: Size(100 * SizeConfig.heightMultiplier,
                          30 * SizeConfig.widthMultiplier),
                      painter: Shape(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(name,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Colors.black)),
                ),
                Positioned(
                  top: 1 * SizeConfig.heightMultiplier,
                  right: 6 * SizeConfig.widthMultiplier,
                  child: Image.asset(imageAsset,
                      height: 7 * SizeConfig.heightMultiplier),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key key,
     this.onPress,
     this.imageAsset,
     this.name,
     this.number,
  }) : super(key: key);
  final VoidCallback onPress;
  final String name, imageAsset;
  final int number;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 20 * SizeConfig.heightMultiplier,
        width: 39 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: darkPeachColor, width: 2),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.amber.withOpacity(0.2),
              blurRadius: 5,
              // spreadRadius: 1,
            ),
          ],
        ),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            // Positioned(
            //   bottom: 0,
            //   child: Container(
            //     width: 45.7 * SizeConfig.widthMultiplier,
            //     height: 0.5 * SizeConfig.heightMultiplier,
            //     decoration: BoxDecoration(
            //       color: const Color(0xff46BDFA).withOpacity(0.8),
            //       borderRadius: const BorderRadius.only(
            //         bottomLeft: Radius.circular(10),
            //         bottomRight: Radius.circular(10),
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                height: 20 * SizeConfig.heightMultiplier,
                width: 45.7 * SizeConfig.widthMultiplier,
                child: CustomPaint(
                  size: Size(100 * SizeConfig.heightMultiplier,
                      40 * SizeConfig.widthMultiplier),
                  painter: Shape(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 5 * SizeConfig.heightMultiplier,
              left: 5 * SizeConfig.widthMultiplier,
              child: Image.asset(
                imageAsset,
                height: 6 * SizeConfig.heightMultiplier,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 10,
              child: Text(
                number.toString(),
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
