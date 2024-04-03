import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wink/responsive/mobile_screen_layout.dart';
import 'package:wink/responsive/responsive_layout_screen.dart';
import 'package:wink/responsive/web_screen_layout.dart';
import 'package:wink/utils/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(apiKey: 'AIzaSyAmDTuCbcBS-a9MGPV6prdfeGofN7HUhTI', 
      appId: '1:340104578704:web:e0fdf7e624969f931bfa15', 
      messagingSenderId: '340104578704', 
      projectId: 'wink-c3240',
      storageBucket: 'wink-c3240.appspot.com',
    ),
    );
  }else{
  await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wink',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(), 
        webscreenLayout: webscreenLayout(),
        ),
    );
  }
}