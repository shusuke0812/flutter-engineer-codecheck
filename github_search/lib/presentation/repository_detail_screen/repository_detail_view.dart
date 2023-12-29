import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/presentation/repository_detail_screen/repository_detail_viewmodel.dart';
import 'package:github_search/utility/webview_controller_factory.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:github_search/entity/repository.dart';
import 'package:github_search/presentation/repository_detail_screen/widget/repository_detail_body_widget.dart';
import 'package:github_search/presentation/repository_detail_screen/widget/repository_detail_header_widget.dart';

class RepisitoryDetailView extends StatelessWidget {
  const RepisitoryDetailView({
    super.key,
    required this.title,
    required this.repository,
  });
  final String title;
  final Repository repository;

  @override
  Widget build(BuildContext context) {
    return _RepisitoryDetailContentView(
      title: title,
      repository: repository,
    );
  }
}

class _RepisitoryDetailContentView extends ConsumerWidget {
  const _RepisitoryDetailContentView({
    Key? key,
    required this.title,
    required this.repository

  }) : super(key: key);

  final String title;
  final Repository repository;
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(repositoryDetailViewModelProvider);
    final viewModel = ref.watch(repositoryDetailViewModelProvider.notifier);
  
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Container(
          color: Colors.grey.withAlpha(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              RepositoryDetailHeaderWidget(
                repository: repository,
                onTapHomePageUrl: (homaPageUrl) {
                  final url = Uri.parse(homaPageUrl);
                  launchUrl(url);
                },
              ),
              const SizedBox(height: 20),
              FutureBuilder(
                future: viewModel.loadSubscribersCount(repository.fullName),
                builder: (context, snapshot) {
                  return RepositoryDetailBodyWidget(
                    repository: repository,
                    getRepository: state.getRepository,
                  );
                }
              ),
              const SizedBox(height: 20),
              FutureBuilder(
                future: viewModel.loadRepositoryReadme(
                  repository.owner?.login ?? "", 
                  repository.name
                ),
                builder: (context, snapshot) {
                  return Expanded(
                    child: WebViewWidget(
                      controller: webviewControllerFactory(state.htmlUrl)
                    )
                  );
                }
              )
            ],
          ),
        )
      ),
    );
  }
}