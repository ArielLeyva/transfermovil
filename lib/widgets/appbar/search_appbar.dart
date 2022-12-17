import 'package:flutter/material.dart';

abstract class SearchAppBar {
  AppBar createSearchAppBar(bool isSearching) {
    TextEditingController controller = TextEditingController();

    if (isSearching) {
      return AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              //cancelSearch();
            }),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 10),
          child: TextField(
            controller: controller,
            onEditingComplete: () {
              //searching();
            },
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            autofocus: true,
            decoration: const InputDecoration(
              focusColor: Colors.white,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
        ),
      );
    } else {
      return AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Transfermóvil"),
        toolbarHeight: 50.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      );
    }
  }
}