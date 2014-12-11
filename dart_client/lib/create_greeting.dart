// Copyright (c) 2014, <Christian Loosli>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import'dart:html';
import 'package:polymer/polymer.dart';
import 'package:googleapis/greeting/v1.dart';
import 'package:http/browser_client.dart' show BrowserClient;

/// A Polymer `<create-greeting>` element.
@CustomTag('create-greeting')
class CreateGreeting extends PolymerElement {
  @observable String author = '';
  @observable String content = '';

  /// Constructor used to create instance of MainApp.
  CreateGreeting.created() : super.created();

  void create(Event e) {

    GreetingReq req = new GreetingReq.fromJson({'Author':author,'Content':content});
    GreetingApi api = new GreetingApi(new BrowserClient());
    api.greets.create(req).then((Greeting g){
      print(g);
    }).catchError(error);

  }

  void error(e) {
    querySelector('#error-message')
        ..hidden=false
        ..text=e.toString();
  }
  // Optional lifecycle methods - uncomment if needed.

//  /// Called when an instance of main-app is inserted into the DOM.
//  attached() {
//    super.attached();
//  }

//  /// Called when an instance of main-app is removed from the DOM.
//  detached() {
//    super.detached();
//  }

//  /// Called when an attribute (such as a class) of an instance of
//  /// main-app is added, changed, or removed.
//  attributeChanged(String name, String oldValue, String newValue) {
//    super.attributeChanges(name, oldValue, newValue);
//  }

//  /// Called when main-app has been fully prepared (Shadow DOM created,
//  /// property observers set up, event listeners attached).
//  ready() {
//    super.ready();
//  }
}
