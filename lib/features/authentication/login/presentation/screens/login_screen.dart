import 'package:flutter/material.dart';
import 'package:task_manager_app/core/di/index.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_request_entity.dart';
import 'package:task_manager_app/features/authentication/login/domain/use_case/user_login_use_case.dart';
import 'package:task_manager_app/features/authentication/login/presentation/bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(di<UserLoginUseCase>()),
      child: Scaffold(
        body: BlocBuilder<LoginBloc, LoginState>(
          builder: (BuildContext context, state) {
            return ElevatedButton(
                onPressed: () => context.read<LoginBloc>().add(
                      LoginEvent.loginStarted(
                        requestEntity: LoginRequestEntity(
                            userName: 'mohamedalsiny@gmail.com',
                            password: '123456789'),
                      ),
                    ),
                child: Text('Login Now'));
          },
        ),
      ),
    );
  }
}
