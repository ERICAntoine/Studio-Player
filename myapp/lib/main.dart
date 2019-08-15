// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:myapp/screens/Login/login.dart';
import 'screens/Home/home.dart';

void main() => runApp(new MaterialApp(
  initialRoute: "/",
  routes: {
    "/": (context) => Home(),
    "/login": (context) => Login(),
  }
));
