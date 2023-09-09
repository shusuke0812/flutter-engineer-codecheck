import 'package:flutter/material.dart';
import 'package:github_search/entity/github_repository.dart';

class GitHubRepositoryCellWidget extends StatefulWidget {
  const GitHubRepositoryCellWidget({
    Key? key,
    required this.repository
  }) : super(key: key);

  final GitHubRepository? repository;

  @override
  State<GitHubRepositoryCellWidget> createState() => _GitHubRepositoryCellWidgetState();
}

class _GitHubRepositoryCellWidgetState extends State<GitHubRepositoryCellWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.repository?.name ?? "", 
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
          Text(
            widget.repository?.description ?? "",
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}