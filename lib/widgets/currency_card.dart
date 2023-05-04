import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final Color decoColor;
  final String money;
  final String number;
  final String nation;
  final IconData moneyIcon;

  const CurrencyCard(
      {super.key,
      required this.decoColor,
      required this.money,
      required this.number,
      required this.nation,
      required this.moneyIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge, //위젯의 밖으로 overflow 한 것들에 대해서 어떻게 처리할지 정함.
      decoration: BoxDecoration(
        color: decoColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 30,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              money,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  number,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  nation,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 12),
                )
              ],
            )
          ]),
          Transform.scale(
            //내부 위젯의 크기를 다른 위젯에 구애받지 않고 커지게함
            //크기가 큰 아이콘을 생성하지만 다른 위젯의 크기가 변하지 않게 하기 위해서 사용함
            scale: 2.2,
            child: Transform.translate(
              //내부 위젯의 위치를 다른 위젯에 영행을 받지 않고 움직이게함
              offset: const Offset(
                3,
                9,
              ), //x좌표와 y 좌표를 지정해서 아이콘을 움직임
              child: Icon(
                moneyIcon,
                color: Colors.white,
                size: 90,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
