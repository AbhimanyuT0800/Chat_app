import 'package:chat_app/model/otp_sent_model.dart';
import 'package:chat_app/services/api_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sent_otp_controller.g.dart';

@riverpod
Future<OtpSentModel> sentOtpController(
  SentOtpControllerRef ref, {
  required String phn,
}) async {
  return await ApiServices().sentOtp(phn: phn);
}
