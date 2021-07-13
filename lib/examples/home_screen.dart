import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App theme'),
        actions: [
          IconButton(
            onPressed: () => print('[clicked] account balance'),
            icon: const Icon(Icons.account_balance),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            ElevatedButton(
              onPressed: () => print('[clicked] switch to dark'),
              child: const Text('Switch to dark'),
            ),
            ElevatedButton(
              onPressed: () => print('[clicked] switch to light'),
              child: const Text('Switch to light'),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                      ),
                      const Divider(),
                      Text('h1', style: Theme.of(context).textTheme.headline1),
                      Text('h2', style: Theme.of(context).textTheme.headline2),
                      Text('h3', style: Theme.of(context).textTheme.headline3),
                      Text('h4', style: Theme.of(context).textTheme.headline4),
                      Text('h5', style: Theme.of(context).textTheme.headline5),
                      Text('h6', style: Theme.of(context).textTheme.headline6),
                      const Divider(),
                      Text('body text 1',
                          style: Theme.of(context).textTheme.bodyText1),
                      Text('body text 2',
                          style: Theme.of(context).textTheme.bodyText2),
                      const Divider(),
                      Text('button text',
                          style: Theme.of(context).textTheme.button),
                      const Divider(),
                      Text('sub title 1',
                          style: Theme.of(context).textTheme.subtitle1),
                      Text('sub title 2',
                          style: Theme.of(context).textTheme.subtitle2),
                      const Divider(),
                      Text('caption',
                          style: Theme.of(context).textTheme.caption),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('[clicked] alarm pressed'),
        tooltip: 'Alarm',
        child: const Icon(Icons.alarm),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.message), label: 'Message'),
          const BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info'),
        ],
      ),
    );
  }
}
