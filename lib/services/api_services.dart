import 'package:chat_app/core/constants/app_urls.dart';
import 'package:chat_app/core/exceptions/base_exception.dart';
import 'package:chat_app/model/otp_sent_model.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio = Dio(BaseOptions(baseUrl: AppUrls.baseUrl));

  Future<OtpSentModel> getWallpapers({required String phn}) async {
    try {
      Response response = await _dio.get(
        AppUrls.sendOtpUrl,
        data: {
          {
            "type": "registration_otp_codes",
            "attributes": {"phone": phn},
          },
        },
      );
      // response is success return OtpSentModel class
      if (response.statusCode == 200) {
        return OtpSentModel.fromJson(response.data);
      } else {
        // any error shows throw base exception
        throw BaseException(
          message: 'Somthing Went wrong... statusCode : ${response.statusCode}',
        );
      }
    } catch (e) {
      throw BaseException(message: 'Somthing Went wrong..... !${e.toString()}');
    }
  }
}
