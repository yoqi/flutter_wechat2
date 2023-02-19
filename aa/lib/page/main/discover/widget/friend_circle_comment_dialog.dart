import 'package:flutter/material.dart';
import 'package:skybot/core.dart';
import 'package:skybot/utils/navigator_utils.dart';
import 'package:skybot/widget/common_btn.dart';
import 'package:skybot/widget/input_field.dart';
import '../../../../color/colors.dart';
import '../../../../language/strings.dart';

class FriendCircleCommentDialog extends StatefulWidget {
  const FriendCircleCommentDialog({Key? key}) : super(key: key);

  @override
  State<FriendCircleCommentDialog> createState() =>
      _FriendCircleCommentDialogState();
}

class _FriendCircleCommentDialogState extends State<FriendCircleCommentDialog> {
  final TextEditingController _con = TextEditingController();

  @override
  void initState() {
    _con.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.w,
      color: Colours.c_EEEEEE,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Expanded(
            child: InputField(
              hint: Ids.comment.str(),
              controller: _con,
              showClean: true,
            ),
          ),
          20.sizedBoxW,
          CommonBtn(
            text: Ids.send.str(),
            onTap: () {
              NavigatorUtils.pop(_con.text.trim());
            },
            enable: _con.text.trim().isNotEmpty,
          )
        ],
      ),
    );
  }
}
