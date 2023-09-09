import 'package:flutter/material.dart';

class GitHubSearchTextFieldWidget extends StatelessWidget {
  const GitHubSearchTextFieldWidget({
    super.key,
    this.onSubmitted,
    this.onChanged
  });

  final Function(String)? onSubmitted;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 17, color: Colors.grey),
      controller: TextEditingController(),
      onSubmitted: onSubmitted,
      onChanged: onChanged, // NOTE: for incremental search
    );
  }
}
