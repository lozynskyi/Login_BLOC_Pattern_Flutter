import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget{

  Provider({Key key, Widget child}): super(key: key, child : child);

  final bloc = Bloc();
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static Bloc of(BuildContext context){
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}