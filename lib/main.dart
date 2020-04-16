import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:flutterapp/components/Buttons_cele_Wall.dart';
import 'package:flutterapp/components/Cake_and_Accessories.dart';
import 'package:flutterapp/components/Gift_Gallaries.dart';
import 'package:flutterapp/components/Place.dart';
import 'package:flutterapp/widgets/Quotes.dart';
import 'package:flutterapp/components/Size_Config.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: myTheme,),
  );
}
ThemeData myTheme = ThemeData(
  primaryColor: Colors.pink,
  accentColor: Colors.pinkAccent,
  primaryIconTheme: IconThemeData(color: Colors.white),
  textTheme: TextTheme(
    body1: TextStyle(
        fontSize: 20.0,
        color: Colors.pink,
        fontWeight: FontWeight.bold
  ),
    title: TextStyle(                //For shop name
        fontSize: 18.00,
        fontWeight: FontWeight.w500,
      ),
    subtitle:  TextStyle(             //for shop type
      fontSize: 15.00,
      fontWeight: FontWeight.normal,
    ),
  ),

);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('android/images/img1.jpg'),
          AssetImage('android/images/img2.jpg'),
          AssetImage('android/images/img3.jpg'),
          AssetImage('android/images/img4.jpg'),
          AssetImage('android/images/img5.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 3.0,
        indicatorBgPadding: 8.0,
        onImageTap: null,
      ),
    );
    return Scaffold(
      //             APPBAR
      appBar: new AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Other',
                  style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).primaryIconTheme.color,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Jalgaon',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 0.0)),
            IconButton(
                icon:  Icon(
                  Icons.keyboard_arrow_down,
                  color:  Theme.of(context).primaryIconTheme.color,
                  size: 35.00,
                ),
                onPressed: null),
          ],
        ),
        actions: <Widget>[
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).primaryIconTheme.color,
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
        //titleSpacing: 0.0,
        automaticallyImplyLeading: false,
      ),

      //      NAVIGATION DRAWER
      endDrawer: Drawer(
        child: new ListView(
          children: <Widget>[
            //          HEADER
            new UserAccountsDrawerHeader(
              accountName: Text('abcd efgh'),
              accountEmail: Text('abcd@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(
                    Icons.person,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color:  Theme.of(context).primaryColor,),
            ),

            //  BODY OF NAVIGATION DRAWER
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color:  Theme.of(context).primaryColor,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.account_circle,
                  color:  Theme.of(context).primaryColor,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Saved'),
                leading: Icon(
                  Icons.favorite,
                  color:  Theme.of(context).primaryColor,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('My Bookings'),
                leading: Icon(
                  Icons.cake,
                  color:  Theme.of(context).primaryColor,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Celebration Wall'),
                leading: Icon(
                  Icons.dashboard,
                  color:  Theme.of(context).primaryColor,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Celebrate Moment'),
                leading: Icon(
                  Icons.local_bar,
                  color:  Theme.of(context).primaryColor,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Arrange Meeting'),
                leading: Icon(
                  Icons.local_cafe,
                  color:  Theme.of(context).primaryColor,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color:  Theme.of(context).accentColor,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('About Us'),
                leading: Icon(
                  Icons.help_outline,
                  color:  Theme.of(context).accentColor,
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        elevation: 2.0,
        child: Material(
          color: Colors.grey[200],
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.00),
            borderSide: BorderSide(
              color: Colors.grey[200],
              width:  1.0,
            ),
          ),
          child: Container(
            height:50,
            width: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'SPARK',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'IT',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 8.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      //          FOOTER
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryIconTheme.color,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Theme.of(context).primaryColor,),
              title: Text(
                'Search',
                style: TextStyle(color: Colors.pink),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Theme.of(context).primaryColor,),
              title: Text(
                'My Account',
                style: TextStyle(color: Theme.of(context).primaryColor,),
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: ListView(
        children: <Widget>[
          imageCarousel, //for quotes
          //quotesList(),
          Buttons(), //for CELEBRATE and ARRANGE button

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(15.00),
                child: new Text(
                  'Place',
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
              ViewAll1(), //view all button
            ],
          ),

          Container(
            height: SizeConfig.blockSizeVertical*35,
            child: Place(), //Horizontal list of places
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(4.00),
                child: new Text(
                  'Cake And Accessories',
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
              ViewAll2(),
            ],
          ),

          Container(
            height:SizeConfig.blockSizeVertical*39,
            child: Shops(), //Horizontal list of cake and accessories
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(15.00),
                child: new Text(
                  'Gift Galleries',
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
              ViewAll3(),
            ],
          ),

          Container(
            height: SizeConfig.blockSizeVertical*35,
            child: GiftGal(), //Horizontal list for Gift Galleries
          ),

          new Padding(
            padding: const EdgeInsets.all(20.00),
            child: new Text(
              'Celebration Wall',
              style: Theme.of(context).textTheme.body1,
            ),
          ),
          CelebrationWall(), //Carousel of Celebration wall
        ],
      ),
    );
  }
}
