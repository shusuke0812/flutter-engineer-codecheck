import 'package:flutter/material.dart';
import 'package:github_search/entity/github_repository.dart';
import 'package:github_search/presentation/github_repository_detail_screen/model/repository_item_icon.dart';
import 'package:github_search/presentation/github_repository_detail_screen/widget/repository_detail_body_item_widget.dart';

class RepositoryDetailBodyWidget extends StatelessWidget {
  const RepositoryDetailBodyWidget({
    super.key,
    required this.repository
  });

  final GitHubRepository repository;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: null,
              child: RepositoryDetailBodyItemWidget(
                icon: RepositoryItemIcon.values[index],
                repository: repository,
              ),
            );
          }, 
          separatorBuilder: (context, indext) {
            return const Divider();
          }, 
          itemCount: RepositoryItemIcon.values.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        ),
      ),
    );
  }
}