import 'package:flutter/material.dart';
import 'package:profit/core/assets/assets.gen.dart';
import 'package:profit/core/components/buttons.dart';
import 'package:profit/core/components/custom_text_field.dart';
import 'package:profit/core/constant/colors.dart';
import 'package:profit/core/extensions/build_context_ext.dart';
import 'package:profit/presentation/authentication/pages/register_page.dart';
import 'package:profit/presentation/home/pages/dashboard_page.dart';

import '../widgets/hello_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
          const HelloText(),
          const Text(
            "Log in to your account to continue ",
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
              fontWeight: FontWeight.w700,
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
              fontWeight: FontWeight.w700,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 8),
          CustomTextField(
            controller: passwordController,
            label: "Password",
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
            onPressed: () {
              context.push(const DashboardPage());
            },
            label: "Login",
            height: 57,
          ),
          const SizedBox(height: 12),
          InkWell(
            onTap: () {
              context.push(const RegisterPage());
            },
            child: const Text(
              "Don't have an account yet? Sign Up",
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
