import 'package:flutter/material.dart';
import 'package:github_search/presentation/github_repository_detail_screen/github_repository_detail_viewmodel.dart';
import 'package:github_search/presentation/github_search_screen/github_search_viewmodel.dart';
import 'package:github_search/repository/github_readme_repository.dart';
import 'package:github_search/repository/github_search_repository.dart';
import 'package:github_search/utility/router/router.dart';
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
        ChangeNotifierProvider.value(value: GitHubSearchViewModel(githubSearchRepository: GitHubSearchRepository())),
        ChangeNotifierProvider.value(value: GitHubRepositoryDetailViewModel(githubReadmeRepository: GitHubReadmeRepository()))
      ],
      child: MaterialApp.router(
        routerDelegate: appRouter.routerDelegate,
        routeInformationParser: appRouter.routeInformationParser,
        routeInformationProvider: appRouter.routeInformationProvider,
        title: 'GitHub Search',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
      ),
    );
  }
}