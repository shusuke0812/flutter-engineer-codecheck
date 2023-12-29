import 'package:flutter/material.dart';
import 'package:github_search/presentation/repository_detail_screen/repository_detail_viewmodel.dart';
import 'package:github_search/presentation/search_screen/search_viewmodel.dart';
import 'package:github_search/repository/readme_repository.dart';
import 'package:github_search/repository/repo_repository.dart';
import 'package:github_search/repository/search_repository.dart';
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
        ChangeNotifierProvider.value(value: SearchViewModel(searchRepository: SearchRepository())),
        ChangeNotifierProvider.value(value: RepositoryDetailViewModel(readmeRepository: ReadmeRepository(), repoRepository: RepoRepository()))
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