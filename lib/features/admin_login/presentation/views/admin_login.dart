import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/features/admin_screen/presentation/views/admin_home.dart';

import '../../../choose_login_type/presentation/views/choose_login_type.dart';

class AdminLoginView extends StatefulWidget {
  const AdminLoginView({super.key});
  @override
  State<AdminLoginView> createState() => _AdminLoginViewState();
}

class _AdminLoginViewState extends State<AdminLoginView> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  var formkey = GlobalKey<FormState>();
  bool isPassword = true;
  String? email, password;

  TextEditingController? nameController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        autovalidateMode: autovalidateMode,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: SizedBox(
                    height: 300.h,
                    child: Image.asset(
                      'assets/images/logo 360.png',
                    ),
                  ),
                ),
                CustomTextFormFieldWithTitle(
                  controller: nameController,
                  type: TextInputType.name,
                  suffixIcon: const Icon(Icons.person),
                  hint: "أسم المستخدم",
                  title: "أسم المستخدم",
                  textDirection: TextDirection.rtl,
                  onChange: (String val) {},
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'يجب ادخال قيمة ';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextFormFieldWithTitle(
                  title: "كلمة المرور",
                  titleColor: Colors.black,
                  errorColor: Colors.red,
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'يجب ادخال كلمة المرور';
                    }
                    return null;
                  },
                  onChange: (data) {
                    password = data;
                  },
                  controller: passwordController,
                  textDirection: TextDirection.ltr,
                  ispassword: isPassword,
                  type: TextInputType.visiblePassword,
                  hint: "كلمة المرور",
                  suffixIcon: const Icon(Icons.lock),
                  prefixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    icon: Icon(
                        isPassword ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButon(
                  height: 65.h,
                  width: 230.w,
                  textColor: Colors.black,
                  buttonColor: const Color(0xffFFAA36),
                  text: 'تسجيل الدخول',
                  isLoading: false,
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      navigateandfinish(
                          context: context, widget: const AdminHome());
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                ),
                TextButton(
                  onPressed: () {
                    navigate_to(
                        context: context, widget: const ChooseLoginType());
                  },
                  child: Text(
                    'تغيير نوع تسجيل الدخول ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
