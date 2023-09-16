import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_search/presentation/github_repository_detail_screen/model/repository_item_icon.dart';

class RepositoryItemIconWidget extends StatelessWidget {
  const RepositoryItemIconWidget({
    super.key,
    required this.icon
  });

  final RepositoryItemIcon icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.antiAlias,
      children: [
        Container(
          alignment: Alignment.center,
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: icon.color,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        FaIcon(
          icon.icon, 
          size: 12, 
          color: Colors.white
        )
      ],
    );
  }
}