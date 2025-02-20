import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';

dynamic generateMessages(List messages) {
  List<Map<String, String>> msgs = [];
  messages.forEach((element) {
    msgs.add({"role": element.role, "content": element.message});
  });

  // msgs.add({"role": "user", "content": newMessage});

  return jsonEncode(msgs);
}
