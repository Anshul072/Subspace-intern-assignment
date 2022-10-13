import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(scaffoldBackgroundColor: const Color.fromRGBO(29, 27, 27, 0.9686274509803922)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    // defining variables for repeated use.
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var col = const Color.fromRGBO(50, 50, 50, 1);
    var textcol = const Color.fromRGBO(255, 255, 255, 1.0);


    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore"),
        backgroundColor: const Color.fromRGBO(29, 27, 27, 0.9686274509803922),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            // first image portion
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 5.0),
              child: Container(
                height: height*0.05,
                width: width*0.95,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 120, 86, 243)),
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/blue-back.png"),
                    fit: BoxFit.fill,
                  )
                ),
              ),
            ),

            // second image portion
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 5.0),
              child: Container(
                height: height*0.2,
                width: width*0.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/grad-blue.png"),
                      fit: BoxFit.fill,
                    )
                ),
              ),
            ),

            // List part with cards

            // netflix card
            SizedBox(
              height: height*0.15,
              width: width*0.95,
              child: Stack(
                children: [
                  Card(
                    color: col,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/images/Netflix-Logo.png'),
                              ),
                              Positioned(
                                bottom: 0,
                                  right: 5,
                                  child: CircleAvatar(
                                    radius: 12,
                                  ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Netflix Premium",
                                  style: TextStyle(
                                    fontSize: min(width*0.05,20),
                                    fontWeight: FontWeight.bold,
                                    color: textcol,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                                child: Text(
                                    "bought by Ishika Varma",
                                  style: TextStyle(
                                    fontSize: min(width*0.025,10),
                                    color: textcol,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8.0, 2.0, 0.0, 0.0),
                                child: Text(
                                  "1/5 friends sharing",
                                  style: TextStyle(
                                    fontSize: min(width*0.03,12),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlueAccent
                                  ),
                                ),
                              )
                            ],
                  ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Text(
                                 "₹163 / user /Month",
                                 style: TextStyle(
                                   color: Colors.lightBlueAccent,
                                   fontWeight: FontWeight.bold,
                                   fontSize: min(width*0.03,12),
                                 ),
                               ),
                             ),
                              SizedBox(
                                width: width*0.25,
                                height: height*0.03,
                                child: ElevatedButton(onPressed: (){},
                                    child:const Text("Join")
                                ),
                              )
                            ],
                          )
          ],
        ),
                    ),
      ),
                  Positioned(
                    top: 5,
                      left: 5,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(90, 6, 175, 127),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                          child: Text(
                            "6+ groups",
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.white
                            ),
                          ),
                        ),
                      )
                  )
                ],
              ),
            ),

            // amazon prime card
            SizedBox(
              height: height*0.15,
              width: width*0.95,
              child: Stack(
                children: [
                  Card(
                    color: col,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage('assets/images/prime-video.png'),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Amazon Prime",
                                  style: TextStyle(
                                    fontSize: min(20.0,width*0.05),
                                    fontWeight: FontWeight.bold,
                                    color: textcol,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 8.0),
                                child: SizedBox(
                                  height: height*0.05,
                                  width: width*0.35,
                                  child: Wrap(
                                      children:[
                                        Text("Watch Unlimited Movies, TV Shows & Get Free Shipping Benefits with Amazon Prime",
                                          style: TextStyle(
                                              fontSize: min(10.0,width*0.025),
                                            color: textcol,
                                          ),
                                        softWrap: true,
                                        textAlign: TextAlign.left,
                                        maxLines: 4,
                                      ),]
                                  ),
                                ),
                              ),
                            ],
                  ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             Padding(
                               padding: const EdgeInsets.fromLTRB(1, 3, 3, 3),
                               child: Text(
                                 "₹700 ₹650 /Month",
                                 style: TextStyle(
                                   color: Colors.lightBlueAccent,
                                   fontWeight: FontWeight.bold,
                                   fontSize: min(12.0,width*0.03),
                                 ),
                               ),
                             ),
                              SizedBox(
                                width: width*0.25,
                                height: height*0.03,
                                child: ElevatedButton(onPressed: (){},
                                    child:const Text("Buy")
                                ),
                              )
                            ],
                          )
          ],
        ),
                    ),
      ),
                  Positioned(
                      top: 5,
                      left: 5,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(90, 6, 175, 127),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))
                        ),
                        child:const Padding(
                          padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                          child: Text(
                            "40% off",
                            style: TextStyle(
                                fontSize: 8,
                                color: Colors.white
                            ),
                          ),
                        ),
                      )
                  )
                ],
              ),
            ),

            // suggestion card
            SizedBox(
              width: width*0.95,
              child: Card(
                color: col,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 2.0),
                      child: Text(
                        "What do you want to list next?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: textcol,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 5.0, 10.0, 10.0),
                      child: Text(
                        "Suggest us a subscription",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 10.0,
                        color: textcol,
                      ),),
                    ),
                    SizedBox(
                      width: width*0.9,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 25,
                                offset: Offset(0, 0),
                                blurStyle: BlurStyle.outer,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Your Suggestion",
                                hintStyle: const TextStyle(
                              color: Color.fromARGB(87, 255, 254, 254),
                            ),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: IconButton(
                                    iconSize: 18.0,
                                      onPressed: (){},
                                      icon: Icon(Icons.send,color: textcol,)
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20),
                                ),
                            ),
                          ),
                        ),
                      ),
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

