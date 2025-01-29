import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/constants.dart';
import '../../model/product_dto.dart';
import 'package:injectable/injectable.dart';


part 'product_retrofit_client.g.dart';

@injectable
@singleton
@RestApi(baseUrl: Constants.baseUrl)
abstract class ProductRetrofitClient {

  @factoryMethod
  factory ProductRetrofitClient(Dio dio) = _ProductRetrofitClient;

  @GET("/products")
  Future<List<ProductDto>> getProducts();
}