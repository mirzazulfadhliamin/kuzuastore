import 'package:flutter/material.dart';

import 'package:kuzuastore/pages/home/model.dart'; // Sesuaikan dengan path yang benar

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu),
        title: Container(
          margin: EdgeInsets.only(left: 30),
          child: Image.asset(
            "assets/image/logoo.png",
            width: 150,
            height: 100,
            alignment: Alignment.center,
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 10), child: Icon(Icons.diamond))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color(int.parse("0xFF3EC8BF"))),
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Image.asset("assets/image/kupon.png"),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.bottomCenter,
                height: height * 0.6168,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(
                  children: [
                    Expanded(
                      flex: 14,
                      child: GridView.builder(
                        itemCount: items.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          // Gantilah bagian ini dengan pembuatan widget untuk setiap item di dalam GridView
                          return GridTile(
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5.0),
                                      topRight: Radius.circular(5.0),
                                    ),
                                    child: Image.asset(
                                      items[index].imageUrl,
                                      fit: BoxFit.cover,
                                      width: height * 0.138,
                                    ),
                                  ),
                                  Container(
                                    width: width * 0.245,
                                    height: height * 0.03,
                                    decoration: BoxDecoration(
                                        color: Color(int.parse("0xFF3EC8BF")),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5))),
                                    child: Text(
                                      items[index].title,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: (Text("More")),
                            style: ElevatedButton.styleFrom(
                                primary: Color(int.parse("0xFF3EC8BF")),
                                onPrimary: Colors.white,
                                minimumSize: Size(100, 70)),
                          ),
                        ))
                  ],
                ))
          ]),
        ),
      )),
    );
  }
}
