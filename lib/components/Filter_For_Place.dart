import 'package:flutter/material.dart';

class Sort extends StatefulWidget {
  @override
  _SortState createState() => _SortState();
}

class _SortState extends State<Sort> {
  int group=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RadioListTile(
            title: Text('Popularity'),
            activeColor: Colors.pink,
            value: 1,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: Text('Rating:High To Low'),
            activeColor: Colors.pink,
            value: 2,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: Text('Cost:Low To High'),
            activeColor: Colors.pink,
            value: 3,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

          RadioListTile(
            title: Text('Cost:High To Low'),
            activeColor: Colors.pink,
            value: 4,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

        ],
      ),
    );
  }
}

class Type extends StatefulWidget {
  @override
  _TypeState createState() => _TypeState();
}

class _TypeState extends State<Type> {
  int group=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RadioListTile(
            title: Text('Veg Only'),
            activeColor: Colors.pink,
            value: 1,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: Text('Cafe'),
            activeColor: Colors.pink,
            value: 2,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: Text('Resturant'),
            activeColor: Colors.pink,
            value: 3,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

          RadioListTile(
            title: Text('Meeting Point'),
            activeColor: Colors.pink,
            value: 4,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

        ],
      ),

    );
  }
}

class Ratings extends StatefulWidget {
  @override
  _RatingsState createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  int group=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RadioListTile(

            title: RichText(text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: '4'),
                WidgetSpan(
                  child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Icon(Icons.star,size: 18.0,color: Colors.amber,),
              ),
                ),
                TextSpan(text:'and above'),
              ],
            ),),

            activeColor: Colors.pink,
            value: 1,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: RichText(text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: '3'),
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Icon(Icons.star,size: 18.0,color: Colors.amber,),
                  ),
                ),
                TextSpan(text:'and above'),
              ],
            ),),
            activeColor: Colors.pink,
            value: 2,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: RichText(text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: '2'),
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Icon(Icons.star,size: 18.0,color: Colors.amber,),
                  ),
                ),
                TextSpan(text:'and above'),
              ],
            ),),
            activeColor: Colors.pink,
            value: 3,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

          RadioListTile(
            title: RichText(text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: '1'),
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Icon(Icons.star,size: 18.0,color: Colors.amber,),
                  ),
                ),
                TextSpan(text:'and above'),
              ],
            ),),
            activeColor: Colors.pink,
            value: 4,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

        ],
      ),
    );
  }
}

class Cost extends StatefulWidget {
  @override
  _CostState createState() => _CostState();
}

class _CostState extends State<Cost> {
  int group=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RadioListTile(
            title: Text('Rs.1000 and above'),
            activeColor: Colors.pink,
            value: 1,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: Text('Rs.500 and above'),
            activeColor: Colors.pink,
            value: 2,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: Text('Rs.300 and above'),
            activeColor: Colors.pink,
            value: 3,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

          RadioListTile(
            title: Text('Rs.100 and above'),
            activeColor: Colors.pink,
            value: 4,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

        ],
      ),
    );
  }
}

class MoreFilters extends StatefulWidget {
  @override
  _MoreFiltersState createState() => _MoreFiltersState();
}

class _MoreFiltersState extends State<MoreFilters> {
  int group=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RadioListTile(
            title: Text('Great Offers'),
            activeColor: Colors.pink,
            value: 1,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: Text('Safe And Hygienic'),
            activeColor: Colors.pink,
            value: 2,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: Text('Under 30 mins'),
            activeColor: Colors.pink,
            value: 3,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

          RadioListTile(
            title: Text('Pure Veg'),
            activeColor: Colors.pink,
            value: 4,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

        ],
      ),
    );
  }
}

class TypeOfCake extends StatefulWidget {
  @override
  _TypeOfCakeState createState() => _TypeOfCakeState();
}

class _TypeOfCakeState extends State<TypeOfCake> {
  int group = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RadioListTile(
            title: Text('Egg'),
            activeColor: Colors.pink,
            value: 1,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: Text('Egg less'),
            activeColor: Colors.pink,
            value: 2,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
        ],
      ),
    );
  }
}

class MoreFil extends StatefulWidget {
  @override
  _MoreFilState createState() => _MoreFilState();
}

class _MoreFilState extends State<MoreFil> {
  int group = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RadioListTile(
            title: Text('Great Offers'),
            activeColor: Colors.pink,
            value: 1,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: Text('Under 30 mins'),
            activeColor: Colors.pink,
            value: 3,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
        ],
      ),
    );
  }
}

class Age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  int group = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RadioListTile(
            title: Text('0-5'),
            activeColor: Colors.pink,
            value: 1,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

          RadioListTile(
            title: Text('10-15'),
            activeColor: Colors.pink,
            value: 2,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),
          RadioListTile(
            title: Text('15-20'),
            activeColor: Colors.pink,
            value: 3,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

          RadioListTile(
            title: Text('20-30'),
            activeColor: Colors.pink,
            value: 4,
            groupValue: group,
            onChanged: (T){
              setState(()  {
                group=T;
              }
              );
            },
          ),

        ],
      ),
    );
  }
}
