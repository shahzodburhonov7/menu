import 'package:freezed_annotation/freezed_annotation.dart';

part  'product_add_state.freezed.dart';


@freezed
class ProductAddBuildable with _$ProductAddBuildable {
  const factory ProductAddBuildable() = _ProductAddBuildable;
}

@freezed
class ProductAddListenable with _$ProductAddListenable {
  const factory ProductAddListenable() = _ProductAddListenable;
}