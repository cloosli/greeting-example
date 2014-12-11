library googleapis.greeting.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/greeting/v1.dart' as api;



core.int buildCounterGreeting = 0;
buildGreeting() {
  var o = new api.Greeting();
  buildCounterGreeting++;
  if (buildCounterGreeting < 3) {
    o.author = "foo";
    o.content = "foo";
    o.date = core.DateTime.parse("2002-02-27T14:01:02");
    o.id = "foo";
  }
  buildCounterGreeting--;
  return o;
}

checkGreeting(api.Greeting o) {
  buildCounterGreeting++;
  if (buildCounterGreeting < 3) {
    unittest.expect(o.author, unittest.equals('foo'));
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.date, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterGreeting--;
}

core.int buildCounterGreetingReq = 0;
buildGreetingReq() {
  var o = new api.GreetingReq();
  buildCounterGreetingReq++;
  if (buildCounterGreetingReq < 3) {
    o.Author = "foo";
    o.Content = "foo";
  }
  buildCounterGreetingReq--;
  return o;
}

checkGreetingReq(api.GreetingReq o) {
  buildCounterGreetingReq++;
  if (buildCounterGreetingReq < 3) {
    unittest.expect(o.Author, unittest.equals('foo'));
    unittest.expect(o.Content, unittest.equals('foo'));
  }
  buildCounterGreetingReq--;
}

buildUnnamed0() {
  var o = new core.List<api.Greeting>();
  o.add(buildGreeting());
  o.add(buildGreeting());
  return o;
}

checkUnnamed0(core.List<api.Greeting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGreeting(o[0]);
  checkGreeting(o[1]);
}

core.int buildCounterGreetingsList = 0;
buildGreetingsList() {
  var o = new api.GreetingsList();
  buildCounterGreetingsList++;
  if (buildCounterGreetingsList < 3) {
    o.items = buildUnnamed0();
  }
  buildCounterGreetingsList--;
  return o;
}

checkGreetingsList(api.GreetingsList o) {
  buildCounterGreetingsList++;
  if (buildCounterGreetingsList < 3) {
    checkUnnamed0(o.items);
  }
  buildCounterGreetingsList--;
}


main() {
  unittest.group("obj-schema-Greeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildGreeting();
      var od = new api.Greeting.fromJson(o.toJson());
      checkGreeting(od);
    });
  });


  unittest.group("obj-schema-GreetingReq", () {
    unittest.test("to-json--from-json", () {
      var o = buildGreetingReq();
      var od = new api.GreetingReq.fromJson(o.toJson());
      checkGreetingReq(od);
    });
  });


  unittest.group("obj-schema-GreetingsList", () {
    unittest.test("to-json--from-json", () {
      var o = buildGreetingsList();
      var od = new api.GreetingsList.fromJson(o.toJson());
      checkGreetingsList(od);
    });
  });


  unittest.group("resource-GreetsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
      api.GreetsResourceApi res = new api.GreetingApi(mock).greets;
      var arg_request = buildGreetingReq();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.GreetingReq.fromJson(json);
        checkGreetingReq(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("greeting/v1/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("greetings"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGreeting());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.Greeting response) {
        checkGreeting(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.GreetsResourceApi res = new api.GreetingApi(mock).greets;
      var arg_limit = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("greeting/v1/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("greetings"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["limit"].first), unittest.equals(arg_limit));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGreetingsList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(limit: arg_limit).then(unittest.expectAsync(((api.GreetingsList response) {
        checkGreetingsList(response);
      })));
    });

  });


}

