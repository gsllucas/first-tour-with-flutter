import 'package:flutter/material.dart';
import 'package:myapp/widgets/list_view_widget.dart';
import 'package:myapp/widgets/row_widget.dart';
import 'package:myapp/widgets/single_render.dart';

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Testing column'),
        SingleRenderWidget(),
        RowWidget(),
      ],
    );
  }
}
