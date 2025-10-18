import 'package:flutter/material.dart';
import 'package:flutter_embed_unity/flutter_embed_unity.dart';

class ArPage extends StatelessWidget {
  const ArPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmbedUnity(onMessageFromUnity: (String message) {}),
    );
  }
}