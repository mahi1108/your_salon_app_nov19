import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:progress_dialog/progress_dialog.dart';

import 'Login.dart';

 class AppConstants
{
   static String current_locale = "";
   static bool registration_status = false;

   static String getValue(String key)
   {
     String value = "";
     if(AppConstants.current_locale == "en_US")
     {
          switch(key){
            case "1":
              value = "Your Salon";
              break;
            case "2":
              value = "Username";
              break;
            case "3":
              value = "Username should be EMAIL ID";
              break;
            case "4":
              value = "Password";
              break;
            case "5":
              value = "Password should be >= 6 characters";
              break;
            case "6":
              value = "Login";
              break;
            case "7":
              value = "New User?";
              break;
            case "8":
              value = "Forgot Credentials?";
              break;
            case "9":
              value = "Salon";
              break;
            case "10":
              value = "Business Women";
              break;
            case "11":
              value = "Business Guest";
              break;
            case "12":
              value = "Customer";
              break;
            case "13":
              value = "Makeup";
              break;
            case "14":
              value = "Hair Styles";
              break;
            case "15":
              value = "Body Care";
              break;
            case "16":
              value = "Hair Treatment";
              break;
            case "17":
              value = "Henna Design";
              break;
            case "18":
              value = "Western Bath";
              break;
            case "19":
              value = "Haircut";
              break;
            case "20":
              value = "Wax";
              break;
            case "21":
              value = "Eyebrows";
              break;
            case "22":
              value = "Massage";
              break;
            case "23":
              value = "Hair Protein";
              break;
            case "24":
              value = "Photography";
              break;
            case "25":
              value = "Mobile Number";
              break;
            case "26":
              value = "Mobile number should be only number";
              break;
            case "27":
              value = "Select City";
              break;
            case "28":
              value = "City should be a part of KSA";
              break;
            case "29":
              value = "Select Location";
              break;
            case "30":
              value = "Location should be a part of KSA";
              break;
            case "31":
              value = "Continue";
              break;
            case "32":
              value = "Select services available at your salon";
              break;
            case "33":
              value = "Select the picture of commercial registration";
              break;
            case "34":
              value = "Select the profile picture";
              break;
            case "35":
              value = "Upload Picture";
              break;
            case "36":
              value = "Submit";
              break;
            case "37":
              value = "Select the picture of identity card";
              break;
            case "38":
              value = "Next";
              break;
            case "39":
              value = "Close";
              break;
            case "40":
              value = "Message";
              break;
            case "41":
              value = "User creation is failed, please try with different user name";
              break;
            case "42":
              value = "Please provide valid username / password. ";
              break;
            case "43":
              value = "Something went wrong, May be user is not exist. ";
              break;
            case "44":
              value = "Your Registration, Payment verification is already done. ";
              break;
            case "45":
              value = "Your Registration is done, please upload the payment receipt for payment verification.";
              break;
            case "46":
              value = "Your Registration is done, Request is sent for verification.";
              break;
            case "47":
              value = "Payment receipt upload is in progress.";
              break;
          }
     }

     if(AppConstants.current_locale == "ar_SA")
     {
       switch(key){
         case "1":
           value = "صالون الخاص بك";
           break;
         case "2":
           value = "اسم المستخدم";
           break;
         case "3":
           value = "يجب أن يكون اسم المستخدم معرف البريد الإلكتروني";
           break;
         case "4":
           value = "كلمه السر";
           break;
         case "5":
           value = "يجب أن تكون كلمة المرور> = 6 أحرف";
           break;
         case "6":
           value = "تسجيل الدخول";
           break;
         case "7":
           value = "مستخدم جديد؟";
           break;
         case "8":
           value = "هل نسيت بيانات الاعتماد؟";
           break;
         case "9":
           value = "صالون";
           break;
         case "10":
           value = "سيدة اعمال";
           break;
         case "11":
           value = "ضيف الأعمال";
           break;
         case "12":
           value = "زبون";
           break;
         case "13":
           value = "ميك أب";
           break;
         case "14":
           value = "تسريحات الشعر";
           break;
         case "15":
           value = "العناية بالجسم";
           break;
         case "16":
           value = "علاج الشعر";
           break;
         case "17":
           value = "تصميم الحناء";
           break;
         case "18":
           value = "حمام الغربية";
           break;
         case "19":
           value = "حلاقة شعر";
           break;
         case "20":
           value = "الشمع";
           break;
         case "21":
           value = "الحاجبين";
           break;
         case "22":
           value = "تدليك";
           break;
         case "23":
           value = "بروتين الشعر";
           break;
         case "24":
           value = "التصوير";
           break;
         case "25":
           value = "رقم الهاتف المحمول";
           break;
         case "26":
           value = "يجب أن يكون رقم الجوال هو الرقم الوحيد";
           break;
         case "27":
           value = "اختر مدينة";
           break;
         case "28":
           value = "يجب أن تكون المدينة جزءًا من المملكة العربية السعودية";
           break;
         case "29":
           value = "اختر موقعا";
           break;
         case "30":
           value = "يجب أن يكون الموقع جزءًا من المملكة العربية السعودية";
           break;
         case "31":
           value = "استمر";
           break;
         case "32":
           value = "اختر الخدمات المتاحة في صالون الخاص بك";
           break;
         case "33":
           value = "حدد صورة السجل التجاري";
           break;
         case "34":
           value = "حدد صورة الملف الشخصي";
           break;
         case "35":
           value = "تحميل الصورة";
           break;
         case "36":
           value = "تقديم";
           break;
         case "37":
           value = "حدد صورة بطاقة الهوية";
           break;
         case "38":
           value = "التالى";
           break;
         case "39":
           value = "Close";
           break;
         case "40":
           value = "Message";
           break;
         case "41":
           value = "User creation is failed, please try with different user name";
           break;
         case "42":
           value = "Please provide valid username / password. ";
           break;
         case "43":
           value = "Something went wrong, May be user is not exist. ";
           break;
         case "44":
           value = "Your Registration, Payment verification is already done. ";
           break;
         case "45":
           value = "Your Registration is done, please upload the payment receipt for payment verification.";
           break;
         case "46":
           value = "Your Registration is done, Request is sent for verification.";
           break;
         case "47":
           value = "Payment receipt upload is in progress.";
           break;
       }
     }
     return value;
   }

