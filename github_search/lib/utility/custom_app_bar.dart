import 'package:flutter/material.dart';

PreferredSize customAppBar(BuildContext context, String title) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(46.0),
    child: AppBar(
      centerTitle: true,
      title: Text(title)
    )
  );
} 
