import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/signUp/data/models/sign_up_request_body.dart';
import 'package:doctor_appointment/feature/signUp/data/repos/sign_up_repo.dart';
import 'package:doctor_appointment/feature/signUp/presentation/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.signUpRepo) : super(SignupState.initial());
  final SignUpRepo signUpRepo;
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  TextEditingController? passwordConfirmationController =
      TextEditingController();
  TextEditingController? nameController = TextEditingController();
  TextEditingController? phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitSignupState() async {
    emit(const SignupState.signupLoading());
    final response = await signUpRepo.signup(
      SignupRequestBody(
        name: nameController!.text,
        email: emailController!.text,
        password: passwordController!.text,
        phone: phoneController!.text,
        passwordConfirmation: passwordConfirmationController!.text,
        gender: 0,
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignupState.signupSucess(signupResponse));
      },
      failure: (apiErroeModel) {
        emit(SignupState.signupError(apiErroeModel));
      },
    );
  }
}
