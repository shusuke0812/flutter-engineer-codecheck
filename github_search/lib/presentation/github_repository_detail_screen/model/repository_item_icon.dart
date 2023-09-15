import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum RepositoryItemIcon {
  stars,
  watchers,
  forks,
  issues,
  license
}

extension RepositoryItemIconExtention on RepositoryItemIcon {
  static final icons = {
    RepositoryItemIcon.stars: FontAwesomeIcons.star,
    RepositoryItemIcon.watchers: FontAwesomeIcons.eye,
    RepositoryItemIcon.forks: FontAwesomeIcons.codeBranch,
    RepositoryItemIcon.issues: FontAwesomeIcons.circleInfo,
    RepositoryItemIcon.license: FontAwesomeIcons.scaleBalanced
  };
  
  static final titles = {
    RepositoryItemIcon.stars: "Stars",
    RepositoryItemIcon.watchers: "Watchers",
    RepositoryItemIcon.forks: "Forks",
    RepositoryItemIcon.issues: "Issues",
    RepositoryItemIcon.license: "License"
  };

  static final colors = {
    RepositoryItemIcon.stars: const Color.fromRGBO(0, 122, 255, 1),
    RepositoryItemIcon.watchers: const Color.fromRGBO(255, 204, 0, 1),
    RepositoryItemIcon.forks: const Color.fromRGBO(76, 217, 100, 1),
    RepositoryItemIcon.issues: const Color.fromRGBO(255, 148, 0, 1),
    RepositoryItemIcon.license: const Color.fromRGBO(255, 59, 48, 1)
  };

  IconData get icon => icons[this]!;
  String get title => titles[this]!;
  Color get color => colors[this]!;
}