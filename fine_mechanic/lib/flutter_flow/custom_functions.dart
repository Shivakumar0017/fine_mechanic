import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

LatLng getUsersLocation(LatLng userLocation) {
  if (userLocation == null ||
      (userLocation.latitude == 0 && userLocation.longitude == 0)) {
    return LatLng(13.067439, 80.237617);
  }
  return userLocation;
}
