import 'package:get/get.dart';

import '../models/menu_item.dart';

class AppController extends GetxController {
  bool isDesktop = true;
  MenuItemM? menuItem;

  void toggleSideBar() {
    print('TOGGLING SIDE');

    isDesktop = !isDesktop;
    update();
  }

  void setCurrentItem(MenuItemM item) {
    menuItem = item;
  }

  MenuItemM? get item => menuItem;
}
