import 'package:convenience_types/convenience_types.dart';
import 'package:dio/dio.dart';
import 'package:capyba_day_twenty_three_test/src/sample/domain/forms/sign_in_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:capyba_day_twenty_three_test/src/shared/domain/models/api_state_model.dart';

class ApiRepository extends StateNotifier<ApiState> {
  ApiRepository({
    required Dio httpClient,
  })  : _httpClient = httpClient,
        super(const Unauthenticated());
  final Dio _httpClient;
  Future<Options> get headers async {
    return Options();
  }

  _handleErrors(
      HttpError error, DioException exception, StackTrace stackTrace) async {
    if (error is HttpUnauthorizedError) {
      state = const Unauthenticated();
    }
    if (error is HttpGoneError) {
      state = const Gone();
    }
  }

  Future<Result> delete({
    required String url,
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final Response response = await _httpClient.delete(
        url,
        data: body,
        options: await headers,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(
        HttpUnknownError(
          slug: exception.toString(),
        ),
      );
    }
  }

  Future<Result> get({
    required String url,
    Map<String, dynamic> queryParams = const {},
  }) async {
    try {
      final Response response = await _httpClient.get(
        url,
        queryParameters: queryParams,
        options: await headers,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (e) {
      return const Failure(
        HttpUnknownError(
          slug: DefaultErrorMessages.unknownError,
        ),
      );
    }
  }

  Future<Result> patch({
    required String url,
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final Response response = await _httpClient.patch(
        url,
        data: body,
        options: await headers,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(
        HttpUnknownError(
          slug: exception.toString(),
        ),
      );
    }
  }

  Future<Result> post({
    required String url,
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final Response response = await _httpClient.post(
        url,
        data: body,
        options: await headers,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(
        HttpUnknownError(
          slug: exception.toString(),
        ),
      );
    }
  }

  Future<Result> put({
    required String url,
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final Response response = await _httpClient.put(
        url,
        data: body,
        options: await headers,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(
        HttpUnknownError(
          slug: exception.toString(),
        ),
      );
    }
  }

  Future<Result<String>> signIn(SignInForm form) async {
    try {
      await Future.delayed(
        const Duration(milliseconds: 1500),
      );
      state = const Authenticated();
      return const Success("");
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(
        HttpUnknownError(
          slug: exception.toString(),
        ),
      );
    }
  }
}
