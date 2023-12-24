import 'package:flutter_project_template_riverpod/features/core/domain/app_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/banner.dart';
part 'banner_state.freezed.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState.initial() = _Initial;
  const factory BannerState.loading() = _Loading;
  const factory BannerState.loaded(List<Banner> banners) = _Loaded;
  const factory BannerState.failure(AppFailure failure) = _Failure;
}
