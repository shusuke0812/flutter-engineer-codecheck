import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_api/github_search_api.dart';
import 'package:github_search_api/github_search_api_platform_interface.dart';
import 'package:github_search_api/github_search_api_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGithubSearchApiPlatform
    with MockPlatformInterfaceMixin
    implements GithubSearchApiPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GithubSearchApiPlatform initialPlatform = GithubSearchApiPlatform.instance;

  test('$MethodChannelGithubSearchApi is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGithubSearchApi>());
  });

  test('getPlatformVersion', () async {
    GithubSearchApi githubSearchApiPlugin = GithubSearchApi();
    MockGithubSearchApiPlatform fakePlatform = MockGithubSearchApiPlatform();
    GithubSearchApiPlatform.instance = fakePlatform;

    expect(await githubSearchApiPlugin.getPlatformVersion(), '42');
  });
}
