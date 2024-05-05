
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../models/menu_item.dart';
import '../providers/app_controller.dart';
import '../widgets/side_bar_menu_item.dart';
import '../widgets/workspace_item.dart';

List<MenuItemM> topMenuItems = [
  MenuItemM(
    null,
    'Search',
    AntDesign.search1,onClicked: (){}
  ),
  MenuItemM(
    null,
    'Dashboard',
    AntDesign.home,onClicked: (){}
  ),
  MenuItemM(
    null,
    'Chat',
    AntDesign.message1,onClicked: (){ Get.toNamed('/home');
  },trailing: Container(child: GestureDetector(child: Text('x'), onTap: (){ Get.toNamed('/home');
  }),)
  ),
  MenuItemM(
    null,
    'Teams',
    AntDesign.team,onClicked: (){}
  ),
  MenuItemM(null, 'Tasks', AntDesign.tool,onClicked: (){}),
  MenuItemM(
    null,
    'Game',
    AntDesign.mobile1,onClicked: (){}
  ),
  MenuItemM(
    null,
    'Notes',
    AntDesign.book,onClicked: (){}
  ),
  MenuItemM(
    null,
    'Administration',
    AntDesign.setting,onClicked: (){}
  ),
];

List<MenuItemM> bottomMenuItems = [
  MenuItemM(
    null,
    'Notifications',
    Entypo.bell,onClicked: (){}
  ),
  MenuItemM(
    'me.jpg',
    'Profile',onClicked: (){},
    null,
  )
];

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppController());

    final Size size = MediaQuery.of(context).size;
    bool isDesktop = size.width >= screenLg;

    return GetBuilder<AppController>(
        init: controller,
        builder: (logic) {
          isDesktop = controller.isDesktop;

          return AnimatedContainer(
            transformAlignment: Alignment.topLeft,
            duration: const Duration(milliseconds: 250),
            width: isDesktop ? sideBarDesktopWidth : sideBarMobileWidth,
            height: size.height,
            // height: size.height,
            decoration: BoxDecoration(
              color: secondaryBackgroundColor,
              border: Border(
                right: BorderSide(
                  width: .3,
                  color: darkColor.withOpacity(.2),
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 24,
              horizontal: isDesktop ? 24 : 12,
            ),
            child: Column(
              crossAxisAlignment: isDesktop
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //top item
                Container(
                  height: 120,
                  padding: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: .3,
                        color: darkColor.withOpacity(.2),
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment:
                            isDesktop ? Alignment.topRight : Alignment.center,
                        child: IconButton(
                          onPressed: () {
                            controller.toggleSideBar();
                        //    Get.toNamed('/home');
                          },
                          icon: const Icon(
                            AntDesign.leftsquareo,
                            color: textColor,
                            size: 18,
                          ),
                        ),
                      ),
                      WorkspaceItem(
                        isDesktop: isDesktop,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: topMenuItems.length,
                  itemBuilder: (context, index) =>
                      SideBarMenuItem(topMenuItems[index], isDesktop),
                ),

                const Spacer(),
                ...bottomMenuItems.map(
                  (e) => SideBarMenuItem(e, isDesktop, UniqueKey()),
                ),
              ],
            ),
          );
        });
  }
}
