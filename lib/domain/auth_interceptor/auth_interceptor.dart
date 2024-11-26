import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/domain/storage/storage.dart';

@lazySingleton
class AuthInterceptor extends QueuedInterceptor {
  final Storage _storage;
  final LocaleProvider _localeProvider;

  AuthInterceptor(this._storage, this._localeProvider);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final String? token = _storage.token.call();
    if (token != null) {
      options.headers.addAll({
        'Authorization': 'Bearer $token',
        "Accept-languae": _localeProvider.getLocale().languageCode,

      });
    }
    handler.next(options);
  }
}

@lazySingleton
class LocaleProvider {
  Locale _locale = const Locale('uz', 'UZ');

  Locale getLocale() => _locale;

  void setLocale(Locale locale) {
    _locale = locale;
  }

  String getLanguageCode() {
  
    debugPrint("Changed also here: ${_locale.languageCode}");
    return _locale.languageCode;
  }
}
