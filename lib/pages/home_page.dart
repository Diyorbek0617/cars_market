import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);
  static final String id="home_page";

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Color colors2=Colors.red;
  Icon icons=Icon(Icons.favorite_border,color: Colors.white,);
  bool one=true;

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      // #title
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text("Cars", style: TextStyle(color: Colors.red, fontSize: 25),),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.red,),
            onPressed: () {  },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.red,),
            onPressed: () {  },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          // #body
          child: Column(
            children: [
              Container(
                height: 40,
                // #list view AspectRatio
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true,"All"),
                    singleTab(false,"Red"),
                    singleTab(false,"Blue"),
                    singleTab(false,"Green"),
                    singleTab(false,"Grey"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car5.jpg"),
            ],
          ),
        ),
      ),
    );
  }
  Widget singleTab(bool type, String text,){
    // #control of AspectRatio
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.red[400]:Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: type? 20: 17,color: type? Colors.white:Colors.black),),
        ),
      ),
    );
  }
  Widget makeItem(String image){
    // #Cars container
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0,10),
            ),
          ]
      ),
      // #container gradient
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.2),
              ]
          ),
        ),
         // #all strings of cars container
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // #string PDP Car
                          Text("PDP Car",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10,),
                          // #string electric
                          Text("Electric",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                       // # string 100 dollar
                       Text("100\$", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                       ),
                    ],
                  ),
                ),

              ],
            ),
            // #icon control
            GestureDetector(
              onTap: (){
                setState(() {
                  if(one==false){
                    colors2=Colors.red;
                    icons=Icon(Icons.favorite_border,color: Colors.white,);
                    one=true;
                  } else {
                    colors2=Colors.white;
                    icons=Icon(Icons.favorite,color: Colors.red,);
                    one=false;
                  }
                });
              },
              // #icon container
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colors2,
                ),
                // #icon
                child: Center(
                  child: icons,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

