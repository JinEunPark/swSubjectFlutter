import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  //Cupertino = apple style
  //Material = google style
  @override //statelessWidget은 build method 를 구현해야함 widget을 리턴함.
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //앱의 뼈대
        backgroundColor: const Color(0xFF181818), //색상 수동 지정
        body: SingleChildScrollView(
          child: Padding(
            //패딩 위젯으로 감쌈
            padding: const EdgeInsets.symmetric(
                horizontal: 30), //all, symmetric 지정 방향으로 적용!! 모든 방향으로 패딩을 적용!!
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //컬럼의 mianAxis = 세로 CrossAxis = 가로 Row 는 반대로 적용!!!
              //새로로 위젯을 위치하기 위해서 만듦
              children: [
                const SizedBox(
                  //제일 상단의 공간을 만들어서 내려올 수 있게 만듦
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end, // 내부를 오른쪽 끝에 위치함.
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.end, //글자 Text 위젯을 정렬
                      children: [
                        const Text(
                          "Hey, Selena",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold, //글자 굵게
                          ), //글자의 색을 변경함.
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  //command + '.' 을 누르면 코드 액션이 생겨난다.
                  height: 10,
                ),
                Text(
                  '\$123123', //변수가 아니라고 명시함 \을 사용해서
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, //두개의 컨테이너 사이에 공간을 만듦
                  children: const [
                    Button(
                        text: 'Transfer',
                        bgColor: Colors.amber,
                        textColor: Colors.black), //custom widget
                    Button(
                        text: "Request",
                        bgColor: Colors.white,
                        textColor: Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, //양쪽으로 붙어서 정렬되게 만듦
                  crossAxisAlignment: CrossAxisAlignment
                      .end, //아래쪽으로 붙게 정렬 row() 에서는 main 이 수직 cross 가 가로이다.
                  children: [
                    const Text(
                      "Wallets",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                            .withOpacity(0.8), //이 함수를 사용하면 부모리스트가 const 이면 안됨
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                    decoColor: Colors.orange,
                    money: 'Dollars',
                    number: '9 999',
                    nation: 'USD',
                    moneyIcon: Icons.money_off_sharp),
                const CurrencyCard(
                    decoColor: Colors.redAccent,
                    money: 'WON',
                    number: '9 999',
                    nation: 'KOR',
                    moneyIcon: Icons.currency_bitcoin),
                const CurrencyCard(
                    decoColor: Colors.blueAccent,
                    money: 'Euro',
                    number: '9 234',
                    nation: 'URO',
                    moneyIcon: Icons.euro_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
