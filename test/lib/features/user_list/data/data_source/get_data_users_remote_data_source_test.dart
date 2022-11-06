import 'package:ceibasoft_app/features/users_list/data/data_source/get_data_users_remote_data_source.dart';
import 'package:ceibasoft_app/features/users_list/domain/entities/post_model.dart';
import 'package:ceibasoft_app/features/users_list/domain/entities/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../test_utils/constants.dart';
import '../../../../../test_utils/fake_responses/users_post_fake_responses.dart';
import '../../../../../test_utils/mocks/http_mocks.dart';

void main() {
  late GetDataUsersRemoteDatasource remoteDataSource;
  late MockHttpImpl httpClient;
  late Dio dio;
  late Response response;
  const requestUlr = 'https://fakeurl.com';

  setUp(() {
    dio = MockDio();
    response = MockDioResponse();
    httpClient = MockHttpImpl();

    remoteDataSource =
        GetDataUsersRemoteDatasource(httpClient, requestUlr, requestUlr);
  });

  group('Obtener datos de API', () {
    test('Obtener todos los pots de remoto, No Debe lanzar ninguna excepción',
        () async {
      when(() => httpClient.instance()).thenReturn(dio);
      when(() => response.statusCode).thenReturn(200);
      when(() => response.data).thenReturn(allPostsFakeResponse);
      when(() => dio.get(any())).thenAnswer((_) async => response);

      final result = await remoteDataSource.getAllPosts();

      expect(result[0], isA<PostModel>());
    });

    test(
        'Obtener todos los usuarios de remoto, No Debe lanzar ninguna excepción',
        () async {
      when(() => httpClient.instance()).thenReturn(dio);
      when(() => response.statusCode).thenReturn(200);
      when(() => response.data).thenReturn(allUsersFakeResponse);
      when(() => dio.get(any())).thenAnswer((_) async => response);

      final result = await remoteDataSource.getUsers();

      expect(result[0], isA<UserModel>());
    });

    test('Debe lanzar una excepción de DIO al obtener los posts', () async {
      when(() => httpClient.instance()).thenReturn(dio);
      when(() => response.statusCode).thenReturn(404);
      when(() => response.statusMessage).thenReturn(dioErrorMessage_404);
      when(() => dio.get(any(that: isNotNull))).thenThrow(DioError(
        response: response,
        error: response.statusMessage,
        requestOptions: RequestOptions(path: ''),
      ));

      try {
        await remoteDataSource.getAllPosts();
      } catch (e) {
        expect(
          e,
          isA<DioError>(),
        );
      }
    });

    test('Debe lanzar una excepción de DIO al obtener los users', () async {
      when(() => httpClient.instance()).thenReturn(dio);
      when(() => response.statusCode).thenReturn(404);
      when(() => response.statusMessage).thenReturn(dioErrorMessage_404);
      when(() => dio.get(any(that: isNotNull))).thenThrow(DioError(
        response: response,
        error: response.statusMessage,
        requestOptions: RequestOptions(path: ''),
      ));

      try {
        await remoteDataSource.getUsers();
      } catch (e) {
        expect(
          e,
          isA<DioError>(),
        );
      }
    });
  });
}
