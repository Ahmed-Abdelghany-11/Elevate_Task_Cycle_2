// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/products/data/data_source/online/network_module.dart'
    as _i581;
import '../../features/products/data/data_source/online/product_retrofit_client.dart'
    as _i539;
import '../../features/products/data/repository/product_repository_imp.dart'
    as _i1047;
import '../../features/products/domain/repository/product_repository.dart'
    as _i575;
import '../../features/products/domain/usecase/product_usecase.dart' as _i636;
import '../../features/products/presentation/cubit/product_cubit.dart' as _i661;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.lazySingleton<_i361.Dio>(() => networkModule.provideDio());
    gh.lazySingleton<_i361.LogInterceptor>(
        () => networkModule.providePrettyDioLogger());
    gh.factory<_i539.ProductRetrofitClient>(
        () => _i539.ProductRetrofitClient(gh<_i361.Dio>()));
    gh.factory<_i575.ProductRepository>(
        () => _i1047.ProductsRepositoryImpl(gh<_i539.ProductRetrofitClient>()));
    gh.factory<_i636.ProductUseCase>(
        () => _i636.ProductUseCase(gh<_i575.ProductRepository>()));
    gh.factory<_i661.ProductCubit>(
        () => _i661.ProductCubit(gh<_i636.ProductUseCase>()));
    return this;
  }
}

class _$NetworkModule extends _i581.NetworkModule {}
