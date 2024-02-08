import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData iconData;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.iconData
  });
}

const List<MenuItem> appMenuItems = [
  MenuItem(title: 'Botones', subTitle: 'Varios botones en Flutter', link: '/buttons', iconData: Icons.smart_button_outlined),
  MenuItem(title: 'Tarjetas', subTitle: 'Un contenedor estilizado', link: '/cards', iconData: Icons.credit_card),
];