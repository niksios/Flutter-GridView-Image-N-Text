import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Grid Image & Text";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: title,
        home: Scaffold(appBar: AppBar(
          title: Text(title),
        ),
            body: GridView.count(
                crossAxisCount: 2,
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(choice: choices[index]),

                  );
                }
                ),

            )
        )
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.drafts),
  const Choice(title: 'Boat', icon: Icons.dvr),
  const Choice(title: 'Bus', icon: Icons.copyright),
  const Choice(title: 'Train', icon: Icons.cloud_off),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.drafts),
  const Choice(title: 'Boat', icon: Icons.dvr),
  const Choice(title: 'Bus', icon: Icons.copyright),
  const Choice(title: 'Train', icon: Icons.cloud_off),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.drafts),
  const Choice(title: 'Boat', icon: Icons.dvr),
  const Choice(title: 'Bus', icon: Icons.copyright),
  const Choice(title: 'Train', icon: Icons.cloud_off),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.caption;
    return Card(
      margin: EdgeInsets.all(9.0),
        color: Colors.white,
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,


            children: <Widget>[

              Expanded(
                  child: Icon(
                      choice.icon,
                      size:60.0,
                      color: textStyle.color),
              ),
              Text(choice.title, style: TextStyle(color: Colors.red, fontSize: 20.0),),
              Padding(padding: EdgeInsets.all(7.0),),

            ]
        ),
        )
    );
  }
}