import 'package:flutter/material.dart';
import 'package:transfermovil/providers/inherited_app_drawer.dart';
import 'package:transfermovil/screens/home/frequently_actions.dart';
import 'package:transfermovil/screens/home/home_background.dart';
import 'package:transfermovil/screens/home/search_result.dart';

class ActionsWidget extends StatelessWidget {
  final bool isSearching;

  final int selectedIndex;

  final List<dynamic> searchResult;

  const ActionsWidget({
    required this.selectedIndex,
    required this.isSearching,
    required this.searchResult,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providers = InheritedAppDrawer.of(context)?.providers;

    Widget body = Container();
    switch (selectedIndex) {
      case 0:
        body = FrequentlyActions(
          color: const Color.fromRGBO(3, 94, 85, 1.0),
          provider: providers![0],
          frequently: const [
            "0,0",
            "0,1",
            "0,3",
            "0,6",
            "1,0",
            "1,1",
            "1,2",
            "1,6",
            "1,7",
            "2,1"
          ],
        );
        break;
      case 1:
        body = FrequentlyActions(
          color: const Color.fromRGBO(113, 187, 62, 1.0),
          provider: providers![1],
          frequently: const [
            "0,0",
            "0,1",
            "0,3",
            "0,6",
            "1,0",
            "1,1",
            "1,2",
            "1,6",
            "1,7",
            "2,1"
          ],
        );
        break;
      case 2:
        body = FrequentlyActions(
          color: const Color.fromRGBO(153, 2, 0, 1.0),
          provider: providers![2],
          frequently: const [
            "0,0",
            "0,1",
            "0,3",
            "0,6",
            "1,0",
            "1,1",
            "1,2",
            "1,6",
            "1,7"
          ],
        );
        break;
    }

    List<Widget> children = [
      const HomeBackground(),
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [body],
          ),
        ),
      ),
    ];
    if (isSearching) {
      children.add(SearchResult(searchResult));
    }

    return Stack(children: children);
  }
}
