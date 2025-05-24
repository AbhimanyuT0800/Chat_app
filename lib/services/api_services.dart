import 'dart:developer';

import 'package:chat_app/core/constants/app_urls.dart';
import 'package:chat_app/core/exceptions/base_exception.dart';
import 'package:chat_app/model/otp_sent_model.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio = Dio(BaseOptions(baseUrl: AppUrls.baseUrl));

  Future<OtpSentModel> sentOtp({required String phn}) async {
    log(phn);
    try {
      final response = await _dio.post(
        AppUrls.sendOtpUrl,
        data: {
          "data": {
            "type": "registration_otp_codes",
            "attributes": {"phone": phn},
          },
        },
      );

      if (response.statusCode == 200) {
        return OtpSentModel.fromJson(response.data);
      } else {
        throw BaseException(
          message: 'Something went wrong... statusCode: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw BaseException(message: 'Something went wrong... ${e.toString()}');
    }
  }
}
