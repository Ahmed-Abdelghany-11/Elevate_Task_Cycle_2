import 'package:elevate_task_cycle_2/features/products/data/mapper/product_mapper.dart';
import 'package:elevate_task_cycle_2/features/products/domain/entity/product_entity.dart';

 import 'package:injectable/injectable.dart';

import '../../domain/repository/product_repository.dart';
import '../data_source/online/product_retrofit_client.dart';

@Injectable(as: ProductRepository)
class ProductsRepositoryImpl implements ProductRepository {

  final ProductRetrofitClient _productRetrofitClient;

  ProductsRepositoryImpl(this._productRetrofitClient);

  @override
  Future<List<ProductEntity>> getProducts() async {
    try{
      final products = await _productRetrofitClient.getProducts();
      return products.map((product) => product.toEntity()).toList();
    } catch(e){
      throw Exception(e);
    }
  }

}