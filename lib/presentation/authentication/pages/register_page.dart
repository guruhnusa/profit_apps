import 'package:flutter/material.dart';
import 'package:profit/core/extensions/build_context_ext.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/constant/colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primary,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        children: [
          SizedBox(
            height: context.deviceWidth * 0.2,
            width: context.deviceWidth * 0.2,
            child: Image.asset(
              Assets.images.logo.logo.path,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Create an Account",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: AppColors.primary),
            textAlign: TextAlign.center,
          ),
          const Text(
            "let's create an account to explore further in our app",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: AppColors.tertiary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          const Text(
            "Email",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 8),
          CustomTextField(
            controller: emailController,
            label: "Email",
            obscureText: false,
          ),
          const SizedBox(height: 20),
          const Text(
            "Password",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 8),
          CustomTextField(
            controller: passwordController,
            label: "Password",
            obscureText: true,
          ),
          const SizedBox(height: 20),
          const Text(
            "Confirm Password",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 8),
          CustomTextField(
            controller: confirmPasswordController,
            label: "Confirm Password",
            obscureText: true,
          ),
          const SizedBox(height: 12),
          const Text(
            "Forgot your Password?",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF0F172A),
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 20),
          Button.filled(
            onPressed: () {},
            label: "Register",
            height: 57,
          ),
          const SizedBox(height: 12),
          InkWell(
            onTap: () {
              context.pop();
            },
            child: const Text(
              "Already have an account? Login",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
