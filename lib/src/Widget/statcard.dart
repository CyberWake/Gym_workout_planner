import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class StatCard extends StatefulWidget {
  final String title;
  final double total;
  final double achieved;
  final Image image;
  final Color color;
  StatCard({
    Key key,
    @required this.title,
    @required this.total,
    @required this.achieved,
    @required this.image,
    @required this.color,
  });
  @override
  _StatCardState createState() => _StatCardState();
}

class _StatCardState extends State<StatCard> {
  double current = 0;

  @override
  Widget build(BuildContext context) {
    double total = widget.total;
    return GestureDetector(
      onLongPress: (){
        setState(() {
          current = 0;
        });
      },
      onTap: (){
        setState(() {
          current =current+1;
        });
      },
      child: Container(
        width: 200,
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey[200],
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.title.toUpperCase(),
                  style: TextStyle(
                    color: Theme.of(context).accentColor.withAlpha(100),
                    fontSize: 14,
                  ),
                ),
                current < total
                    ? Image.asset(
                  'assets/img/down_orange.png',
                  width: 20,
                )
                    : Image.asset(
                  'assets/img/up_red.png',
                  width: 20,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
            ),
            CircularPercentIndicator(
              radius: 80.0,
              lineWidth: 8.0,
              percent: current / (total < current ? current : total),
              circularStrokeCap: CircularStrokeCap.round,
              center: widget.image,
              progressColor: widget.color,
              backgroundColor: Theme.of(context).accentColor.withAlpha(30),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: '$current',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                TextSpan(
                  text: ' / $total',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
