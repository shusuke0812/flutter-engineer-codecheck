import 'package:flutter/material.dart';

class GitHubRepisitoryDetailView extends StatefulWidget {
  const GitHubRepisitoryDetailView({super.key, required this.title});
  final String title;

  @override
  State<GitHubRepisitoryDetailView> createState() => _GitHubRepisitoryDetailViewState();
}

class _GitHubRepisitoryDetailViewState extends State<GitHubRepisitoryDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text("text", style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}