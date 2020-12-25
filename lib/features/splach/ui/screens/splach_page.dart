import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gsg_social_media_app/features/welcome/ui/screens/welcome_page.dart';

class SplachPage extends StatefulWidget {
  @override
  _SplachPageState createState() => _SplachPageState();
}

class _SplachPageState extends State<SplachPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      // ScreenUtil.init(context,
      //     width: 374.8372915849355,
      //     height: 796.1821730517055,
      //     allowFontScaling: true);

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return WelcomePage();
          },
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('spalch')),
    );
  }
}
