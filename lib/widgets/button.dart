import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  //custom widget 을 만들기 위해서 색상과 글자를 변경 가능하도록 만들어야함
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    //build method 반드시 구현해야함.
    return Container(
      //컨테이너 위젯으로 다른 위젯을 넣는데 사용함
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        //패딩을 추가함...
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30,
        ),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: textColor), //원래는 const 였지만 변수가 들어가기 때문에 const 면 안됨
        ),
      ),
    );
  }
}
