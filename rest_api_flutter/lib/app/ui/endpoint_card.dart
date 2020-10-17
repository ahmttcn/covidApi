import 'package:flutter/material.dart';
import 'package:rest_api_flutter/app/services/api.dart';

class EndpointCard extends StatelessWidget {
  const EndpointCard({Key key, this.endpoint, this.value});
  final Endpoint endpoint;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Cases',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                value != null ? value.toString() : '',
                style: Theme.of(context).textTheme.headline4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
