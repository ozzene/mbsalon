// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_webservice/places.dart';
// import 'package:google_maps_webservice/directions.dart' as gmaps_ws;
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';

// class MapScreen extends StatefulWidget {
//   const MapScreen({Key? key}) : super(key: key);

//   @override
//   MapScreenState createState() => MapScreenState();
// }

// class MapScreenState extends State<MapScreen> {
//   GoogleMapController? _controller;
//   final Map<MarkerId, Marker> _markers = {};
//   final Set<Polyline> _polylines = {};
//   final TextEditingController _searchController = TextEditingController();
//   final TextEditingController _originController = TextEditingController();
//   final TextEditingController _destinationController = TextEditingController();
//   LatLng _initialPosition = const LatLng(0, 0);
//   int _markerIdCounter = 1;
//   int _polylineIdCounter = 1;
//   static const String _mapStyle = '''
// [
//    {
//     "featureType": "water",
//     "stylers": [
//       { "saturation": -80 }
//     ]
//   },{
//     "featureType": "poi",
//     "stylers": [
//       { "visibility": "off" }
//     ]
//   },{
//     "featureType": "landscape.man_made",
//     "stylers": [
//       { "visibility": "off" }
//     ]
//   },{
//     "featureType": "landscape.natural",
//     "stylers": [
//       { "saturation": -50 }
//     ]
//   },{
//     "featureType": "road",
//     "stylers": [
//       { "saturation": -100 },
//       { "gamma": 2.29 }
//     ]
//   },{
//     "featureType": "transit",
//     "elementType": "labels.text",
//     "stylers": [
//       { "saturation": -100 },
//       { "gamma": 2.29 }
//     ]
//   },{
//     "featureType": "transit",
//     "elementType": "labels.icon",
//     "stylers": [
//       { "saturation": -100 },
//       { "gamma": 0.95 }
//     ]
//   }
// ]

// ''';

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   Future<void> _getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       return Future.error('Location services are disabled.');
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         return Future.error('Location permissions are denied');
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       return Future.error('Location permissions are permanently denied');
//     }

//     try {
//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high,
//       );
//       setState(() {
//         _initialPosition = LatLng(position.latitude, position.longitude);
//         _controller?.animateCamera(CameraUpdate.newLatLng(_initialPosition));

//         // Add a marker for the current location
//         _markers[const MarkerId('current_location')] = Marker(
//           markerId: const MarkerId('current_location'),
//           position: _initialPosition,
//           icon: BitmapDescriptor.defaultMarkerWithHue(
//               BitmapDescriptor.hueBlue), // Change to your custom icon if needed
//           infoWindow: const InfoWindow(title: 'Current Location'),
//         );
//       });
//     } catch (e) {
//       // Handle the error
//     }
//   }

//   void _onMapCreated(GoogleMapController controller) {
//     _controller = controller;
//     _controller!.setMapStyle(_mapStyle);
//   }

//   void _addMarker(LatLng position, {String? title, String? snippet}) {
//     final String markerIdVal = 'marker_$_markerIdCounter';
//     _markerIdCounter++;
//     final MarkerId markerId = MarkerId(markerIdVal);

//     final Marker marker = Marker(
//       markerId: markerId,
//       position: position,
//       infoWindow: InfoWindow(title: title ?? "Custom Place", snippet: snippet),
//       draggable: true,
//       onTap: () => _showMarkerDialog(markerId),
//       onDragEnd: (LatLng newPosition) {
//         _updateMarkerPosition(markerId, newPosition);
//       },
//     );

//     setState(() {
//       _markers[markerId] = marker;
//     });
//   }

