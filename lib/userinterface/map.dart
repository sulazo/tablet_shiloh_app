/*

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
 // Completer<GoogleMapController> _controller = Completer();
  //GoogleMapController _controller;

   List<Marker> markers=[];

  @override
  void initState() {
    super.initState();
     markers.add(Marker(
      markerId:MarkerId('shiloh'),
       onTap:(){},
      draggable:false,

       infoWindow: InfoWindow(title: 'Shiloh Christian Church',snippet: "693 Saybrook Rd,Middletown,CT"),
       icon:BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            position:LatLng(41.537539,-72.618288),
    ));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowAltCircleLeft, color: Color(0xff8b0000)
            ),
            onPressed: () {
              Navigator.pop(context);
              //
            }),
        title: Text(
          "Shiloh Christian Church",
          style: TextStyle(color: Color(0xff8b0000)),
        ),

      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: _buildGoogleMap(context),
      ),
    );
  }


  Widget _buildGoogleMap(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              //height:300 ,//MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                    target: LatLng(41.537539, -72.618288), zoom: 12),
               // onMapCreated: mapCreated,
                markers: Set.from(markers),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,

              //  height:200,//MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  "images/address.png",
                ),
              )),
            ),
          )
        ]);
  }

 */
/*  mapCreated(controller) {
    setState(() {
      _controller= controller;

    });
 }*//*


}


*/
