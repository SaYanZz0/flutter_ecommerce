import 'package:flutter/material.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => RowError(error: errors[index])),
    );
  }

  RowError({required String error}) {
    return Row(
      children: <Widget>[
        Icon(Icons.warning , color: Colors.red,),
        SizedBox(width: getProportionateScreenWidth(10),),
        Text(error)
      ],
    );
  }
}