import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/styles.dart';

Widget DefaultButton({
  double height = 35,
  double containerheight = 30,
  double fontsize = 20,
  double width = double.infinity,
  Color color = Colors.blue,
  Color textcolor = Colors.white,
  Color bordercolor = Colors.transparent,
  required VoidCallback function,
  double radius = 10,
  required String text,
  bool uppercase = true,
}) =>
    Container(
      height: containerheight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: bordercolor),
        color: color,
      ),
      width: width,
      child: MaterialButton(
        onPressed: function,
        height: height,
        child: Text(
          uppercase ? text.toUpperCase() : text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontsize,
            color: textcolor,
          ),
        ),
      ),
    );

Widget DefaultFormField({
  required TextEditingController? controller,
  TextInputType texttype = TextInputType.emailAddress,
  IconData? prefixicon,
  IconData? sufixicon,
  @required String? label,
  String Function(String?)? validate,
  bool password = false,
  int maxlines = 1,
  double? container_height,
  double? container_width,
  VoidCallback? suffixbutton,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: texttype,
      obscureText: password,
      maxLines: maxlines,
      decoration: InputDecoration(
// hintText: 'Email Address',
        prefixIcon: Icon(prefixicon),
        suffixIcon: IconButton(
          onPressed: suffixbutton,
          icon: Icon(
            sufixicon,
          ),
        ),
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: validate,
    );

Widget taskslist({required Map items}) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            child: Text(
              '${items['time']}',
              style: const TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${items['title']}',
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '${items['date']}',
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );

void navigate_to({required BuildContext context, required Widget widget}) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateandfinish({
  required BuildContext context,
  required Widget widget,
}) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (contex) => widget),
    (route) => false,
  ).then((value) {});
}

Widget formFieldWithContainer({
  Color? containerColor,
  double radius = 20,
  IconData prefxicon = Icons.lock,
  required String? text,
  required TextEditingController? controller,
  VoidCallback? ontap,
  Function(String?)? onsubmit,
}) =>
    Container(
      decoration: BoxDecoration(
        color: containerColor ?? Colors.grey.withOpacity(.2),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: TextFormField(
          onTap: ontap,
          onFieldSubmitted: onsubmit,
          controller: controller,
          textAlign: TextAlign.right,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          decoration: InputDecoration(
            prefixIcon: Icon(prefxicon),
            border: InputBorder.none,
            hintText: text,
          ),
        ),
      ),
    );

void showSnackBar(BuildContext context, String message) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
/*
Future<void> launchurl({required String address}) async {
  final Uri url = Uri.parse(address);
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
}
*/
void dialogMessage({
  required BuildContext context,
  required String subject,
  required String firstbutton,
  required String secondbutton,
  void Function()? firstfunction,
  void Function()? secondfunction,
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      contentPadding: EdgeInsets.all(15.h),
      backgroundColor: Colors.white,
      title: Text(
        subject,
        style: Styles.textStyle24,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
      actions: [
        Row(
          children: [
            TextButton(
              onPressed: secondfunction,
              child: Text(
                secondbutton,
                style:
                    Styles.textStyle24.copyWith(color: const Color(0xFFFF0000)),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: firstfunction,
              child: Text(
                firstbutton,
                style: Styles.textStyle24,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
//------------------------------------------------------------------------------

Widget CustomTextFormFieldWithTitle({
  @required TextEditingController? controller,
  required TextInputType? type,
  @required String? hint,
  required String? title,
  Color? titleColor = Colors.black,
  required TextDirection textDirection,
  Widget? prefixIcon,
  String? prefixText,
  Widget? suffixIcon,
  @required Function(String)? onChange,
  Color? errorColor,
  bool ispassword = false,
  bool isEnabled = true,
  required String? Function(String?)? validation,
}) {
  return Column(
    children: [
      Row(
        textDirection: TextDirection.rtl,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(
              title!,
              style: Styles.textStyle20.copyWith(
                color: titleColor,
              ),
            ),
          ),
        ],
      ),
      TextFormField(
        enabled: isEnabled,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 21.sp,
        ),
        textDirection: textDirection,
        obscureText: ispassword,
        onChanged: onChange,
        controller: controller,
        validator: validation,
        keyboardType: type,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 17.h),
          //  contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          errorStyle: TextStyle(
            color: errorColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          hintStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          hintTextDirection: TextDirection.rtl,
          prefixText: prefixText,
          prefixStyle: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color(0xffFFAA36),
              width: 2.w,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color(0xffFFAA36),
              width: 2.w,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color(0xffFFAA36),
              width: 2.w,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color(0xffFFAA36),
              width: 2.w,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
      ),
    ],
  );
}

//-----------------------------------------------------------------------
class CustomButon extends StatelessWidget {
  const CustomButon({
    this.onTap,
    required this.text,
    this.height,
    this.width,
    this.isLoading= false,
    required this.buttonColor,
    required this.textColor,
  });

  final VoidCallback? onTap;
  final String text;
  final  bool? isLoading ;
  final  Color buttonColor;
  final   Color textColor;
  final   double? height;
  final   double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: width, // MediaQuery.of(context).size.width * 0.4,
        height: height,
        child: Center(
          child: isLoading!
              ? const CircularProgressIndicator()
              : Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25.sp,
                    color: textColor,
                  ),
                ),
        ),
      ),
    );
  }
}

//-----------------------------------------------------------------------

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.logo,
    required this.icon,
    this.onPressed,
  });

  final String logo;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIcon(
            onPressed: onPressed,
            icon: icon,
          ),
          Image.asset(
            height: 90.h,
            width: 100.w,
            logo,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});

  final void Function()? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        color: Colors.white,
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
