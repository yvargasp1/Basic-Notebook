
import 'package:arqui_app_class/src/pages/Home_page.dart';
import 'package:arqui_app_class/src/pages/alert_page.dart';
import 'package:arqui_app_class/src/pages/avatar_page.dart';
import 'package:arqui_app_class/src/pages/card_page.dart';
import 'package:flutter/cupertino.dart';

Map<String,WidgetBuilder> getApplicationRoutes(){
  return  <String,WidgetBuilder>{
    '/'     : (BuildContext context) => HomePage(),
    'alert' : (BuildContext context) => AlertPage(),
    'card'  : (BuildContext context) => CardPage(),
    'avatar': (BuildContext context) => AvatarPage(),
  };

}