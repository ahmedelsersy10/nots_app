import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/nots_view_body.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotsViewBody(),
    );
  }
}
