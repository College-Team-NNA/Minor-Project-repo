import 'package:flutter/material.dart';
import 'package:minor_project/utils/func.dart';

class UnderConstructionPage extends StatelessWidget {
  const UnderConstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: link("under construction.png"),
      builder: (BuildContext context, snapshot) {
        return snapshot.connectionState == ConnectionState.done
            ? Image.network(
                snapshot.data.toString(),
                fit: BoxFit.fitWidth,
              )
            : const SizedBox();
      },
    );
  }
}
