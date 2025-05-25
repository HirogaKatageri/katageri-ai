// This is a generated file; do not edit or check into version control.
// Mock of SparrowHttpClient for testing using Mockito.

import 'dart:async' as _i3;

import 'package:http/http.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:sparrow_clients/src/utils/http_client.dart' as _i4;

// ignore: must_be_immutable
class MockSparrowHttpClient extends _i1.Mock implements _i4.SparrowHttpClient {
  MockSparrowHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get host => (super.noSuchMethod(
        Invocation.getter(#host),
        returnValue: '',
      ) as String);
  
  @override
  String? get parent => (super.noSuchMethod(
        Invocation.getter(#parent),
        returnValue: '',
      ) as String?);
  
  @override
  Map<String, String> get headers => (super.noSuchMethod(
        Invocation.getter(#headers),
        returnValue: <String, String>{},
      ) as Map<String, String>);
  
  @override
  bool get isDisposed => (super.noSuchMethod(
        Invocation.getter(#isDisposed),
        returnValue: false,
      ) as bool);
  
  @override
  _i3.Future<_i2.Response> post({
    required String? path,
    Object? body,
    Map<String, String>? headers,
    Map<String, String>? queryParams,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [],
          {
            #path: path,
            #body: body,
            #headers: headers,
            #queryParams: queryParams,
          },
        ),
        returnValue: _i3.Future<_i2.Response>.value(_i2.Response('', 200)),
      ) as _i3.Future<_i2.Response>);
  
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}