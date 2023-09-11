import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum RepositoryDetailBodyItemIcon {
  stars,
  watchers,
  forks,
  issues,
  license
}

extension RepositoryDetailBodyItemIconExtention on RepositoryDetailBodyItemIcon {
  static final icons = {
    RepositoryDetailBodyItemIcon.stars: FontAwesomeIcons.star,
    RepositoryDetailBodyItemIcon.watchers: FontAwesomeIcons.eye,
    RepositoryDetailBodyItemIcon.forks: FontAwesomeIcons.codeBranch,
    RepositoryDetailBodyItemIcon.issues: FontAwesomeIcons.circleInfo,
    RepositoryDetailBodyItemIcon.license: FontAwesomeIcons.scaleBalanced
  };
  
  static final titles = {
    RepositoryDetailBodyItemIcon.stars: "Stars",
    RepositoryDetailBodyItemIcon.watchers: "Watchers",
    RepositoryDetailBodyItemIcon.forks: "Forks",
    RepositoryDetailBodyItemIcon.issues: "Issues",
    RepositoryDetailBodyItemIcon.license: "License"
  };

  IconData get icon => icons[this]!;
  String get title => titles[this]!;
}