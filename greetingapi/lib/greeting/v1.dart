library googleapis.greeting.v1;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/** Greetings API */
class GreetingApi {

  final common_internal.ApiRequester _requester;

  GreetsResourceApi get greets => new GreetsResourceApi(_requester);

  GreetingApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://constant-wonder-789.appspot.com/_ah/api/", "greeting/v1/");
}


/** Not documented yet. */
class GreetsResourceApi {
  final common_internal.ApiRequester _requester;

  GreetsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * List most recent greetings.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Greeting].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Greeting> create(GreetingReq request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'greetings';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Greeting.fromJson(data));
  }

  /**
   * List most recent greetings.
   *
   * Request parameters:
   *
   * [limit] - null
   *
   * Completes with a [GreetingsList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<GreetingsList> list({core.int limit}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (limit != null) {
      _queryParams["limit"] = ["${limit}"];
    }


    _url = 'greetings';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GreetingsList.fromJson(data));
  }

}



/** Not documented yet. */
class Greeting {
  /** Not documented yet. */
  core.String author;

  /** Not documented yet. */
  core.String content;

  /** Not documented yet. */
  core.DateTime date;

  /** Not documented yet. */
  core.String id;


  Greeting();

  Greeting.fromJson(core.Map _json) {
    if (_json.containsKey("author")) {
      author = _json["author"];
    }
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("date")) {
      date = core.DateTime.parse(_json["date"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (author != null) {
      _json["author"] = author;
    }
    if (content != null) {
      _json["content"] = content;
    }
    if (date != null) {
      _json["date"] = (date).toIso8601String();
    }
    if (id != null) {
      _json["id"] = id;
    }
    return _json;
  }
}


/** Not documented yet. */
class GreetingReq {
  /** Not documented yet. */
  core.String Author;

  /** Not documented yet. */
  core.String Content;


  GreetingReq();

  GreetingReq.fromJson(core.Map _json) {
    if (_json.containsKey("Author")) {
      Author = _json["Author"];
    }
    if (_json.containsKey("Content")) {
      Content = _json["Content"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (Author != null) {
      _json["Author"] = Author;
    }
    if (Content != null) {
      _json["Content"] = Content;
    }
    return _json;
  }
}


/** Not documented yet. */
class GreetingsList {
  /** Not documented yet. */
  core.List<Greeting> items;


  GreetingsList();

  GreetingsList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Greeting.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


