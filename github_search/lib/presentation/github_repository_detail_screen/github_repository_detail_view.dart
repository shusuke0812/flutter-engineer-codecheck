import 'package:flutter/material.dart';
import 'package:github_search/entity/github_repository.dart';

class GitHubRepisitoryDetailView extends StatefulWidget {
  const GitHubRepisitoryDetailView({
    super.key,
    required this.title,
    required this.repository,
  });
  final String title;
  final GitHubRepository repository;

  @override
  State<GitHubRepisitoryDetailView> createState() => _GitHubRepisitoryDetailViewState();
}

class _GitHubRepisitoryDetailViewState extends State<GitHubRepisitoryDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.repository.fullName ?? "", style: Theme.of(context).textTheme.headlineSmall),
            Text(widget.repository.description ?? "", style: Theme.of(context).textTheme.headlineSmall),
          ],
        )
      ),
    );
  }
}