   static void sDialog(_context,title,message) {
// flutter defined function
     showDialog(
       context: _context,
       builder: (BuildContext context) {
// return object of type Dialog
         return AlertDialog(
           title: new Text(title),
           content: new Text(message),
           actions: <Widget>[
// usually buttons at the bottom of the dialog
             new FlatButton(
               child: new Text(AppConstants.getValue("39")),
               onPressed: () {
                 Navigator.of(context).pop();
               },
             ),
           ],
         );
       },
     );
   }

   static void sDialogNew(_context,title,message) {
// flutter defined function
     showDialog(
       context: _context,
       builder: (BuildContext context) {
// return object of type Dialog
         return AlertDialog(
           title: new Text(title),
           content: new Text(message),
           actions: <Widget>[
// usually buttons at the bottom of the dialog
             new FlatButton(
               child: new Text(AppConstants.getValue("39")),
               onPressed: () {
                 // Navigator.of(context).pop();
                 Navigator.push(context,
                     MaterialPageRoute(
                         builder: (context) =>
                             Login()));
               },
             ),
           ],
         );
       },
     );
   }

   static ProgressDialog pr;

   static void getpDialog(_context,title,message)
   {
     if(pr == null){
       pr =  new ProgressDialog(_context,type: ProgressDialogType.Normal, isDismissible: true, showLogs: true);
     }
       pr.style(
         message: message,
         borderRadius: 5.0,
         backgroundColor: Colors.white,
         progressWidget: CircularProgressIndicator(
           backgroundColor: Colors.green,
         ),
         elevation: 5.0,
         insetAnimCurve: Curves.easeInOut,
         progress: 0.0,
         maxProgress: 100.0,
         progressTextStyle: TextStyle(
             color: Colors.green,
             fontSize: 15.0,
             fontWeight: FontWeight.w300),
         messageTextStyle: TextStyle(
             color: Colors.green,
             fontSize: 15.0,
             fontWeight: FontWeight.w300)
     );
        pr.show();
   }

   static void dismisspDialog(){
       // pr.dismiss();
        pr.hide();
   }

}