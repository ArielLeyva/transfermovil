import 'package:flutter/material.dart';
import 'package:transfermovil/utils/icons_list.dart';

abstract class BankMixin {
  Widget createSilverAppBar(
      {required List<Widget> actions,
      required String title,
      required String image}) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 250.0,
      actions: actions,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(title),
        background: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget createAction(
      {required String name,
      required String description,
      required String icon}) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(description),
      leading: IconList.get(icon),
      onTap: () {},
    );
  }
}
