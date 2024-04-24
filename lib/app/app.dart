import 'package:flutter/material.dart';

import '../presentation/button_view.dart';
import '../presentation/color_scheme_view.dart';
import '../presentation/home_screen.dart';
import '../presentation/input_view.dart';
import '../presentation/text_theme_view.dart';
import '../presentation/theme_popup_menu.dart';
import '../utils/enum/theme_way.dart';

class NsThemeApp extends StatefulWidget {
  const NsThemeApp({super.key});

  @override
  State<NsThemeApp> createState() => _NsThemeAppState();
}

class _NsThemeAppState extends State<NsThemeApp> {
  ThemeMode themeMode = ThemeMode.light;
  ThemingWay themingWay = ThemingWay.road10;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: themingWay.theme(Brightness.light, true),
      darkTheme: themingWay.theme(Brightness.dark, true),
      themeAnimationDuration: const Duration(
        seconds: 1,
      ),
      themeAnimationStyle: AnimationStyle(
        curve: Curves.bounceIn,
        duration: const Duration(seconds: 1),
      ),
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Vikings Theme Dive ${themingWay.index + 1}'),
            actions: <Widget>[
              IconButton(
                icon: themeMode == ThemeMode.dark
                    ? const Icon(Icons.wb_sunny_outlined)
                    : const Icon(Icons.wb_sunny),
                onPressed: () {
                  setState(() {
                    if (themeMode == ThemeMode.light) {
                      themeMode = ThemeMode.dark;
                    } else {
                      themeMode = ThemeMode.light;
                    }
                  });
                },
                tooltip: 'Toggle brightness',
              ),
              ThemePopupMenu(
                themingWay: themingWay,
                onChanged: (ThemingWay value) {
                  setState(() {
                    themingWay = value;
                  });
                },
              ),
            ],
          ),
          body: IndexedStack(
            index: _selectedIndex,
            children: const [
              ColorSchemeView(),
              TextThemeView(),
              ButtonView(),
              InputView(),
              ThemeShowcase(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Theme.of(context).colorScheme.primaryContainer,
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.color_lens),
                label: 'Colors',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.text_fields),
                label: 'Text',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.window),
                label: 'Button',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.input_outlined),
                label: 'Input',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.open_in_new_off),
                label: 'Switch',
              ),
            ],
          ),
        );
      }),
    );
  }
}
