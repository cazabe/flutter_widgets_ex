import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});
  static const name = 'ui_controls_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  bool wantsBreackfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  Transportation selectedTransportation = Transportation.car;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) {
            isDeveloper = !isDeveloper;
          },
        ),
        ExpansionTile(
          title: const Text('Vehiculo de trasporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('Buy car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transportation.car;
                },
              ),
            ),
            RadioListTile(
              title: const Text('Buy airplane'),
              subtitle: const Text('Viajar por avion'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transportation.plane;
                },
              ),
            ),
            RadioListTile(
              title: const Text('Buy submarine'),
              subtitle: const Text('Viajar por csubmarino'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transportation.submarine;
                },
              ),
            ),
            RadioListTile(
              title: const Text('Buy boat'),
              subtitle: const Text('Viajar por barco'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transportation.boat;
                },
              ),
            ),
          ],
        ),
        //todo
        CheckboxListTile(
          title: const Text('Desayunbo?'),
          value: wantsBreackfast,
          onChanged: (value) => setState(
            () {
              wantsBreackfast = !wantsBreackfast;
            },
          ),
        ),

        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsBreackfast,
          onChanged: (value) => setState(
            () {
              wantsLunch = !wantsLunch;
            },
          ),
        ),

        CheckboxListTile(
          title: const Text('Cena?'),
          value: wantsBreackfast,
          onChanged: (value) => setState(
            () {
              wantsDinner = !wantsDinner;
            },
          ),
        ),
      ],
    );
  }
}
