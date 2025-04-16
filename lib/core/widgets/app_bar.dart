import 'package:flutter/material.dart';

PreferredSizeWidget appBar({required String title, List<Widget>? actions}) {
  return AppBar(title: Text(title), actions: actions, elevation: 1);
}
