
import 'package:flutter/material.dart';
import 'package:github_search/presentation/github_search_screen/github_search_viewmodel.dart';
import 'package:github_search/presentation/github_search_screen/widget/github_repository_list_widget.dart';
import 'package:github_search/presentation/github_search_screen/widget/github_search_text_field_widget.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GitHubSearchTextFieldWidget(
            onSubmitted: (String searchWord) {
              Provider.of<GitHubSearchViewModel>(context, listen: false).loadRepositoryList(searchWord);
            },
          ),
          Expanded(
            child: GitHubRepositoryListWidget(
              list: Provider.of<GitHubSearchViewModel>(context).list
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // NOTE: debug for getting REST api response
          Provider.of<GitHubSearchViewModel>(context, listen: false).loadRepositoryList("swift");
        },
      ),
    );
  }
}