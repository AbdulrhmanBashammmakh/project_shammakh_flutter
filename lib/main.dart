import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_shammakh_flutter/pages/home-page.dart';

import 'constants.dart';
import 'layouts/main_layout.dart';
import 'pages/dashboard.dart';
import 'providers/app_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Get.put(AppController());
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>
   GetMaterialApp(
     theme: ThemeData(
       textTheme: GoogleFonts.nunitoSansTextTheme(
         Theme.of(context).textTheme,
       ),
       fontFamily: GoogleFonts.nunitoSans().fontFamily,
       colorScheme:
       ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
         background: backgroundColor,
       ),
     ),
  // navigatorKey: NavigationService.navigatorKey,
  debugShowCheckedModeBanner: false,
  initialRoute: "/",
  // localizationsDelegates: const [
  // GlobalMaterialLocalizations.delegate,
  // GlobalWidgetsLocalizations.delegate,
  // GlobalCupertinoLocalizations.delegate,
  // ],
  // textDirection: TextDirection.rtl,
  supportedLocales: const [
  Locale('ar', ''),
  Locale('en', ''),
  ],
  // translations: LocaleString(),
  // locale: lang,
  // localeResolutionCallback: (currentLang, supportLang) {
  // if (currentLang != null) {
  // for (Locale locale in supportLang) {
  // if (locale.languageCode == currentLang.languageCode) {
  // sharedPreferences?.setString(
  // "language", currentLang.languageCode);
  // return currentLang;
  // }
  // }
  // }
  // return supportLang.first;
  // },
  getPages: pages,
  );
  //     MaterialApp(
  //   title: 'Flutter Desktop',
  //   theme: ThemeData(
  //     textTheme: GoogleFonts.nunitoSansTextTheme(
  //       Theme.of(context).textTheme,
  //     ),
  //     fontFamily: GoogleFonts.nunitoSans().fontFamily,
  //     colorScheme:
  //     ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
  //       background: backgroundColor,
  //     ),
  //   ),
  //   home: const SafeArea(
  //     child: Dashboard(),
  //   ),
  //   debugShowCheckedModeBanner: false,
  // );
}


final List<GetPage> pages = [
  // GetPage(
  //   name: "/login",
  //   page: () => Login(),
  // ),
  GetPage(
    name: "/",
    page: () => Dashboard(), // const MyHomePage(title: "hello"),
  ),
  GetPage(
    name: "/home",
    page: () => const MainLayout(child:  HomePage()),
  ),
  // GetPage(
  //   name: "/product",
  //   page: () => ProductDetail(),
  // ),
  // GetPage(
  //   name: "/perform",
  //   page: () => const PerformMain(),
  // ),
  // GetPage(
  //   name: "/perform/acc",
  //   page: () => const AccountPage(),
  // ),
  // GetPage(
  //   name: "/perform/vendor",
  //   page: () => const VendorPage(),
  // ),
  // GetPage(
  //   name: "/perform/unit",
  //   page: () => const UnitPage(),
  // ),
  // GetPage(
  //   name: "/perform/cate",
  //   page: () => const CatePage(),
  // ),
  // GetPage(
  //   name: "/purchase",
  //   page: () => const PurchaseMain(),
  // ),
  // GetPage(
  //   name: "/purchase/add",
  //   page: () => const AddPurchases(),
  // ),
  // GetPage(
  //   name: "/purchase/temp",
  //   page: () => const PurchasesTemp(),
  // ),
  // GetPage(
  //   name: "/purchase/list",
  //   page: () => const PurchasesList(),
  // ),
  // GetPage(
  //   name: "/stock",
  //   page: () => const StockMain(),
  // ),
  // GetPage(
  //   name: "/sale",
  //   page: () => const SaleMain(),
  // ),
  // GetPage(
  //   name: "/sale/list",
  //   page: () => const SaleList(),
  // ),
  // GetPage(
  //   name: "/sale/insert",
  //   page: () => NewSaleView(),
  //   // page: () => const NewSale(),
  // ),
  // GetPage(
  //   name: "/ledger",
  //   page: () => const LedgerMain(),
  // ),
  // GetPage(
  //   name: "/expenses",
  //   page: () => const ExpensesMain(),
  // ),
];