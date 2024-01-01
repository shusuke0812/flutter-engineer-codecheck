import 'package:flutter/material.dart';
import 'package:github_search/entity/repository.dart';

class RepositoryCellWidget extends StatelessWidget {
  const RepositoryCellWidget({super.key, required this.repository});
  final Repository? repository;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            repository?.fullName ?? "", 
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
          Text(
            repository?.description ?? "",
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
