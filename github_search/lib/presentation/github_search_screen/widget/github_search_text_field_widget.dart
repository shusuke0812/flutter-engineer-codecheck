import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        style: const TextStyle(fontSize: 17, color: Colors.blueGrey),
        controller: TextEditingController(),
        onSubmitted: onSubmitted,
        onChanged: onChanged,
        decoration: const InputDecoration(
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder( // TODO: DRY
            borderRadius: BorderRadius.all(Radius.circular(28)),
            borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(28)),
            borderSide: BorderSide(color: Colors.white)
          ),
          prefixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.blueGrey,
            size: 17,
          ),
          hintText: "Search GitHub",
          hintStyle: TextStyle(color: Colors.blueGrey),
          filled: true,
          fillColor: Colors.black12,
        ), // NOTE: for incremental search
      ),
    );
  }
}
