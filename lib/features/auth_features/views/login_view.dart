import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/login_auth_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.s20),
          child: LoginAuthViewBody(),
        ),
      ),
    );
  }
}
