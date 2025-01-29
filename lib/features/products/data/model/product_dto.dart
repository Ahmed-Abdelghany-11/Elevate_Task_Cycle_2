import 'package:json_annotation/json_annotation.dart';

part 'product_dto.g.dart';

@JsonSerializable()
class ProductDto {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "price")
  final double? price;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "category")
  final String? category;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "rating")
  final Rating? rating;

  ProductDto ({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) {
    return _$ProductDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProductDtoToJson(this);
  }
}

@JsonSerializable()
class Rating {
  @JsonKey(name: "rate")
  final double? rate;
  @JsonKey(name: "count")
  final int? count;

  Rating ({
    this.rate,
    this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return _$RatingFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RatingToJson(this);
  }
}


