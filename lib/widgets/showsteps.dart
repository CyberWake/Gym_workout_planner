import 'package:flutter/material.dart';
import 'dart:async';

class ShowSteps extends StatefulWidget {
  final int steps;

  const ShowSteps({Key key, this.steps}) : super(key: key);
  @override
  _ShowStepsState createState() => _ShowStepsState(this.steps);
}

class _ShowStepsState extends State<ShowSteps> {
  final int steps;
  int start;
  bool _isDisposed;
  _ShowStepsState(this.steps);

  StreamController<int> sm;
  Stream<int> stream;
  StreamSink<int> streamSink;

  @override
  void initState() {
    _isDisposed = false;
    start = 0;
    sm = StreamController();
    stream = sm.stream;
    streamSink = sm.sink;
    streamSink.add(0);
    get();
    super.initState();
  }

  get() async {
    while (start < steps && !_isDisposed) {
      await Future.delayed(Duration(microseconds: 1000), () {
        if ((steps - start) % 10 == 0)
          start += 10;
        else
          start = start + 1;
        if(!_isDisposed)
          streamSink.add(start);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: stream,
      initialData: 0,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return Text(
          snapshot.data.toString(),
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 80,
            fontFamily: 'Bebas',
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _isDisposed=true;
    sm.close();
    streamSink.close();
    super.dispose();
  }
}
