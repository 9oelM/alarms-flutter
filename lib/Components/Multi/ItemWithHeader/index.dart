import 'package:alarms_flutter/Components/Single/BasicText/index.dart';
import 'package:flutter/widgets.dart';

class ItemWidthHeader extends StatelessWidget {
  const ItemWidthHeader(this.data, this.item) : super();
  final String data;
  final Widget item;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BasicText(
                data,
              ),
              item,
            ],
          )),
    );
  }
}
