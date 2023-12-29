import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_search/presentation/search_screen/search_viewmodel.dart';
import 'package:github_search/presentation/search_screen/widget/repository_list_widget.dart';
import 'package:github_search/presentation/search_screen/widget/search_text_field_widget.dart';
import 'package:github_search/utility/router/router_path.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key, required this.title});
  final String title;

  @override
  State<SearchView> createState() => _GitHubSearchViewState();
}

class _GitHubSearchViewState extends State<SearchView> {
  Widget? _debugFloatingActionButton() {
    return kDebugMode ?
      FloatingActionButton(
        child: const Icon(FontAwesomeIcons.bolt),
        onPressed: () async {
          // NOTE: debug for getting REST api response
          Provider.of<SearchViewModel>(context, listen: false).loadRepositoryList("swift");
        }
      )
      : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GitHubSearchTextFieldWidget(
            onSubmitted: (String searchWord) {
              Provider.of<SearchViewModel>(context, listen: false).loadRepositoryList(searchWord);
            },
          ),
          Expanded(
            child: RepositoryListWidget(
              list: Provider.of<SearchViewModel>(context).list,
              onTapCell: (indext) {
                context.push(
                  RoutePath.repositoryDetail.path,
                  extra: Provider.of<SearchViewModel>(context, listen: false).list?.items[indext]
                );
              },
            )
          )
        ],
      ),
      floatingActionButton: _debugFloatingActionButton(),
    );
  }
}