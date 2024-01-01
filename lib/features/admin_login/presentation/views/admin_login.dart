import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/assets_gen/assets.gen.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/core/component/custom_text_form_filed/custom_text_form_field.dart';
import 'package:trucks/core/enums/const_enums.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';
import 'package:trucks/features/admin_login/presentation/controller/admin_login_cubit/admin_login_cubit.dart';
import 'package:trucks/features/admin_login/presentation/widgets/admin_login_listner_widget.dart';

import 'package:trucks/features/choose_login_type/presentation/views/choose_login_type.dart';

class AdminLoginView extends HookWidget {
  const AdminLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    const AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

    final ValueNotifier<bool> isPassword = useState(true);

    final TextEditingController nameController = useTextEditingController();

    final TextEditingController passwordController = useTextEditingController();

    return Scaffold(
      body: FormBuilder(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 8.h,
                  ),
                  child: SizedBox(
                    height: 300.h,
                    child: MyAssets.images.logo360.image(),
                  ),
                ),
                CustomTextFormField(
                  textFieldName: 'kota',
                  textEditingController: nameController,
                  keyboardType: TextInputType.name,
                  suffixIcon: const Icon(Icons.person),
                  hint: "أسم المستخدم",
                  title: "أسم المستخدم",
                  textDirection: TextDirection.rtl,
                  onChanged: (String? val) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'يجب ادخال قيمة';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextFormField(
                  textFieldName: 'bota',
                  title: "كلمة المرور",
                  errorColor: Colors.red,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'يجب ادخال كلمة المرور';
                    }
                    return null;
                  },
                  onChanged: (data) {},
                  textEditingController: passwordController,
                  textDirection: TextDirection.ltr,
                  isPassword: isPassword,
                  keyboardType: TextInputType.visiblePassword,
                  hint: "كلمة المرور",
                  suffixIcon: const Icon(Icons.lock),
                  prefixIcon: IconButton(
                    onPressed: () {
                      isPassword.value = !isPassword.value;
                    },
                    icon: Icon(
                      isPassword.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
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
                  onTap: () {
                    if (formKey.currentState!.saveAndValidate()) {
                      context.read<AdminLoginCubit>().login(
                            requestEntity: LoginRequestEntity(
                              name: nameController.text,
                              password: passwordController.text,
                              loginType: LoginType.admin,
                            ),
                          );
                    }
                  },
                ),
                TextButton(
                  onPressed: () {
                    navigate_to(
                      context: context,
                      widget: const ChooseLoginType(),
                    );
                  },
                  child: Text(
                    'تغيير نوع تسجيل الدخول ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const AdminLoginListenerWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
