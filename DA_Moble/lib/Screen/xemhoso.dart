import 'package:flutter/material.dart';

class xemhosoScreen extends StatefulWidget {
  const xemhosoScreen({super.key});

  @override
  State<xemhosoScreen> createState() => _xemhosoScreenPageState();
}

class _xemhosoScreenPageState extends State<xemhosoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Ho so'),
                Icon(Icons.settings),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    height: 50,
                    width: 50,
                    image: AssetImage(
                      'assets/images/language.png',
                    )),
                Text(
                  'Hồ Sơ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.orange),
                )
              ],
            ),
            Row(
              children: [
                Text('Thống kê'),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 255, 102, 0),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        OutlinedButton(
                            onPressed: () {}, child: Text('Tổng điểm KN')),
                        OutlinedButton(
                            onPressed: () {}, child: Text('Trận đã chơi')),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        OutlinedButton(
                            onPressed: () {}, child: Text('Tổng điểm KN')),
                        OutlinedButton(
                            onPressed: () {}, child: Text('Trận đã chơi')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text('Thống kê'),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 255, 102, 0),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 2, 1, 0), width: 2.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Thành tích'),
                        ),
                        OutlinedButton(
                            onPressed: () {}, child: Text('Thành tích')),
                        OutlinedButton(
                            onPressed: () {}, child: Text('Thành tích')),
                        OutlinedButton(
                            onPressed: () {}, child: Text('Thành tích')),
                        OutlinedButton(
                            onPressed: () {}, child: Text('Thành tích')),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
