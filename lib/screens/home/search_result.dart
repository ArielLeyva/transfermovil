import 'package:flutter/material.dart';
import 'package:transfermovil/utils/icons_list.dart';

class SearchResult extends StatelessWidget {
  final List<dynamic> searchResult;

  const SearchResult(this.searchResult, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: ListView(
        shrinkWrap: true,
        children: _getResult(),
      ),
    );
  }

  List<Widget> _getResult() {
    List<Widget> widgets = [];
    for(var result in searchResult) {
      Widget? trailing;
      switch(result["bank"]) {
        case 0:
          trailing = IconList.get("bpa_icon");
          break;
        case 1:
          trailing = IconList.get("metropolitano_icon");
          break;
        case 2:
          trailing = IconList.get("bandec_icon");
          break;
      }
      widgets.add(ListTile(
        title: Text(result["name"]),
        leading: IconList.get(result["icon"]),
        subtitle: Text(result["description"]),
        trailing: trailing,
        onTap: () {},
      ));
    }
    return widgets;
  }
}
