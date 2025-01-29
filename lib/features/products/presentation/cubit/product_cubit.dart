import 'package:bloc/bloc.dart';
import 'package:elevate_task_cycle_2/features/products/domain/entity/product_entity.dart';
import 'package:elevate_task_cycle_2/features/products/domain/usecase/product_usecase.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

part 'product_state.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final ProductUseCase productUseCase;
  ProductCubit(this.productUseCase) : super(ProductInitial());

  Future<void> getProducts() async {
    emit(ProductLoading());
    final products = await productUseCase.getProducts();
    try {
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }

}
