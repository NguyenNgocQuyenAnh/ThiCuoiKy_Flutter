import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopaoquan/Login/dangnhap.dart';

class dangky extends StatelessWidget {
  const dangky({super.key});

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
            "Đăng ký",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(height: 20,),
          // textfield họ và tên
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
                    hintText: 'Họ và tên',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          // text field email
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
                    hintText: 'Email',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
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
            SizedBox(height: 10,),
          // text field nhập lại mật khẩu
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
                    hintText: 'Nhập lại mật khẩu',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height:20,),
          // register button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(12)),
              child: Center(
                child:Text(
                  "Đăng ký",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20
                )
                ),
            )),
          ),
          SizedBox(height: 10,),
          // đăng nhập
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("Bạn đã có tài khoản ?", style: TextStyle(fontWeight: FontWeight.bold)),
                TextButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>dangnhap()));
              }
              , child:Text("đăng nhập")) 
            ],
          )
        ],
      )),
    ));
  }
}
