import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/text_field_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 2, child: Container()),
              // svg image
              SvgPicture.asset(
                "assets/ic_instagram.svg",
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(height: 64),
              // circular widget to accept and show our selected file
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage:
                        NetworkImage("https://images.unsplash.com/photo-1654895716780-b4664497420d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add_a_photo)),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // text field for username
              TextFieldInput(
                textEditingController: _usernameController,
                hintText: "username",
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 24),
              // text field for email
              TextFieldInput(
                textEditingController: _emailController,
                hintText: "email",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 24),
              // text field for password
              TextFieldInput(
                textEditingController: _passController,
                hintText: "password",
                isPassword: true,
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 24),
              // text field for bio
              TextFieldInput(
                textEditingController: _bioController,
                hintText: "bio",
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 24),
              // login button
              InkWell(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: blueColor,
                  ),
                  child: const Text("Sign up"),
                ),
              ),
              const SizedBox(height: 12),
              Flexible(flex: 2, child: Container()),
              // Transitioning to signup
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: const Text("Already have an account?"),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: const Text(
                        "Log in.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
