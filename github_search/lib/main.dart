import 'package:flutter/material.dart';
import 'package:github_search/presentation/github_search_screen/github_search_view.dart';
import 'package:github_search/presentation/github_search_screen/github_search_viewmodel.dart';
import 'package:github_search/repository/github_search_repository.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: GitHubSearchViewModel(githubSearchRepository: GitHubSearchRepository()))
      ],
      child: MaterialApp(
        title: 'GitHub Search',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const GitHubSearchView(title: "Home")
      ),
    );
  }
}