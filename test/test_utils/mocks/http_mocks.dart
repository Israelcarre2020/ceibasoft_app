import 'package:ceibasoft_app/core/http/data/http_proxy_impl.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpImpl extends Mock implements HttpImpl {}

class MockDio extends Mock implements Dio {}

class MockDioResponse extends Mock implements Response {}
