import 'package:flutter/cupertino.dart';

import '../layouts/main_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MainLayout(
    child: Center(child: Text("Home")),
  );
}
