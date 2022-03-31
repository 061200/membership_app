import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapSample> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(37.5519543, 127.008413);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final List<Marker> _markers = [];

  @override
  void initState() {
    super.initState();
    _markers.add(Marker(
        markerId: const MarkerId("1"),
        draggable: true,
        onTap: () => print("Marker!"),
        position: const LatLng(37.5513211, 127.0710272)));
    _markers.add(Marker(
        markerId: const MarkerId("1"),
        draggable: true,
        onTap: () => print("Marker!"),
        position: const LatLng(37.5425242, 127.0518359)));
    _markers.add(Marker(
        markerId: const MarkerId("1"),
        draggable: true,
        onTap: () => print("Marker!"),
        position: const LatLng(37.5525707, 126.9079707)));
  }

  Widget build(BuildContext context) {
    // Determining the screen width & height
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Scaffold(
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: Set.from(_markers),
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
