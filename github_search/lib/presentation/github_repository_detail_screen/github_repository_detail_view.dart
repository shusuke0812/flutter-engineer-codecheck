import 'package:flutter/material.dart';
import 'package:github_search/entity/github_repository.dart';
import 'package:github_search/presentation/github_repository_detail_screen/widget/repository_detail_body_widget.dart';
import 'package:github_search/presentation/github_repository_detail_screen/widget/repository_detail_header_widget.dart';

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
        child: Container(
          color: Colors.grey.withAlpha(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              RepositoryDetailHeaderWidget(repository: widget.repository),
              const SizedBox(height: 25),
              RepositoryDetailBodyWidget(repository: widget.repository)
            ],
          ),
        )
      ),
    );
  }
}