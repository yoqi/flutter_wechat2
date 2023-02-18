import 'package:flutter/material.dart';
import 'package:skybot/core.dart';
import 'package:skybot/utils/utils.dart';
import 'package:skybot/widget/tap_widget.dart';

class CommonSwitch extends StatelessWidget {
  bool status;
  ValueChanged<bool> onChange;

  CommonSwitch({required this.status, required this.onChange, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TapWidget(
        onTap: () {
          onChange.call(!status);
        },
        child: Image.asset(
          Utils.getIconImgPath(status ? 'switch_open' : 'switch_close'),
          width: 100.w,
          height: 80.w,
        ));
  }
}
