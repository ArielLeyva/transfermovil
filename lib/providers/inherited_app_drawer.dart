import 'package:flutter/material.dart';
import 'package:transfermovil/widgets/app_drawer.dart';

class InheritedAppDrawer extends InheritedWidget {

  final AppDrawer drawer;

  final int page;

  final List<Future<List<List<dynamic>>>> providers;

  const InheritedAppDrawer({required Widget child, required this.drawer, required this.page, required this.providers, super.key})
      : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget.child != drawer;
  }

  static InheritedAppDrawer? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedAppDrawer>();
  }
}
