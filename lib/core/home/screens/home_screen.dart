import 'package:eventsly_desktop/core/home/viewmodels/home_viewmodel.dart';
import 'package:eventsly_desktop/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StackedView<HomeViewmodel> {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Row(
          children: [
            SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: NavigationRail(
                  extended: true,
                  backgroundColor: Colors.black,
                  destinations: const [
                    NavigationRailDestination(
                      icon: LineIcon.home(),
                      label: Text(
                        'Featured',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    NavigationRailDestination(
                      icon: LineIcon.calendar(),
                      label: Text(
                        'Events',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                  selectedIndex: 0,
                  onDestinationSelected: (value) {},
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                width: ScreenUtil().screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Eventsly",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          ".",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25.sp,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: ScreenUtil().screenWidth,
                      margin: const EdgeInsets.all(10.0),
                      height: 250.h,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "kdot".toJPG(),
                              width: ScreenUtil().screenWidth,
                              height: 250.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.4),
                          ),
                          Positioned(
                            top: 20.h,
                            right: 20.w,
                            child: const LineIcon.locationArrow(
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kendrick Lamar Concert: To Pimp A Time and Place",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: ScreenUtil().screenWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Featured",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp,
                                color: Colors.amberAccent,
                              ),
                            ),
                            Text(
                              "We believe these events will fit you like a glove",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  @override
  viewModelBuilder(BuildContext context) => HomeViewmodel();
}
