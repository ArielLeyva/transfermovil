import 'package:flutter/material.dart';
import 'package:transfermovil/providers/inherited_app_drawer.dart';
import 'package:transfermovil/screens/home/actions_widget.dart';
import 'package:transfermovil/widgets/navigation_bar/home_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  bool _isSearching = false;

  final List<dynamic> _searchResult = [];

  final TextEditingController _controller = TextEditingController();

  final List<List<dynamic>> _actions = [[], [], []];

  _HomeScreenState() {
    _controller.addListener(() {
      _searchResult.clear();
      String pattern = _controller.value.text.toLowerCase();
      for (int i = 0; i < 3; i++) {
        List<dynamic> bank = _actions[i];
        for (var windows in bank) {
          for (var action in windows) {
            String name = action["name"];
            if (name.toLowerCase().contains(pattern)) {
              action["bank"] = i;
              _searchResult.add(action);
            }
          }
        }
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final drawer = InheritedAppDrawer.of(context)?.drawer;
    final providers = InheritedAppDrawer.of(context)?.providers;
    for (int i = 0; i < 3; i++) {
      providers![i].then((value) => _actions[i] = value);
    }

    return Scaffold(
      drawer: drawer,
      appBar: _getAppBar(),
      body: ActionsWidget(
        selectedIndex: _selectedIndex,
        isSearching: _isSearching,
        searchResult: _searchResult,
      ),
      bottomNavigationBar: HomeNavigationBar(_selectedIndex, (index) {
        _onItemTapped(index);
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  AppBar _getAppBar() {
    if (_isSearching) {
      return AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              setState(() {
                _isSearching = false;
              });
            }),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 10),
          child: TextField(
            controller: _controller,
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            autofocus: true,
            decoration: const InputDecoration(
              focusColor: Colors.white,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
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
            onPressed: () {
              setState(() {
                _isSearching = true;
              });
            },
          ),
        ],
      );
    }
  }
}
