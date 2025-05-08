
import 'github_search_api_platform_interface.dart';

class GithubSearchApi {
  Future<String?> getPlatformVersion() {
    return GithubSearchApiPlatform.instance.getPlatformVersion();
  }
}
