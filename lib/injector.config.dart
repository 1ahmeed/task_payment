// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;
import 'package:task_payment/config/app_module_inject.dart' as _i13;
import 'package:task_payment/config/route/app_router.dart' as _i4;
import 'package:task_payment/core/api_service/api_service.dart' as _i5;
import 'package:task_payment/features/payment/data/remote/payment_remote_data_source.dart'
    as _i6;
import 'package:task_payment/features/payment/data/repo/payment_repo_impl.dart'
    as _i8;
import 'package:task_payment/features/payment/domain/repo/payment_repo.dart'
    as _i7;
import 'package:task_payment/features/payment/domain/use_case/payment_key_use_case.dart'
    as _i11;
import 'package:task_payment/features/payment/domain/use_case/payment_order_use_case.dart'
    as _i10;
import 'package:task_payment/features/payment/domain/use_case/payment_use_case.dart'
    as _i9;
import 'package:task_payment/features/payment/presentation/cubit/payment_cubit.dart'
    as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i4.AppRouter>(() => appModule.appRouter);
    gh.singleton<_i5.ApiService>(() => _i5.ApiService.getDio());
    gh.factory<_i6.PaymentRemoteDataSource>(() =>
        _i6.PaymentRemoteDataSourceImpl(apiService: gh<_i5.ApiService>()));
    gh.factory<_i7.PaymentRepo>(() => _i8.PaymentRepoImpl(
        paymentRemoteDataSource: gh<_i6.PaymentRemoteDataSource>()));
    gh.factory<_i9.PaymentUsrCase>(
        () => _i9.PaymentUsrCase(paymentRepo: gh<_i7.PaymentRepo>()));
    gh.factory<_i10.PaymentOrderUsrCase>(
        () => _i10.PaymentOrderUsrCase(paymentRepo: gh<_i7.PaymentRepo>()));
    gh.factory<_i11.PaymentKeyUseCase>(
        () => _i11.PaymentKeyUseCase(paymentRepo: gh<_i7.PaymentRepo>()));
    gh.factory<_i12.PaymentCubit>(() => _i12.PaymentCubit(
          paymentUsrCase: gh<_i9.PaymentUsrCase>(),
          paymentOrderUsrCase: gh<_i10.PaymentOrderUsrCase>(),
          paymentKeyUseCase: gh<_i11.PaymentKeyUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i13.AppModule {}
