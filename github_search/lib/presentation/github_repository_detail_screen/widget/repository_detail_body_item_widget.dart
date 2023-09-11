import 'package:flutter/material.dart';
import 'package:github_search/entity/github_license.dart';
import 'package:github_search/entity/github_repository.dart';
import 'package:github_search/presentation/github_repository_detail_screen/model/repository_item_icon.dart';
import 'package:github_search/presentation/github_repository_detail_screen/widget/repository_item_icon_widget.dart';
import 'package:github_search/utility/logger.dart';

class RepositoryDetailBodyItemWidget extends StatelessWidget {
  const RepositoryDetailBodyItemWidget({
    super.key,
    required this.repository,
    required this.icon,
    this.itemHeight = 30,
  });

  final GitHubRepository repository;
  final RepositoryItemIcon icon;
  final double itemHeight;

  Widget countText(RepositoryItemIcon icon) {
    switch (icon) {
      case RepositoryItemIcon.stars:
        return Text("${repository.starCount}");
      case RepositoryItemIcon.watchers:
        return Text("${repository.watchCount}");
      case RepositoryItemIcon.forks:
        return Text("${repository.forkCount}");
      case RepositoryItemIcon.issues:
        return Text("${repository.issueCount}");
      case RepositoryItemIcon.license:
        logger.d("${repository.license}");
        return Text("${repository.license?.displayName()}", overflow: TextOverflow.ellipsis, maxLines: 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RepositoryItemIconWidget(icon: icon),
              const SizedBox(width: 8),
              Text(icon.title)
            ],
          ),
          countText(icon)
        ]
      ),
    );
  }
}
