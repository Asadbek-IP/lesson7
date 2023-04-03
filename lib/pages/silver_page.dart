import 'package:flutter/material.dart';

class SilverPage extends StatefulWidget {
  const SilverPage({super.key});

  @override
  State<SilverPage> createState() => _SilverPageState();
}

class _SilverPageState extends State<SilverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220,
            floating: true,
            snap: true,
            stretch: true,
            pinned: true,
            elevation: 50,
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Mehriddin"),
              centerTitle: true,
              background: Image.asset(
                "assets/images/nemnig.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(itemList(50)))

        ],
      ),
    );
  }
}

List<Widget> itemList(int count) {
  List<Widget> items = [];

  for (int i = 0; i <= count; i++) {
    items.add(_itemWidget(i));
  }
  return items;
}

Widget _itemWidget(int i) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ListTile(
      title: const Text(
        "Item ",
        style: TextStyle(fontSize: 18),
      ),
      subtitle: Text(
        "$i",
        style: const TextStyle(fontSize: 18),
      ),
    ),
  );
}
