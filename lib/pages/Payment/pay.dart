import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 20, right: 317),
                child: Icon(Icons.arrow_back_ios),
              ),
              Center(
                child: Container(
                  height: size.height * 0.8,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        )
                      ]
                    // color: Colors.red
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Container(
                        height: 90,
                        width: double.infinity,
                        foregroundDecoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("img/kuzuastore.png"))),
                      ),
                      Text(
                        "Pembayaran Tagihan",
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Jumlah Tagihan",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Rp 50.000",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Divider(
                        height: 20,
                        thickness: 1.5,
                        indent: 22,
                        endIndent: 22,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Bayar Menggunakan",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Container(
                            width:35 ,
                            height: 35,
                            foregroundDecoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("img/dana.jpg"))
                            ),
                          )],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Text("No Handphone"),
                          ),
                          SizedBox(
                            height: size.height * 0.1,
                            width: size.width * 0.8,
                            child: TextField(
                              cursorColor: Color(0xff108DE9),
                              style: TextStyle(
                                  color: Colors.white), // Input text color
                              decoration: InputDecoration(
                                hintText: "+62",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.white), // Border color
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: Colors.grey), // Focused border color
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Text("Password"),
                          ),
                          SizedBox(
                            height: size.height * 0.1,
                            width: size.width * 0.8,
                            child: TextField(
                              cursorColor:Color(0xff108DE9),
                              style: TextStyle(
                                  color: Colors.white), // Input text color
                              decoration: InputDecoration(
                                hintText: "Masukkan Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: Colors.white), // Border color
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.grey), // Focused border color
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Container(
                        width: size.width * 0.8,
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:Color(0xff108DE9),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)
                                )),
                            child:Text("Bayar",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),) ),
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
