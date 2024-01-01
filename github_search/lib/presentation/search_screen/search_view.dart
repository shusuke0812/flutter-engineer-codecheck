import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_search/presentation/search_screen/search_viewmodel.dart';
import 'package:github_search/presentation/search_screen/widget/repository_list_widget.dart';
import 'package:github_search/presentation/search_screen/widget/search_text_field_widget.dart';
import 'package:github_search/utility/router/router_path.dart';
import 'package:go_router/go_router.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return _SearchContentView(title: title);
  }
}

class _SearchContentView extends ConsumerWidget {
  const _SearchContentView({
    Key? key,
    required this.title
  }) : super(key: key);
  
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchViewModelProvider);
    final viewModel = ref.read(searchViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GitHubSearchTextFieldWidget(
            onSubmitted: (String searchWord) {
              viewModel.loadRepositoryList(searchWord);
            },
          ),
          Expanded(
            child: RepositoryListWidget(
              list: state.list,
              onTapCell: (indext) {
                context.push(
                  RoutePath.repositoryDetail.path,
                  extra: state.list?.items[indext]
                );
              },
            )
          )
        ],
      ),
      floatingActionButton: kDebugMode 
        ? FloatingActionButton(
            child: const Icon(FontAwesomeIcons.bolt),
            onPressed: () async {
            // NOTE: debug for getting REST api response
              viewModel.loadRepositoryList('flutter');
            }
          )
        : null,
    );
  }
}