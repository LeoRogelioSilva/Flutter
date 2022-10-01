import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:trabalho01/model/user.dart';

class MontaTreino extends StatefulWidget {
  const MontaTreino({super.key});

  @override
  State<MontaTreino> createState() => CompleteFormState();
}

class CompleteFormState extends State<MontaTreino> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final User _newUser = User();
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
