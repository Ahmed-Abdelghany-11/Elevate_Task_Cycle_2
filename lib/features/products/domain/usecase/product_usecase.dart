import 'package:elevate_task_cycle_2/features/products/domain/entity/product_entity.dart';
import 'package:injectable/injectable.dart';

import '../repository/product_repository.dart';

@injectable
class ProductUseCase {
  final ProductRepository _productRepository;

  ProductUseCase(this._productRepository);

  Future<List<ProductEntity>> getProducts() async {
    return _productRepository.getProducts();
  }
}