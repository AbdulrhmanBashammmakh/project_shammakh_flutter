import 'package:flutter/material.dart';

import '../layouts/main_layout.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) => const MainLayout(
        child: Center(child: Text("Dashboard")),
      );
}
