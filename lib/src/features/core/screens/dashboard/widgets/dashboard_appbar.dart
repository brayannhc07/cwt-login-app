import 'package:arqontac_app/src/constants/colors.dart';
import 'package:arqontac_app/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: secondaryColor),
      title: Text(appName, style: Theme.of(context).textTheme.headlineMedium),
      centerTitle: true,
      actions: [
        Container(
          margin: const EdgeInsets.only(
            right: 20,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: cardBgColor),
          child: IconButton(
            icon: const Icon(Icons.person_2),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
