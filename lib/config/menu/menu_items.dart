import 'package:flutter/material.dart';

class MenuItem {
  final String tittle;
  final String subtittle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.tittle,
      required this.subtittle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      tittle: 'botones',
      subtittle: 'Varios botones',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      tittle: 'Tarjetas',
      subtittle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      tittle: 'ProgressIndicators',
      subtittle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.credit_card),
  MenuItem(
      tittle: 'SnackBars y dialogos',
      subtittle: 'Indiocadores en pantallas',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      tittle: 'Animated Container ',
      subtittle: 'Statefull widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank),
  MenuItem(
      tittle: 'Ui controls',
      subtittle: 'Serie de controles de flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      tittle: 'App tutorial',
      subtittle: 'Tutorial flutter',
      link: '/tutorial',
      icon: Icons.car_rental_outlined),
];
