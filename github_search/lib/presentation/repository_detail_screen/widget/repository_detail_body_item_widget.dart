import 'package:flutter/material.dart';
import 'package:github_search/entity/license.dart';
import 'package:github_search/entity/repository.dart';
import 'package:github_search/presentation/repository_detail_screen/model/repository_item_icon.dart';
import 'package:github_search/presentation/repository_detail_screen/widget/repository_item_icon_widget.dart';
import 'package:github_search/utility/logger.dart';

class RepositoryDetailBodyItemWidget extends StatelessWidget {
  const RepositoryDetailBodyItemWidget({
    super.key,
    required this.repository,
    required this.icon,
    required this.getRepository
  });

  final Repository repository;
  final GetRepository? getRepository;
  final RepositoryItemIcon icon;

  Widget countText(RepositoryItemIcon icon) {
    switch (icon) {
      case RepositoryItemIcon.stars:
        return Text(repository.starCountWithComma);
      case RepositoryItemIcon.watchers:
        return Text(getRepository?.subscribersCountWithComma ?? "-");
      case RepositoryItemIcon.forks:
        return Text(repository.forkCountWithComma);
      case RepositoryItemIcon.issues:
        return Text(repository.issueCountWithComma);
      case RepositoryItemIcon.license:
        logger.d("${repository.license}");
        return Text("${repository.license?.displayName()}", overflow: TextOverflow.ellipsis, maxLines: 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
