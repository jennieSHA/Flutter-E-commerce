import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

//my own imports
import 'package:flutterapp/components/Size_Config.dart';
import 'package:flutterapp/components/Filter_For_Place.dart';

//Horizontal list for gift galleries starts
class GiftGal extends StatefulWidget {
  @override
  _GiftGalState createState() => _GiftGalState();
}

class _GiftGalState extends State<GiftGal> {
  var giftGalList = [
    {
      "name": "Gift Shopee",
      "picture": "android/images/img4.jpg",
    },
    {
      "name": "Creative Gallary",
      "picture": "android/images/2img.jpg",
    },
    {
      "name": "Fairy Gift Shop",
      "picture": "android/images/4img.jpg",
    },
    {
      "name": "Youth Gift Shop",
      "picture": "android/images/img4.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.00),
        scrollDirection: Axis.horizontal,
        itemCount: giftGalList.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleGiftGal(
            giftGalName: giftGalList[index]['name'],
            giftGalPic: giftGalList[index]['picture'],
          );
        });
  }
}

class SingleGiftGal extends StatelessWidget {
  final giftGalName;
  final giftGalPic;

  //Constructor
  SingleGiftGal({
    this.giftGalName,
    this.giftGalPic,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10.00),
        padding: EdgeInsets.all(10.00),
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15.00),
              child: Image(
                image: AssetImage(giftGalPic),
                height: 110,
                width: 150,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              giftGalName,
              style: Theme.of(context).textTheme.title,
              textAlign: TextAlign.center,
            ),
            Row(
              children: <Widget>[
                Text(
                  '3.0',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 13.00,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SmoothStarRating(
                  starCount: 5,
                  rating: 3,
                  allowHalfRating: true,
                  size: 15.0,
                  halfFilledIconData: Icons.blur_on,
                  color: Colors.amber,
                  spacing: 0.0,
                  borderColor: Colors.amber,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
//Horizontal list for gift galleries ends

//Separate list for gift galleries(After clicking view all)
class GiftGallery {
  GiftGallery(
      {this.image2,
      this.giftShopName,
      this.cost,
      this.deliTime,
      this.rating,
      this.giftShopType});

  String image2;
  String giftShopName;
  String giftShopType;
  String rating;
  String deliTime;
  String cost;
}

List<GiftGallery> _giftGalInfo = <GiftGallery>[
  GiftGallery(
      image2: 'android/images/1img.jpg',
      giftShopName: 'Ur Gift Gallery',
      giftShopType: "All types of gifts",
      deliTime: "35",
      cost: r"$500 for two",
      rating: "4.0"),
  GiftGallery(
      image2: 'android/images/2img.jpg',
      giftShopName: 'Present Shop',
      giftShopType: "Gifts and Bouquet",
      deliTime: "20",
      cost: r"$600 for box",
      rating: "4.2"),
  GiftGallery(
      image2: 'android/images/3img.jpg',
      giftShopName: 'Youth Gift Shoppe',
      giftShopType: "Gifts and Emporium",
      deliTime: "15",
      cost: r"$100 for one",
      rating: "5.0"),
  GiftGallery(
      image2: 'android/images/1img.jpg',
      giftShopName: 'Present Shop',
      giftShopType: "All types of gifts",
      deliTime: "35",
      cost: r"$500 for two",
      rating: "4.0"),
  GiftGallery(
      image2: 'android/images/2img.jpg',
      giftShopName: 'Ur Gift Gallery',
      giftShopType: "Gifts and Emporium",
      deliTime: "20",
      cost: r"$600 for box",
      rating: "4.2"),
  GiftGallery(
      image2: 'android/images/3img.jpg',
      giftShopName: 'Youth Gift Shoppe',
      giftShopType: "Gifts and Bouquet",
      deliTime: "15",
      cost: r"$100 for one",
      rating: "5.0"),
];

class GiftGalList extends StatefulWidget {
  @override
  _GiftGalListState createState() => _GiftGalListState();
}

class _GiftGalListState extends State<GiftGalList> {
  ScrollController _hideBottomNavController;
  bool _isVisible;

  @override
  void initState() {
    super.initState();
    _isVisible = true;
    _hideBottomNavController = ScrollController();
    _hideBottomNavController.addListener(
      () {
        if (_hideBottomNavController.position.userScrollDirection ==
            ScrollDirection.reverse) {
          if (_isVisible)
            setState(() {
              _isVisible = false;
            });
        }
        if (_hideBottomNavController.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (!_isVisible)
            setState(() {
              _isVisible = true;
            });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.pink,
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
                      color: Colors.white,
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
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
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
                color: Colors.white,
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),

      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        controller: _hideBottomNavController,
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(height: 10.0),
          Padding(
              padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              child: Row(children: <Widget>[
                Text(
                  'Gift Galleries',
                  style: Theme.of(context).textTheme.body1,
                ),
                SizedBox(width: SizeConfig.blockSizeHorizontal * 15),
                FlatButton.icon(
                  onPressed: () => _placeFilter(),
                  icon: Icon(
                    Icons.sort,
                    color: Colors.black,
                    size: 15.0,
                  ),
                  label: Text(
                    'SORT/FILTERS',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
              ])),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 0.0),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: _giftGalInfo.length,
              itemBuilder: (context, index) {
                final resinfo = _giftGalInfo[index];
                return Column(
                  children: <Widget>[
                    ListTile(
                      leading: Container(
                        height: 120.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        child: Image.asset(
                          resinfo.image2,
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text(
                        resinfo.giftShopName,
                        style: Theme.of(context).textTheme.title,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            resinfo.giftShopType,
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          SizedBox(
                            height: 23.0,
                          ),
                          Row(children: <Widget>[
                            Text(
                              '2 outlets near you',
                              style: Theme.of(context).textTheme.subtitle,
                            ),
                            Icon(Icons.keyboard_arrow_down)
                          ]),
                          Divider(
                            height: 10.0,
                            color: Colors.black,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 15.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 1),
                              Text(
                                resinfo.rating,
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.black),
                              ),
                              SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 2),
                              Icon(
                                Icons.brightness_1,
                                size: 8.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 2),
                              Text(
                                resinfo.deliTime + 'mins',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12.0),
                              ),
                              SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 2),
                              Icon(
                                Icons.brightness_1,
                                size: 8.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 2),
                              Text(
                                r'$500 for two',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: _isVisible ? 65.0 : 00.0,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          elevation: 6.0,
          child: Material(
            color: Colors.grey[100],
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.00),
              borderSide: BorderSide(
                color: Colors.grey[200],
                width: 1.0,
              ),
            ),
            child: Container(
              height: 50.0,
              width: 50.0,
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
      ),

      //          FOOTER
      bottomNavigationBar: !_isVisible
          ? SizedBox()
          : BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search, color: Colors.pink),
                    title: Text(
                      'Search',
                      style: TextStyle(color: Colors.pink),
                    )),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle, color: Colors.pink),
                  title: Text(
                    'My Account',
                    style: TextStyle(color: Colors.pink),
                  ),
                ),
              ],
            ),
    );
  }

  //filter and sorts option for gift galleries
  void _placeFilter() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SafeArea(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 5,
                      child: Text('Sort and Filters',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25.00)),
                    ),
                    Divider(),
                    Container(
                      child: MyWidget(),
                    ),
                    Divider(),
                    Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 5,
                            child: FlatButton(
                              child: Text(
                                'Clear All',
                                style: TextStyle(
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 15,
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 5,
                            width: SizeConfig.blockSizeHorizontal * 40,
                            child: FlatButton(
                              child: Text('Apply',
                                  style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5,
                                  )),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.00)),
                              color: Colors.grey[200],
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Widget body;
  List<String> isSelected = new List<String>();
  String sort = 'Sort';
  String type = 'Type';
  String rating = 'Rating';
  String cost = 'Cost';
  String moreFilters = 'More Filters';

  @override
  void initState() {
    super.initState();
    this.body = Sort();
    isSelected = new List<String>();
    isSelected.add(sort);
    setState(() {});
  }

  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: SizeConfig.blockSizeVertical * 1,
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1,
                      horizontal: SizeConfig.blockSizeHorizontal * 5),
                  decoration: BoxDecoration(
                    color: isSelected.contains(sort)
                        ? Colors.grey[300]
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text('Sort By',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                        color: Colors.pink,
                      )),
                ),
                onTap: () {
                  onTapped(1);
                  isSelected = new List<String>();
                  isSelected.add(sort);
                  setState(() {});
                },
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1,
                      horizontal: SizeConfig.blockSizeHorizontal * 5),
                  decoration: BoxDecoration(
                    color: isSelected.contains(type)
                        ? Colors.grey[300]
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text('Age',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                        color: Colors.pink,
                      )),
                ),
                onTap: () {
                  onTapped(2);
                  isSelected = new List<String>();
                  isSelected.add(type);
                  setState(() {});
                },
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1,
                      horizontal: SizeConfig.blockSizeHorizontal * 5),
                  decoration: BoxDecoration(
                    color: isSelected.contains(rating)
                        ? Colors.grey[300]
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text('Ratings',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                        color: Colors.pink,
                      )),
                ),
                onTap: () {
                  onTapped(3);
                  isSelected = new List<String>();
                  isSelected.add(rating);
                  setState(() {});
                },
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1,
                      horizontal: SizeConfig.blockSizeHorizontal * 5),
                  decoration: BoxDecoration(
                    color: isSelected.contains(cost)
                        ? Colors.grey[300]
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text('Cost',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                        color: Colors.pink,
                      )),
                ),
                onTap: () {
                  onTapped(4);
                  isSelected = new List<String>();
                  isSelected.add(cost);
                  setState(() {});
                },
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1,
                      horizontal: SizeConfig.blockSizeHorizontal * 3),
                  decoration: BoxDecoration(
                    color: isSelected.contains(moreFilters)
                        ? Colors.grey[300]
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text('More Filters',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                        color: Colors.pink,
                      )),
                ),
                onTap: () {
                  onTapped(5);
                  isSelected = new List<String>();
                  isSelected.add(moreFilters);
                  setState(() {});
                },
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 1,
              ),
            ],
          ),
          VerticalDivider(
            width: 30.0,
          ),
          Container(
            height: SizeConfig.blockSizeVertical * 37,
            width: SizeConfig.blockSizeHorizontal * 50,
            child: body,
          ),
        ],
      ),
    );
  }

  void onTapped(int tapped) {
    switch (tapped) {
      case 1:
        setState(() => body = Sort());
        break;

      case 2:
        setState(() => body = Age());
        break;

      case 3:
        setState(() => body = Ratings());
        break;

      case 4:
        setState(() => body = Cost());
        break;

      case 5:
        setState(() => body = MoreFil());
        break;
    }
  }
}
