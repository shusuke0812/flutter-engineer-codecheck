import 'package:flutter/material.dart';
import 'package:github_search/entity/github_repository.dart';
import 'package:github_search/utility/router/router_path.dart';
import 'package:go_router/go_router.dart';

// Screen
import 'package:github_search/presentation/github_search_screen/github_search_view.dart';
import 'package:github_search/presentation/github_repository_detail_screen/github_repository_detail_view.dart';

final router = GoRouter(
  initialLocation: RoutePath.repositoryList.path,
  routes: [
    GoRoute(
      path: RoutePath.repositoryList.path,
      name: RoutePath.repositoryList.name,
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: GitHubSearchView(title: RoutePath.repositoryList.title)
        );
      },
    ),
    GoRoute(
      path: RoutePath.repositoryDetail.path,
      name: RoutePath.repositoryDetail.name,
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child:  GitHubRepisitoryDetailView(
            title: RoutePath.repositoryDetail.title,
            repository: state.extra as GitHubRepository,
          )
        );
      },
    )
  ],
  errorPageBuilder:(context, state) {
    return MaterialPage(
      key: state.pageKey,
      child: Center(
        child: Text(state.error.toString()),
      )
    );
  },
);