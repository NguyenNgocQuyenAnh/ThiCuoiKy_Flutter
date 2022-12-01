import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:shopaoquan/Login/dangky.dart';
class dangnhap extends StatelessWidget {
  const dangnhap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.deepOrange[100],
        body: SafeArea(
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // text chào
          Text(
            "Welcome",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
           Lottie.network('https://assets4.lottiefiles.com/packages/lf20_gn0tojcq.json'),
          SizedBox(height: 20,),
          // textfield tên đăng nhập
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Tên đăng nhập',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          // textfield mật khẩu
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: TextField(
                   obscureText: true,
                   decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Mật khẩu',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height:20,),
          // sign button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(12)),
              child: Center(
                child:Text(
                  "Đăng nhập",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20
                )
                ),
            )),
          ),
          SizedBox(height: 10,),
          // not a  member ? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bạn chưa có tài khoản ?", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>dangky()));
              }
              , child:Text("đăng ký")) 
            ],
          )
        ],
      )),
    ));
  }
}