//   void _showMarkerDialog(MarkerId markerId) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         String name = _markers[markerId]!.infoWindow.title ?? '';
//         String phone = _markers[markerId]!.infoWindow.snippet ?? '';
//         return AlertDialog(
//           title: const Text('Edit Marker'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 decoration: const InputDecoration(labelText: 'Name'),
//                 onChanged: (value) => name = value,
//                 controller: TextEditingController(text: name),
//               ),
//               TextField(
//                 decoration: const InputDecoration(labelText: 'Phone'),
//                 onChanged: (value) => phone = value,
//                 controller: TextEditingController(text: phone),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               child: const Text('Delete'),
//               onPressed: () {
//                 _deleteMarker(markerId);
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: const Text('Save'),
//               onPressed: () {
//                 _updateMarkerInfo(markerId, name, phone);
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _updateMarkerInfo(MarkerId markerId, String name, String phone) {
//     setState(() {
//       final updatedMarker = _markers[markerId]!.copyWith(
//         infoWindowParam: InfoWindow(title: name, snippet: phone),
//       );
//       _markers[markerId] = updatedMarker;
//     });
//   }

//   void _deleteMarker(MarkerId markerId) {
//     setState(() {
//       _markers.remove(markerId);
//     });
//   }

//   void _updateMarkerPosition(MarkerId markerId, LatLng newPosition) {
//     setState(() {
//       final updatedMarker =
//           _markers[markerId]!.copyWith(positionParam: newPosition);
//       _markers[markerId] = updatedMarker;
//     });
//   }

//   void _animatePolyline(List<LatLng> points) async {
//     final String polylineIdVal = 'polyline_$_polylineIdCounter';
//     _polylineIdCounter++;
//     final PolylineId polylineId = PolylineId(polylineIdVal);

//     for (int i = 0; i < points.length; i++) {
//       await Future.delayed(const Duration(milliseconds: 100));
//       setState(() {
//         _polylines.add(Polyline(
//           polylineId: polylineId,
//           points: points.sublist(0, i + 1),
//           color: const Color.fromARGB(255, 243, 33, 33),
//           width: 5,
//         ));
//       });
//     }
//   }

//   void _drawRoute(LatLng origin, LatLng destination) async {
//     final apiKey = await MapUtils().getApiKey();

//     if (apiKey == null) {
//       return;
//     }

//     final directions = gmaps_ws.GoogleMapsDirections(apiKey: apiKey);
//     final response = await directions.directionsWithLocation(
//       gmaps_ws.Location(lat: origin.latitude, lng: origin.longitude),
//       gmaps_ws.Location(lat: destination.latitude, lng: destination.longitude),
//     );

//     if (response.isOkay) {
//       final route = response.routes.first;
//       final points =
//           PolylinePoints().decodePolyline(route.overviewPolyline.points);
//       final latLngPoints = points
//           .map((point) => LatLng(point.latitude, point.longitude))
//           .toList();

//       _animatePolyline(latLngPoints);
//     }
//   }

//   void _search() async {
//     final apiKey = await MapUtils().getApiKey();

//     if (apiKey == null) {
//       return;
//     }

//     final places = GoogleMapsPlaces(apiKey: apiKey);
//     final response = await places.searchByText(_searchController.text);

//     if (response.isOkay) {
//       final location = response.results.first.geometry!.location;
//       final placeLatLng = LatLng(location.lat, location.lng);
//       _controller?.animateCamera(CameraUpdate.newLatLng(placeLatLng));
//       _addMarker(placeLatLng, title: response.results.first.name);
//     }
//   }

//   void _searchDirections() async {
//     final apiKey = await MapUtils().getApiKey();

//     if (apiKey == null) {
//       return;
//     }

//     final places = GoogleMapsPlaces(apiKey: apiKey);
//     final originResponse = await places.searchByText(_originController.text);
//     final destinationResponse =
//         await places.searchByText(_destinationController.text);

//     if (originResponse.isOkay && destinationResponse.isOkay) {
//       final origin = originResponse.results.first.geometry!.location;
//       final destination = destinationResponse.results.first.geometry!.location;

//       final originLatLng = LatLng(origin.lat, origin.lng);
//       final destinationLatLng = LatLng(destination.lat, destination.lng);

//       _addMarker(originLatLng, title: 'Origin');
//       _addMarker(destinationLatLng, title: 'Destination');
//       _drawRoute(originLatLng, destinationLatLng);

//       _controller?.animateCamera(CameraUpdate.newLatLngBounds(
//         LatLngBounds(southwest: originLatLng, northeast: destinationLatLng),
//         100.0,
//       ));
//     }
//   }

//   void _clearSession() {
//     setState(() {
//       _markers.clear();
//       _polylines.clear();
//       _originController.clear();
//       _destinationController.clear();
//       _searchController.clear();
//       _polylineIdCounter = 1;
//       _markerIdCounter = 1;
//     });
//   }

//   bool _showDirectionsInput = false;

//   void _toggleDirectionsInput() {
//     setState(() {
//       _showDirectionsInput = !_showDirectionsInput;
//     });
//   }

//   void _adjustZoomToShowMarkers() {
//     if (_markers.isNotEmpty) {
//       LatLngBounds bounds;
//       final List<LatLng> markerLatLngs =
//           _markers.values.map((marker) => marker.position).toList();

//       if (markerLatLngs.length == 1) {
//         bounds = LatLngBounds(
//           southwest: markerLatLngs.first,
//           northeast: markerLatLngs.first,
//         );
//       } else {
//         final southwestLat = markerLatLngs
//             .map((e) => e.latitude)
//             .reduce((a, b) => a < b ? a : b);
//         final northeastLat = markerLatLngs
//             .map((e) => e.latitude)
//             .reduce((a, b) => a > b ? a : b);
//         final southwestLng = markerLatLngs
//             .map((e) => e.longitude)
//             .reduce((a, b) => a < b ? a : b);
//         final northeastLng = markerLatLngs
//             .map((e) => e.longitude)
//             .reduce((a, b) => a > b ? a : b);

//         bounds = LatLngBounds(
//           southwest: LatLng(southwestLat, southwestLng),
//           northeast: LatLng(northeastLat, northeastLng),
//         );
//       }

//       _controller?.animateCamera(CameraUpdate.newLatLngBounds(bounds, 100.0));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           GoogleMap(
//             onMapCreated: _onMapCreated,
//             initialCameraPosition: CameraPosition(
//               target: _initialPosition,
//               zoom: 14.0,
//             ),
//             markers: Set<Marker>.of(_markers.values),
//             polylines: _polylines,
//             zoomControlsEnabled: false,
//             onTap: (LatLng position) {
//               _addMarker(position);
//               FocusScope.of(context).unfocus();
//               _toggleDirectionsInput();
//               _adjustZoomToShowMarkers();
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.all(30),
//             child: Container(
//               width: double.infinity,
//               height: 50,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(25),
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 5,
//                     offset: Offset(0, 2),
//                   ),
//                 ],
//               ),
//               padding: const EdgeInsets.symmetric(horizontal: 14.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       controller: _searchController,
//                       decoration: InputDecoration(
//                         hintText: 'Search for a place',
//                         border: InputBorder.none,
//                         suffixIcon: IconButton(
//                           icon: const Icon(Icons.search, color: Colors.grey),
//                           onPressed: _search,
//                         ),
//                       ),
//                     ),
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.directions, color: Colors.blue),
//                     onPressed: _toggleDirectionsInput,
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.my_location, color: Colors.blue),
//                     onPressed: _getCurrentLocation,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           if (_showDirectionsInput)
//             Padding(
//               padding: const EdgeInsets.only(top: 80, right: 12, left: 12),
//               child: Container(
//                 width: double.infinity,
//                 height: 150,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(0, 255, 255, 255),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 padding: const EdgeInsets.all(8.0),
//                 child: Stack(
//                   children: [
//                     Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: TextField(
//                             controller: _originController,
//                             decoration: InputDecoration(
//                               hintText: 'Origin',
//                               hintStyle: TextStyle(color: Colors.grey[600]),
//                               filled: true,
//                               fillColor:
//                                   const Color.fromARGB(205, 255, 255, 255),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(25.0),
//                                 borderSide: BorderSide.none,
//                               ),
//                               contentPadding: const EdgeInsets.symmetric(
//                                   vertical: 8.0, horizontal: 16.0),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(25.0),
//                                 borderSide: const BorderSide(
//                                   color: Colors.transparent,
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(25.0),
//                                 borderSide: const BorderSide(
//                                   color: Colors.transparent,
//                                 ),
//                               ),
//                             ),
//                             style: const TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               shadows: [
//                                 Shadow(
//                                   color: Colors.black26,
//                                   offset: Offset(0, 1),
//                                   blurRadius: 5,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: TextField(
//                             controller: _destinationController,
//                             decoration: InputDecoration(
//                               hintText: 'Destination',
//                               hintStyle: TextStyle(color: Colors.grey[600]),
//                               filled: true,
//                               fillColor:
//                                   const Color.fromARGB(205, 255, 255, 255),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(25.0),
//                                 borderSide: BorderSide.none,
//                               ),
//                               contentPadding: const EdgeInsets.symmetric(
//                                   vertical: 8.0, horizontal: 16.0),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(25.0),
//                                 borderSide: const BorderSide(
//                                   color: Colors.transparent,
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(25.0),
//                                 borderSide: const BorderSide(
//                                   color: Colors.transparent,
//                                 ),
//                               ),
//                             ),
//                             style: const TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               shadows: [
//                                 Shadow(
//                                   color: Colors.black26,
//                                   offset: Offset(0, 1),
//                                   blurRadius: 5,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 60, 10, 0),
//                       child: Align(
//                         alignment: Alignment.centerRight,
//                         child: IconButton(
//                           icon:
//                               const Icon(Icons.directions, color: Colors.blue),
//                           onPressed: _searchDirections,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _clearSession,
//         tooltip: 'Clear Session',
//         backgroundColor: Colors.blueGrey[900],
//         child: const Icon(Icons.refresh),
//       ),
//     );
//   }
// }
