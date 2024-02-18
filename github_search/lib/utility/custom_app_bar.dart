import 'dart:io';

import 'package:flutter/material.dart';

PreferredSize customAppBar(BuildContext context, String title) {
  final statusBarHeight = MediaQuery.of(context).padding.top;
  final appBarHeight = Platform.isIOS ? 0.0 : 36.0;
  
  return PreferredSize(
    preferredSize: Size.fromHeight(statusBarHeight + appBarHeight),
    child: AppBar(
      centerTitle: true,
      title: Text(title)
    )
  );
} 
