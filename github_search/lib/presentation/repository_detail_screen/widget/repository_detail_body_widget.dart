import 'package:flutter/material.dart';
import 'package:github_search/entity/repository.dart';
import 'package:github_search/presentation/repository_detail_screen/model/repository_item_icon.dart';
import 'package:github_search/presentation/repository_detail_screen/widget/repository_detail_body_item_widget.dart';

class RepositoryDetailBodyWidget extends StatelessWidget {
  const RepositoryDetailBodyWidget({
    super.key,
    required this.repository,
    required this.getRepository
  });

  final Repository repository;
  final GetRepository? getRepository;

  @override
  Widget build(BuildContext context) {
    const double itemHeight = 30;
    const double dividerHeight = 15;
    const double padding = 16;

    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      height: itemHeight * RepositoryItemIcon.values.length + dividerHeight * (RepositoryItemIcon.values.length - 1) + padding * 2,
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: itemHeight,
              child: InkWell(
              onTap: null,
              child: RepositoryDetailBodyItemWidget(
                icon: RepositoryItemIcon.values[index],
                repository: repository,
                getRepository: getRepository,
              ),
            ),
            );
          }, 
          separatorBuilder: (context, indext) {
            return const Divider(
              height: dividerHeight,
              thickness: 0.5,
            );
          }, 
          itemCount: RepositoryItemIcon.values.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        ),
      ),
    );
  }
}