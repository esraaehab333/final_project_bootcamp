import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/helpers/form_validate.dart';
import '../../../../core/widgets/my_text_form_field.dart';
import '../../logic/cubit/signup_cubit.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: BlocProvider.of<SignupCubit>(context).signUpKey,
          child: Column(
            children: [
              MyTextFormField(
                prefixIcon: Icon(Icons.person_2_outlined),
                controller: BlocProvider.of<SignupCubit>(context).signUpName,
                validator: FormValidator.validateName,
                text: "Name",
                hintText: "Enter your name",
              ),
              Gap(30.h),

              MyTextFormField(
                prefixIcon: Icon(Icons.email_outlined),
                controller: BlocProvider.of<SignupCubit>(context).signUpEmail,
                validator: FormValidator.validateEmail,
                text: "Email",
                hintText: "Enter your email",
              ),
              Gap(30.h),
              MyTextFormField(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObsecure = !isObsecure;
                    });
                  },
                  icon: isObsecure
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
                prefixIcon: Icon(Icons.lock_outline),
                isObscureText: isObsecure,
                controller: BlocProvider.of<SignupCubit>(context).signUpPassword,
                validator: FormValidator.validatePassword,
                text: "Password",
                hintText: "Enter your password",
              ),
            ],
          ),
        ),
        Gap(20.h),
      ],
    );
  }
}
