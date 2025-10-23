import 'package:doctor_appointment/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;

  const factory SignupState.signupLoading() = SignupLoading;
  const factory SignupState.signupSucess(T data) = SignupSucess<T>;
  const factory SignupState.signupError(ApiErrorModel apiErroeModel) =
      SignupError;
}
