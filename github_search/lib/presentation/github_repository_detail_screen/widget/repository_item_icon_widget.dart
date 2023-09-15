import 'package:flutter/material.dart';
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
      children: [
        Container(
          alignment: Alignment.center,
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: icon.color,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        Icon(
          icon.icon, 
          size: 15, 
          color: Colors.white
        )
      ],
    );
  }
}