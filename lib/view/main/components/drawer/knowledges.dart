import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'Figma, Postman'),
        KnowledgeText(knowledge: 'Git, Github'),
        KnowledgeText(knowledge: 'Android studio, visual studio code'),
        KnowledgeText(knowledge: 'Auto CAD (2D, 3D), Solid work, NX 12.0'),
      ],
    );
  }
}
