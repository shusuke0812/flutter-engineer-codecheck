import 'package:flutter/material.dart';
import 'package:github_search/entity/repository_list.dart';
import 'package:github_search/presentation/search_screen/widget/repository_cell_widget.dart';

class RepositoryListWidget extends StatelessWidget {
  const RepositoryListWidget({
    super.key, 
    required this.list,
    this.onTapCell
  });

  final RepositoryList? list;
  final void Function(int)? onTapCell;
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: list?.items.length ?? 0,
          separatorBuilder: (context, indext) {
            return const Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () => (onTapCell != null) ? onTapCell!(index) : null,
              child: RepositoryCellWidget(repository: list?.items[index]),
            );
          }, 
      ),
    );
  }
}
