import '../../domain/entity/product_entity.dart';
import '../model/product_dto.dart';

extension ProductMapper on ProductDto {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      title: title,
      price: price,
      description: description,
      category: category,
      image: image,
      rate: rating?.rate,
    );
  }
}