import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_sample/main.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'fetch_album_test.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([Dio])
void main() {
  group('fetchAlbum', () {
    test('returns an Album if the http call completes successfully', () async {
      final dio = MockDio();

      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(dio.get('https://jsonplaceholder.typicode.com/albums/1')).thenAnswer(
          (_) async => Response(
                data: {"userId": 1, "id": 2, "title": "mock"},
                statusCode: 200,
                requestOptions: RequestOptions(path: ''),
              ));

      expect(await fetchAlbum(dio), isA<Album>());
    });

    test('throws an exception if the http call completes with an error', () {
      final dio = MockDio();

      // Use Mockito to return an unsuccessful response when it calls the
      // provided http.Client.
      when(dio.get('https://jsonplaceholder.typicode.com/albums/1'))
          .thenAnswer((_) async => Response(
                data: 'Not Found',
                statusCode: 404,
                requestOptions: RequestOptions(path: ''),
              ));

      expect(fetchAlbum(dio), throwsException);
    });
  });

}

// httpで書いた場合
// void main() {
//   group('fetchAlbum', () {
//   test('returns an Album if the http call completes successfully', () async {
//     final client = MockClient();
//     // Use Mockito to return a successful response when it calls the
//     // provided http.Client.
//     when(client
//             .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
//         .thenAnswer((_) async =>
//             http.Response('{"userId": 1, "id": 2, "title": "mock"}', 200));
//     expect(await fetchAlbum(client), isA<Album>());
//   });
//   test('throws an exception if the http call completes with an error', () {
//     final client = MockClient();
//     // Use Mockito to return an unsuccessful response when it calls the
//     // provided http.Client.
//     when(client
//             .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
//         .thenAnswer((_) async => http.Response('Not Found', 404));
//     expect(fetchAlbum(client), throwsException);
//   });
// });
// }
  
  
  

  
  
  
  
  
  

  
  

  
  

  
  
  
  
  

  
  
  
  
