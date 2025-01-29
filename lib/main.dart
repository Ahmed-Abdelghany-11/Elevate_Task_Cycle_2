import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/dependency_injection/di.dart';
import 'features/products/presentation/cubit/product_cubit.dart';
import 'features/products/presentation/screen/product_screen.dart';

void main() {
  configureDependencies();
  runApp(const ElevateTaskCycle2());
}

class ElevateTaskCycle2 extends StatelessWidget {
  const ElevateTaskCycle2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => getIt<ProductCubit>()..getProducts(),
        child: ProductScreen(),
      ),
    );
  }
}