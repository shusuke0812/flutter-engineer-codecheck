import 'package:flutter/material.dart';
import 'package:github_search/entity/github_repository_list.dart';
import 'package:github_search/logger.dart';
import 'package:github_search/presentation/github_search_screen/widget/github_repository_cell_widget.dart';

class GitHubRepositoryListWidget extends StatefulWidget {
  const GitHubRepositoryListWidget({
    Key? key,
    required this.list
  }) : super(key: key);

  final GitHubRepositoryList? list;

  @override
  State<GitHubRepositoryListWidget> createState() => _GitHubRepositoryListWidgetState();
}

class _GitHubRepositoryListWidgetState extends State<GitHubRepositoryListWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Center(
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: widget.list?.items.length ?? 0,
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                logger.d("tapped idenx=$index");
              },
              child: GitHubRepositoryCellWidget(repository: widget.list?.items[index]),
            );
          }, 
        ),
      ),
    );
  }
}