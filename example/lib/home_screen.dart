import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:main_button/main_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = 400;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HeaderWidget(title: 'MainButton.icon'),
              MainButton(
                maxWidth: maxWidth,
                label: 'test',
                onPressed: () => log('CustomIconButton'),
              ),
              const HeaderWidget(title: 'MainButton.icon'),
              MainButton(
                maxWidth: maxWidth,
                label: 'cancel',
                onPressed: () => log('CustomIconButton'),
              ),
              const HeaderWidget(title: 'MainButton.icon'),
              MainButton.icon(
                maxWidth: maxWidth,
                iconType: IconType.icon,
                icon: Icons.add,
                backgroundColor: Colors.red,
                label: 'test',
                onPressed: () => log('CustomIconButton'),
              ),
              const HeaderWidget(title: 'MainButton.icon'),
              MainButton.icon(
                maxWidth: maxWidth,
                iconType: IconType.icon,
                icon: Icons.add,
                textColor: Colors.red,
                borderRadius: 30,
                label: 'test',
                onPressed: () => log('CustomIconButton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.hh),
        Text(title),
        SizedBox(height: 8.hh),
      ],
    );
  }
}
