import 'package:flutter/material.dart';

import '../utils/enum/theme_way.dart';

class ThemePopupMenu extends StatelessWidget {
  const ThemePopupMenu({
    super.key,
    required this.themingWay,
    required this.onChanged,
  });
  final ThemingWay themingWay;
  final ValueChanged<ThemingWay> onChanged;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ThemingWay>(
      icon: const Icon(Icons.more_vert),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      tooltip: 'Theming way',
      padding: const EdgeInsets.all(10),
      onSelected: onChanged,
      constraints: const BoxConstraints(maxWidth: 490),
      itemBuilder: (BuildContext context) => <PopupMenuItem<ThemingWay>>[
        for (ThemingWay item in ThemingWay.values)
          PopupMenuItem<ThemingWay>(
            value: item,
            child: ListTile(
              dense: true,
              title: Text(item.describe),
            ),
          )
      ],
    );
  }
}
