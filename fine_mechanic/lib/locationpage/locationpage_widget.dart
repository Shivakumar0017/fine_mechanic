import '../backend/backend.dart';
import '../components/locationinfo_widget.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationpageWidget extends StatefulWidget {
  const LocationpageWidget({
    Key key,
    this.location,
  }) : super(key: key);

  final FinemechRecord location;

  @override
  _LocationpageWidgetState createState() => _LocationpageWidgetState();
}

class _LocationpageWidgetState extends State<LocationpageWidget> {
  LatLng googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: StreamBuilder<List<FinemechRecord>>(
                    stream: queryFinemechRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }
                      List<FinemechRecord> googleMapFinemechRecordList =
                          snapshot.data;
                      return FlutterFlowGoogleMap(
                        controller: googleMapsController,
                        onCameraIdle: (latLng) =>
                            setState(() => googleMapsCenter = latLng),
                        initialLocation: googleMapsCenter ??=
                            LatLng(12.9853, 79.9698),
                        markers: googleMapFinemechRecordList
                            .map(
                              (googleMapFinemechRecord) => FlutterFlowMarker(
                                googleMapFinemechRecord.reference.path,
                                googleMapFinemechRecord.location,
                                () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    barrierColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: Container(
                                          height: 300,
                                          child: LocationinfoWidget(
                                            location: widget.location,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            )
                            .toList(),
                        markerColor: GoogleMarkerColor.violet,
                        mapType: MapType.normal,
                        style: GoogleMapStyle.standard,
                        initialZoom: 12,
                        allowInteraction: true,
                        allowZoom: true,
                        showZoomControls: true,
                        showLocation: true,
                        showCompass: false,
                        showMapToolbar: false,
                        showTraffic: false,
                        centerMapOnMarkerTap: true,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
