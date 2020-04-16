import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:flutterapp/components/Cake_and_Accessories.dart';
import 'package:flutterapp/components/Gift_Gallaries.dart';
import 'package:flutterapp/components/Place.dart';
import 'package:flutterapp/components/Size_Config.dart';

//CODE FOR CELEBRATE AND ORGANIZE BUTTON
class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: SizeConfig.blockSizeHorizontal * 30,
            child: new RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.00)),
              color: Colors.pink,
              splashColor: Colors.lightBlueAccent,
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.local_bar,
                    color: Theme.of(context).primaryIconTheme.color,
                  ),
                  new Text(
                    'Celebrate',
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
          new SizedBox(
            width: SizeConfig.blockSizeHorizontal * 30,
            child: new RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.00)),
              color: Colors.pink,
              splashColor: Colors.lightBlueAccent,
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.business_center,
                    color: Theme.of(context).primaryIconTheme.color,
                  ),
                  new Text(
                    'Organize',
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//CODE FOR VIEW ALL BUTTON
class ViewAll1 extends StatefulWidget {
  @override
  _ViewAll1State createState() => _ViewAll1State();
}

class _ViewAll1State extends State<ViewAll1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: SizeConfig.blockSizeVertical * 5,
            width: SizeConfig.blockSizeHorizontal * 2,
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PlaceList()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.00)),
            color: Colors.white10,
            child: Row(
              children: <Widget>[
                Text(
                  'View More',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.pinkAccent,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ViewAll2 extends StatefulWidget {
  @override
  _ViewAll2State createState() => _ViewAll2State();
}

class _ViewAll2State extends State<ViewAll2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: SizeConfig.blockSizeVertical * 5,
            width: SizeConfig.blockSizeHorizontal * 0.25,
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CakeShopList()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.00)),
            color: Colors.white10,
            child: Row(
              children: <Widget>[
                Text(
                  'View More',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.pinkAccent,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ViewAll3 extends StatefulWidget {
  @override
  _ViewAll3State createState() => _ViewAll3State();
}

class _ViewAll3State extends State<ViewAll3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: SizeConfig.blockSizeVertical * 5,
            width: SizeConfig.blockSizeHorizontal * 2,
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => GiftGalList()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.00)),
            color: Colors.white10,
            child: Row(
              children: <Widget>[
                Text(
                  'View More',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.pinkAccent,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//CODE FOR CELEBRATION WALL
class CelebrationWall extends StatefulWidget {
  @override
  _CelebrationWallState createState() => _CelebrationWallState();
}

class _CelebrationWallState extends State<CelebrationWall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('android/images/1img.jpg'),
          AssetImage('android/images/2img.jpg'),
          AssetImage('android/images/3img.jpg'),
          AssetImage('android/images/4img.jpg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.pinkAccent,
                  ),
                  onPressed: () {}),
              Text(
                'Tap To View Celebration Wall',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 0.0,
        indicatorBgPadding: 0.0,
      ),
    );
  }
}
