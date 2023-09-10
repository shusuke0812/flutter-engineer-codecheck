import 'package:flutter/material.dart';
import 'package:github_search/entity/github_repository_list.dart';
import 'package:github_search/utility/logger.dart';
import 'package:github_search/presentation/github_search_screen/widget/github_repository_cell_widget.dart';

class GitHubRepositoryListWidget extends StatelessWidget {
  const GitHubRepositoryListWidget({super.key, required this.list});

  final GitHubRepositoryList? list;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: list?.items.length ?? 0,
          separatorBuilder: (context, indext) {
            return const Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                logger.d("tapped idenx=$index");
              },
              child: GitHubRepositoryCellWidget(repository: list?.items[index]),
            );
          }, 
      ),
    );
  }
}
