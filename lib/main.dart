import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:snumaku_permesinan/config/sizeConfig.dart';
import 'package:snumaku_permesinan/view/ar.dart';
import 'package:snumaku_permesinan/view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      SizeConfig.init(context);
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        getPages: [
          GetPage(
              name: '/ar',
              page: () => const ArPage(),
              transition: Transition.fadeIn),
        ],
      );
    });
  }
}
