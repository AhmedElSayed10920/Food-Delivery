import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/sign_up_auth_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.s20),
        child: SignUpAuthBody(),
      ),
    );
  }
}
