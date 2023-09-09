
import 'package:flutter/material.dart';
import 'package:github_search/presentation/github_search_screen/github_search_viewmodel.dart';
import 'package:provider/provider.dart';

class GitHubSearchView extends StatefulWidget {
  const GitHubSearchView({super.key, required this.title});
  final String title;

  @override
  State<GitHubSearchView> createState() => _GitHubSearchViewState();
}

class _GitHubSearchViewState extends State<GitHubSearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text("test", style: Theme.of(context).textTheme.headlineMedium),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Provider.of<GitHubSearchViewModel>(context, listen: false).loadRepositoryList("swift");
        },
      ),
    );
  }
}