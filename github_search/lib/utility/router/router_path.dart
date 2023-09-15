import 'package:flutter/material.dart';

class RoutePath {
  static const RoutePathObject repositoryList = RoutePathObject(name: 'repositoryList', path: '/', title: 'Home');
  static const RoutePathObject repositoryDetail = RoutePathObject(name: 'repositoryDetail', path: '/repository-detail', title: 'Detail');
}

@immutable
class RoutePathObject {
  const RoutePathObject({
    required this.name,
    required this.path,
    required this.title
  });

  final String name;
  final String path;
  final String title;
}