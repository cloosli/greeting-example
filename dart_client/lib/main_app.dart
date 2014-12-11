// Copyright (c) 2014, <Christian Loosli>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:googleapis/greeting/v1.dart';
import 'package:http/browser_client.dart' show BrowserClient;

/// A Polymer `<main-app>` element.
@CustomTag('main-app')
class MainApp extends PolymerElement {

  /// Constructor used to create instance of MainApp.
  MainApp.created() : super.created();

  @observable List greetings;


  var _loadButton;

  void load(Event e) {
    greetings = null;
    _loadButton.disabled=true;
    GreetingApi api = new GreetingApi(new BrowserClient());
    api.greets.list().then((GreetingsList list) {
      //list.items.forEach((Greeting g) => addToDom(g));
      greetings = list.items;
      _loadButton.disabled=false;
    }).catchError((e) {
      querySelector('#error-message').innerHtml = e.toString();
      _loadButton.disabled=false;
    });
  }

  void addToDom(Greeting g) {
    print('g.author date: g.date.toString()');
    LIElement li = new LIElement();
    li.text = 'hallo';//g.content +', date: ' + g.date.toString();
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
  ready() {
    super.ready();
    _loadButton = shadowRoot.querySelector('#load-button');
  }
}
