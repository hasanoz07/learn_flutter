import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:learn_flutter/services/horoscope_model.dart';

abstract class IHoroscopeService {
  Future<List<HoroscopeModel>?> fetchReletadHoroscopeDaily(String horoscope);
}

class HoroscopeService implements IHoroscopeService {
  final Dio _networkManager;
  HoroscopeService() : _networkManager = Dio(BaseOptions(baseUrl: "https://burc-yorumlari.herokuapp.com/get/"));
  @override


  Future<List<HoroscopeModel>?> fetchReletadHoroscopeDaily(String horoscope) async {
    try {
      final response = await _networkManager.get(horoscope);
      final _data = response.data;
      if (response.statusCode == HttpStatus.ok) {
        if (_data is List) {
          return _data.map((e) => HoroscopeModel.fromJson(e)).toList();
        } else {
          return null;
        }
      }
    } on DioError catch (error) {
      _showDebug.showDioError(error, this);
    }
    return null;
  }
  
  }

enum _HoroscopeServicePath { ikizler, oglak,akrep, }

class _showDebug {
  static void showDioError<T>(DioError error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
    }
  }
}

