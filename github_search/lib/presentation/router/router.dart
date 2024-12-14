// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:github_search/domain/repository_interface/entity/repository.dart';
import 'package:github_search/presentation/router/router_path.dart';
import 'package:github_search/presentation/screen/repository_detail_screen/repository_detail_view.dart';
import 'package:github_search/presentation/screen/search_screen/search_view.dart';

// Screen

final appRouter = GoRouter(
  initialLocation: RoutePath.repositoryList.path,
  routes: [
    GoRoute(
      path: RoutePath.repositoryList.path,
      name: RoutePath.repositoryList.name,
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: SearchView(title: RoutePath.repositoryList.title)
        );
      },
    ),
    GoRoute(
      path: RoutePath.repositoryDetail.path,
      name: RoutePath.repositoryDetail.name,
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child:  RepositoryDetailView(
            title: RoutePath.repositoryDetail.title,
            repository: state.extra as Repository,
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
