import 'package:flutter/material.dart';
import 'appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.menu),
              title: Text('Page title'),
              actions: [
                Icon(Icons.favorite),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.search),
                ),
                Icon(Icons.more_vert),
              ],
              backgroundColor: Colors.purple,
            ),
            body: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20.0,),
                  Text('모달구현할곳',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),),
                  DefaultTabController(
                      length: 2,
                      initialIndex: 0,
                      child:
                  Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        child: TabBar(
                          labelColor: Colors.green,
                          unselectedLabelColor: Colors.lightBlue,
                          tabs: [
                            Tab(text: '내 주식'),
                            Tab(text: '오늘의 발견'),
                          ],
                        ),
                      ),
                      Container(
                        height: 400, // 탭바뷰 높이
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                      ),
                        child: TabBarView( //화면전환시
                          children: [
                            Container(
                              child: Center(
                                child: Text('page 1'),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text('page 2'),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  ),
                ],
              ),
            ), //모달미구현(stack)
            bottomNavigationBar: NavigationExample(), // 탭하면 화면전환 미구현
        ),
      ),
    );
  }
}
