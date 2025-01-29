import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entity/product_entity.dart';
import '../cubit/product_cubit.dart';
import '../widgets/product_item.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        centerTitle: true,
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is ProductLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ProductLoaded) {
            return GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 280,
              ),
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                return ProductItem(product: state.products[index]);
              },
            );
          } else if (state is ProductError) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return const Center(
              child: Text("No products available"),
            );
          }
        },
      ),
    );
  }
}