import 'package:flutter/material.dart';
import 'package:github_search/presentation/github_repository_detail_screen/github_repository_detail_viewmodel.dart';
import 'package:github_search/utility/webview_controller_factory.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:github_search/entity/github_repository.dart';
import 'package:github_search/presentation/github_repository_detail_screen/widget/repository_detail_body_widget.dart';
import 'package:github_search/presentation/github_repository_detail_screen/widget/repository_detail_header_widget.dart';

class GitHubRepisitoryDetailView extends StatefulWidget {
  const GitHubRepisitoryDetailView({
    super.key,
    required this.title,
    required this.repository,
  });
  final String title;
  final GitHubRepository repository;

  @override
  State<GitHubRepisitoryDetailView> createState() => _GitHubRepisitoryDetailViewState();
}

class _GitHubRepisitoryDetailViewState extends State<GitHubRepisitoryDetailView> {

  Future<void> _loadReadmeUrl() async {
    await Provider.of<GitHubRepositoryDetailViewModel>(context, listen: false).loadRepositoryReadme(
      widget.repository.owner?.login ?? "", widget.repository.name
    );
  }

  Future<void> _loadSubscribersCount() async {
    await Provider.of<GitHubRepositoryDetailViewModel>(context, listen: false).loadSubscribersCount(
      widget.repository.fullName
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Container(
          color: Colors.grey.withAlpha(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              RepositoryDetailHeaderWidget(
                repository: widget.repository,
                onTapHomePageUrl: (homaPageUrl) {
                  final url = Uri.parse(homaPageUrl);
                  launchUrl(url);
                },
              ),
              const SizedBox(height: 20),
              FutureBuilder(
                future: _loadSubscribersCount(),
                builder: (context, snapshot) {
                  return RepositoryDetailBodyWidget(
                    repository: widget.repository,
                    getRepository: Provider.of<GitHubRepositoryDetailViewModel>(context).getRepository,
                  );
                }
              ),
              const SizedBox(height: 20),
              FutureBuilder(
                future: _loadReadmeUrl(),
                builder: (context, snapshot) {
                  return Expanded(
                    child: WebViewWidget(
                      controller: webviewControllerFactory(Provider.of<GitHubRepositoryDetailViewModel>(context).htmlUrl)
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