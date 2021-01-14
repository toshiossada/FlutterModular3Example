import 'package:flutter/material.dart';
import 'package:modular_example/app/modules/home/domain/entities/responses/result.dart';

class DetailsPage extends StatefulWidget {
  final Result? result;
  DetailsPage({Key? key, this.result}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#${widget.result?.id ?? ''}'),
      ),
      body: Container(
        child: Center(
          child: Text(widget.result?.description ?? ''),
        ),
      ),
    );
  }
}
