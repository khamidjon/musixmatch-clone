// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:musixmatch_clone/core/dio/dio_module.dart' as _i7;
import 'package:musixmatch_clone/data/remote/tracks_api.dart' as _i4;
import 'package:musixmatch_clone/data/repositories/tracks_repository_impl.dart'
    as _i6;
import 'package:musixmatch_clone/domain/repositories/tracks_repository.dart'
    as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.singleton<_i3.Dio>(dioModule.getUnauthorizedDioClient());
    gh.singleton<_i4.TracksApi>(_i4.TracksApi(gh<_i3.Dio>()));
    gh.singleton<_i5.TracksRepository>(
        _i6.TracksRepositoryImpl(gh<_i4.TracksApi>()));
    return this;
  }
}

class _$DioModule extends _i7.DioModule {}
