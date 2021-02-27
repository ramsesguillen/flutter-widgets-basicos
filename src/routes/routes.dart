import 'package:flutter/material.dart';
import 'package:proyecto3/src/pages/alert_page.dart';
import 'package:proyecto3/src/pages/animated_container.dart';
import 'package:proyecto3/src/pages/avatar_page.dart';
import 'package:proyecto3/src/pages/card_page.dart';
import 'package:proyecto3/src/pages/home_page.dart';
import 'package:proyecto3/src/pages/input_page.dart';
import 'package:proyecto3/src/pages/list_page.dart';
import 'package:proyecto3/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getAplicationRaoutes() {
  return <String, WidgetBuilder>{
        '/'                 : ( context ) => HomePage(),
        'avatar'            : ( context ) => AvatarPage(),
        'alert'             : ( context ) => AlertPage(),
        'card'              : ( context ) => CardPage(),
        'animatedContainer' : ( context ) => AnimatedContainerPage(),
        'inputs'            : ( context ) => InputPage(),
        'slider'            : ( context ) => SliderPage(),
        'list'              : ( context ) => ListaPage(),
  };
}

