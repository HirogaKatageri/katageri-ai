import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

/// A client for making HTTP requests to an API endpoint.
class SparrowHttpClient {
  /// Creates a new [SparrowHttpClient] instance.
  ///
  /// [host] is the base URL host for API requests.
  /// [parent] is an optional parent path segment, Must start with '/'.
  /// [headers] are additional HTTP headers to include with each request.
  SparrowHttpClient({
    required this.host,
    this.parent,
    this.headers = const {},
  }) {
    assert(
      parent == null || parent!.startsWith('/'),
      "Parent path must start with '/'",
    );
  }

  SparrowHttpClient.gemini({
    this.host = 'generativelanguage.googleapis.com',
    this.parent = '/v1beta/models',
    this.headers = const {HttpHeaders.contentTypeHeader: 'application/json'},
  });

  final Client client = Client();

  bool isDisposed = false;

  final String host;
  final String? parent;

  final Map<String, String> headers;

  /// Sends a POST request to the specified endpoint.
  ///
  /// [path] is the endpoint path to send the request to. Must start with '/'.
  /// [body] is the optional request body to send.
  /// [queryParams] are optional query parameters to include in the URL.
  Future<Response> post({
    required String path,
    Object? body,
    Map<String, String>? headers,
    Map<String, String>? queryParams,
  }) {
    assert(path.startsWith('/'), "Path must start with '/'");

    final url = Uri.https(host, '$parent$path', queryParams);

    return client.post(
      url,
      headers: {...this.headers, ...?headers},
      body: jsonEncode(body),
    );
  }

  void dispose() {
    client.close();
    isDisposed = true;
  }
}
