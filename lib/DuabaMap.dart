import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';

class Location1 extends StatefulWidget {
  const Location1({Key? key}) : super(key: key);

  @override
  State<Location1> createState() => _Location1State();
}

class _Location1State extends State<Location1> {
  String googleApikey = "AIzaSyCMzydBgkIhD0fupc0qgcrQ_If-Os8UQjg";
  GoogleMapController? mapController; //controller for Google map
  CameraPosition? cameraPosition;
  LatLng startLocation = LatLng(30.6972397, 76.6896764);
  String location = "Search Location";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body: Stack(
            children:[

              GoogleMap(
                zoomGesturesEnabled: true,
                initialCameraPosition: CameraPosition(
                  target: startLocation,
                  zoom: 14.0,
                ),
                mapType: MapType.normal,
                onMapCreated: (controller) {
                  setState(() {
                    mapController = controller;
                  });
                },
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(90, 68, 0, 0),
                  child: Text('Select Your Location',
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: Colors.black ),
                  )
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 35.0),
                  child: SvgPicture.asset(
                    'assets/location.svg', height: 170, width: 170,
                  ),
                ),
              ),

              Positioned(
                top:90,
                child: InkWell(
                  onTap: () async {
                    var place = await PlacesAutocomplete.show(
                        context: context,
                        apiKey: googleApikey,
                        mode: Mode.overlay,
                        types: [],
                        strictbounds: false,
                        components: [Component(Component.country, 'np')],
                        onError: (err){
                          print(err);
                        }
                    );

                    if(place != null){
                      setState(() {
                        location = place.description.toString();
                      });

                      final plist = GoogleMapsPlaces(apiKey:googleApikey,
                        apiHeaders: await GoogleApiHeaders().getHeaders(),

                      );
                      String placeid = place.placeId ?? "0";
                      final detail = await plist.getDetailsByPlaceId(placeid);
                      final geometry = detail.result.geometry!;
                      final lat = geometry.location.lat;
                      final lang = geometry.location.lng;
                      var newlatlang = LatLng(lat, lang);



                      mapController?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: newlatlang, zoom: 17)));
                    }
                  },
                  child:Padding(
                    padding: EdgeInsets.all(15),
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(10),
                          border: Border.all (color: Colors.black),

                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(0),

                        width: MediaQuery.of(context).size.width - 40,
                        child: Row(
                            children: [
                              IconButton(icon: SvgPicture.asset('assets/location.svg', height: 70, width: 200,
                              ),
                                onPressed: () {},
                              ),
                              Text(location, style: TextStyle(fontSize: 18),),
                            ]
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]
        )
    );
  }

}
