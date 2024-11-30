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
    final editingController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        style: const TextStyle(fontSize: 17, color: Colors.blueGrey),
        controller: editingController,
        onSubmitted: onSubmitted,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: const OutlineInputBorder( // TODO: DRY
            borderRadius: BorderRadius.all(Radius.circular(28)),
            borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(28)),
            borderSide: BorderSide(color: Colors.white)
          ),
          prefixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.blueGrey,
            size: 17,
          ),
          hintText: "Search GitHub",
          hintStyle: const TextStyle(color: Colors.blueGrey),
          filled: true,
          fillColor: Colors.black12,
          suffixIcon: IconButton(
            onPressed: () => editingController.clear(), 
            icon: const Icon(FontAwesomeIcons.circleXmark),
            color: Colors.blueGrey,
            iconSize: 17,
          )
        ), // NOTE: for incremental search
      ),
    );
  }
}
