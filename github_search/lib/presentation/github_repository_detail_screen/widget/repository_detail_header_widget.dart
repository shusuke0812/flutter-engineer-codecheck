import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_search/entity/github_repository.dart';

class RepositoryDetailHeaderWidget extends StatelessWidget {
  const RepositoryDetailHeaderWidget({
    super.key,
    required this.repository,
  });

  final GitHubRepository repository;

  Widget languageCircle(Color color) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  repository.owner?.avatarUrlString ?? "",
                  width: 40,
                  height: 40,
                ),
                const SizedBox(width: 16),
                Text(
                  repository.name ?? "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.w900
                  )
                )
              ],
            ),
            const SizedBox(height: 8),
            Text(repository.description ?? "", style: const TextStyle(fontSize: 15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(FontAwesomeIcons.link, size: 15, color: Colors.black26),
                const SizedBox(width: 8),
                TextButton(
                  child: Text(repository.homePage ?? "-", style: const TextStyle(fontSize: 17, color: Colors.blue)),
                  onPressed: () {
                    // TODO: open web page
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                languageCircle(Colors.red), // TODO: set language color
                const SizedBox(width: 16),
                Text(repository.language ?? "", style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400))
              ],
            )
          ],
        ),
    ),
    );
  }
}