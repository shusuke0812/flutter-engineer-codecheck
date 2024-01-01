import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'github_search_api_platform_interface.dart';

/// An implementation of [GithubSearchApiPlatform] that uses method channels.
class MethodChannelGithubSearchApi extends GithubSearchApiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('github_search_api');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
