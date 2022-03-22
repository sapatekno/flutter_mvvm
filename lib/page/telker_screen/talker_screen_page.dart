import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

class TalkerScreenPage extends StatelessWidget {
  const TalkerScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TalkerScreen(
      talker: Talker.instance,
    );
  }
}
