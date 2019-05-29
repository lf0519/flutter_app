import 'package:flutter/material.dart';
abstract class MyStatelessWidget extends StatelessWidget {

  MyStatelessWidget({Key key}) :super(key:key);

  String getTitle();
}