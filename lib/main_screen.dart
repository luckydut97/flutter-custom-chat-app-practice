import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // 변수 선언
  // 예: int _counter = 0;

  // 메소드 예시
  Future<void> _sendData() async {
    // 데이터 전송 로직
  }

  // 로그아웃 메소드 예시
  void _logout() {
    // 로그아웃 로직
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '메인 페이지',
          style: TextStyle(color: Colors.white), // AppBar 타이틀 글씨 색상을 흰색으로 설정
        ),
        backgroundColor: Color(0xFF27374D), // AppBar의 색상을 남색으로 설정
      ),
      body: SafeArea(
        child: Center(
          child: Text('메인 콘텐츠 영역'), // 기본적인 콘텐츠 예시
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MainScreen(),
  ));
}