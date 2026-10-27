import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // singlechildscrollview => child => column => children
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // yahan se containers start hoon
              Row(
                //// 1st row with 1st and 2nd conts
                children: [
                  Expanded(
                    child: // ------------------- 1st Cont Start -----------------------------
                    Container(
                      padding: EdgeInsets.all(22),
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.pink,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        // bottom aur right pr agr box shadow dena ho tu?
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/gnocchi.jpg'),
                          opacity: 0.5, // opacity agr 50 % rakhni ho tu
                        ), // i think ye bgimage ka code hi nae hai
                        border: Border.all(color: Colors.red, width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 127, 69, 48),
                            spreadRadius: 2,
                            blurRadius: 8,
                            // blurStyle: BlurStyle.outer,
                            offset: Offset(6, 6),
                          ),
                        ],
                      ),
                      // alignment: Alignment.topLeft, // ye b apply nae ho raha
                      child: Column(
                        // main container pr background image lagana chahta hoon
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // me chahta hoon neechay tamaam text widgets aik hi border k ander aa jaen, aur me chahta hoon text alignment start pr aa jae
                          Text(
                            'this is pink box text',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'this is weight text',
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'this is joining_family text',
                            style: TextStyle(
                              fontFamily: 'JoinHandwriting',
                              fontSize: 30, // kesay add krun fontsize
                              color: Colors.white,
                            ), // flutter has monospace only by default
                          ),
                          Text(
                            'this is separate_family text',
                            style: TextStyle(
                              fontFamily: 'SepHandwriting',
                              fontSize: 30, // kesay add krun fontsize
                              color: Colors.white,
                            ), // flutter has monospace only by default
                          ),
                          Text(
                            'this is size text',
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                            ), // want font size 45 px but how?
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ------------------- 1st Cont End -----------------------------),
                  Expanded(
                    child: // ------------------- 2nd Cont Start -----------------------------
                    Container(
                      padding: EdgeInsets.all(22),
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        // bottom aur right pr agr box shadow dena ho tu?
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/gnocchi.jpg'),
                          opacity: 0.5, // opacity agr 50 % rakhni ho tu
                        ), // i think ye bgimage ka code hi nae hai
                        border: Border.all(color: Colors.red, width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 127, 69, 48),
                            spreadRadius: 2,
                            blurRadius: 8,
                            // blurStyle: BlurStyle.outer,
                            offset: Offset(6, 6),
                          ),
                        ],
                      ),
                      // alignment: Alignment.topLeft, // ye b apply nae ho raha
                      child: Column(
                        // main container pr background image lagana chahta hoon
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // me chahta hoon neechay tamaam text widgets aik hi border k ander aa jaen, aur me chahta hoon text alignment start pr aa jae
                          Text(
                            'this is purple box text',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'this is weight text',
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'this is joining_family text',
                            style: TextStyle(
                              fontFamily: 'JoinHandwriting',
                              fontSize: 30, // kesay add krun fontsize
                              color: Colors.white,
                            ), // flutter has monospace only by default
                          ),
                          Text(
                            'this is separate_family text',
                            style: TextStyle(
                              fontFamily: 'SepHandwriting',
                              fontSize: 30, // kesay add krun fontsize
                              color: Colors.white,
                            ), // flutter has monospace only by default
                          ),
                          Text(
                            'this is size text',
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                            ), // want font size 45 px but how?
                          ),
                        ],
                      ),
                    ),
                    // ----------------------- 2nd Cont End -------------------------
                  ),
                ],
              ),
              Row(
                //// 2nd row with 3rd and 4th conts
                children: [
                  Expanded(
                    child: // ------------------- 3rd Cont Start -----------------------------
                    Container(
                      padding: EdgeInsets.all(22),
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        // bottom aur right pr agr box shadow dena ho tu?
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1605804097616-ed12e891e514?q=80&w=1032&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
                          ),
                          opacity: 0.5, // opacity agr 50 % rakhni ho tu
                        ), // i think ye bgimage ka code hi nae hai
                        border: Border.all(color: Colors.red, width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 127, 69, 48),
                            spreadRadius: 2,
                            blurRadius: 8,
                            // blurStyle: BlurStyle.outer,
                            offset: Offset(6, 6),
                          ),
                        ],
                      ),
                      // alignment: Alignment.topLeft, // ye b apply nae ho raha
                      child: Column(
                        // main container pr background image lagana chahta hoon
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // me chahta hoon neechay tamaam text widgets aik hi border k ander aa jaen, aur me chahta hoon text alignment start pr aa jae
                          Text(
                            'this is orange box text',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'this is weight text',
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'this is joining_family text',
                            style: TextStyle(
                              fontFamily: 'JoinHandwriting',
                              fontSize: 30, // kesay add krun fontsize
                              color: Colors.white,
                            ), // flutter has monospace only by default
                          ),
                          Text(
                            'this is separate_family text',
                            style: TextStyle(
                              fontFamily: 'SepHandwriting',
                              fontSize: 30, // kesay add krun fontsize
                              color: Colors.white,
                            ), // flutter has monospace only by default
                          ),
                          Text(
                            'this is size text',
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                            ), // want font size 45 px but how?
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ------------------- 3rd Cont End -----------------------------),
                  Expanded(
                    child: // ------------------- 4th Cont Start -----------------------------
                    Container(
                      padding: EdgeInsets.all(22),
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        // bottom aur right pr agr box shadow dena ho tu?
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1605804097616-ed12e891e514?q=80&w=1032&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
                          ),
                          opacity: 0.5, // opacity agr 50 % rakhni ho tu
                        ), // i think ye bgimage ka code hi nae hai
                        border: Border.all(color: Colors.red, width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 127, 69, 48),
                            spreadRadius: 2,
                            blurRadius: 8,
                            // blurStyle: BlurStyle.outer,
                            offset: Offset(6, 6),
                          ),
                        ],
                      ),
                      // alignment: Alignment.topLeft, // ye b apply nae ho raha
                      child: Column(
                        // main container pr background image lagana chahta hoon
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // me chahta hoon neechay tamaam text widgets aik hi border k ander aa jaen, aur me chahta hoon text alignment start pr aa jae
                          Text(
                            'this is blue box text',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'this is weight text',
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'this is joining_family text',
                            style: TextStyle(
                              fontFamily: 'JoinHandwriting',
                              fontSize: 30, // kesay add krun fontsize
                              color: Colors.white,
                            ), // flutter has monospace only by default
                          ),
                          Text(
                            'this is separate_family text',
                            style: TextStyle(
                              fontFamily: 'SepHandwriting',
                              fontSize: 30, // kesay add krun fontsize
                              color: Colors.white,
                            ), // flutter has monospace only by default
                          ),
                          Text(
                            'this is very size text',
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                            ), // want font size 45 px but how?
                          ),
                        ],
                      ),
                    ),
                    // ----------------------- 4th Cont End -------------------------
                  ),
                ],
              ),
              //// yahan pr 3rd aur 4th ka row add kro

              // ----------------------- 5th Cont Start ------------------------------
              Container(
                padding: EdgeInsets.all(22),
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  // bottom aur right pr agr box shadow dena ho tu?
                  image: DecorationImage(
                    fit: BoxFit.cover, //// no need this time
                    image: AssetImage('assets/images/gnocchi.jpg'),
                    opacity: 0.5, // opacity agr 50 % rakhni ho tu
                  ), // i think ye bgimage ka code hi nae hai
                  border: Border.all(color: Colors.red, width: 4),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 127, 69, 48),
                      spreadRadius: 2,
                      blurRadius: 8,
                      // blurStyle: BlurStyle.outer,
                      offset: Offset(6, 6),
                    ),
                  ],
                ),
                // alignment: Alignment.topLeft, // ye b apply nae ho raha
                child: Column(
                  // main container pr background image lagana chahta hoon
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // me chahta hoon neechay tamaam text widgets aik hi border k ander aa jaen, aur me chahta hoon text alignment start pr aa jae
                    Text(
                      'this is teal box text',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'this is weight text',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'this is joining_family text',
                      style: TextStyle(
                        fontFamily: 'JoinHandwriting',
                        fontSize: 30, // kesay add krun fontsize
                        color: Colors.white,
                      ), // flutter has monospace only by default
                    ),
                    Text(
                      'this is separate_family text',
                      style: TextStyle(
                        fontFamily: 'SepHandwriting',
                        fontSize: 30, // kesay add krun fontsize
                        color: Colors.white,
                      ), // flutter has monospace only by default
                    ),
                    Text(
                      'this is size text',
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                      ), // want font size 45 px but how?
                    ),
                  ],
                ),
              ),
              // ---------------------- 5th Cont End -----------------------------
            ],
          ),
        ),
        // Container(),
      ),
    ),
  );
}
