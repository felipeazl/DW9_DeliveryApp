import 'package:dw9_delivery_app/app/core/config/env/env.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SplashPage"),
      ),
      body: Column(
        children: [
          Container(),
          Button(
            label: Env.i["backend_base_url"] ?? "",
            onPressed: () {},
          ),
          TextFormField(),
        ],
      ),
    );
  }
}
