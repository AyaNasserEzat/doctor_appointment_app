import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/login/data/models/login_request_body.dart';
import 'package:doctor_appointment/feature/login/data/repos/login_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_appointment/feature/login/prsentation/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginState.initial());
  final LoginRepo loginRepo;
  TextEditingController? emailController = TextEditingController();
  TextEditingController? nameController = TextEditingController();
  void emitLoginState() async {
    final response = await loginRepo.login(
      LoginRequestBody(
        email: emailController!.text,
        password: nameController!.text,
      ),
    );
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.message ?? ''));
      },
    );
  }
}
