import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData iconData;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.iconData});
}

const List<MenuItem> appMenuItems = [
  MenuItem(
      title: 'Riverpod Counters',
      subTitle: 'Contadores',
      link: '/counter',
      iconData: Icons.add),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      iconData: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      iconData: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      iconData: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y Dialogs',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      iconData: Icons.info_outline_rounded),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'Stateful Widget animado',
      link: '/animated',
      iconData: Icons.check_box_outline_blank),
  MenuItem(
      title: 'UI Controls + Tiles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      iconData: Icons.car_rental_sharp),
  MenuItem(
      title: 'App Tutorial',
      subTitle: 'Introduccion a la aplicacion',
      link: '/tutorial',
      iconData: Icons.accessibility_new_rounded),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subTitle: 'Listas infinitas y pull to refresh',
      link: '/infinite',
      iconData: Icons.list_rounded),
];
