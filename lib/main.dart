import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gsg_social_media_app/features/splach/ui/screens/splach_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: false,
      builder: (BuildContext context) {
        return ScreenUtilInit(
          designSize: Size(374.8372915849355, 796.1821730517055),
          allowFontScaling: false,
          child: MaterialApp(
            // locale: DevicePreview.of(context).locale, // Add the locale here
            // builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: SplachPage(),
          ),
        );
      },
    );
  }
}
