import 'package:flutter/material.dart';
import 'package:leancloud_official_plugin/leancloud_plugin.dart';
import 'package:skybot/widget/scale_size_image_widget.dart';


class MessageImageItem extends StatelessWidget {
  ImageMessage message;

  MessageImageItem({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleSizeImageWidget(
      photoHeight: message.height ?? 0,
      photoWidth: message.width ?? 0,
      photoUrl: message.url ?? '',
    );
  }
}
