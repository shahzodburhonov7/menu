// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'done_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoneBuildable {
  bool get loading => throw _privateConstructorUsedError;
  List<OrdersDoneList> get orderDoneList => throw _privateConstructorUsedError;
  bool get confirmLoading => throw _privateConstructorUsedError;
  List<ConfirmAll?> get confirmAll => throw _privateConstructorUsedError;
  List<ConfirmPagination?> get confirmAllOrder =>
      throw _privateConstructorUsedError;
  int get pageNumber =>
      throw _privateConstructorUsedError; // Default sahifa raqami 1
  int get totalPages => throw _privateConstructorUsedError; // Total sahifalar
  int get currentPage => throw _privateConstructorUsedError; // Total sahifalar
  int? get count => throw _privateConstructorUsedError; // Ma'lumotlar soni
  String? get next =>
      throw _privateConstructorUsedError; // Keyingi sahifa (agar bo'lsa)
  String? get previous =>
      throw _privateConstructorUsedError; // Oldingi sahifa (agar bo'lsa)
  List<Result>? get confirmPagination =>
      throw _privateConstructorUsedError; // Ma'lumotlar ro'yxati
  PagingController<int, Result>? get locationController =>
      throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of DoneBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoneBuildableCopyWith<DoneBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoneBuildableCopyWith<$Res> {
  factory $DoneBuildableCopyWith(
          DoneBuildable value, $Res Function(DoneBuildable) then) =
      _$DoneBuildableCopyWithImpl<$Res, DoneBuildable>;
  @useResult
  $Res call(
      {bool loading,
      List<OrdersDoneList> orderDoneList,
      bool confirmLoading,
      List<ConfirmAll?> confirmAll,
      List<ConfirmPagination?> confirmAllOrder,
      int pageNumber,
      int totalPages,
      int currentPage,
      int? count,
      String? next,
      String? previous,
      List<Result>? confirmPagination,
      PagingController<int, Result>? locationController,
      bool hasMore,
      bool isLoading});
}

/// @nodoc
class _$DoneBuildableCopyWithImpl<$Res, $Val extends DoneBuildable>
    implements $DoneBuildableCopyWith<$Res> {
  _$DoneBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoneBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? orderDoneList = null,
    Object? confirmLoading = null,
    Object? confirmAll = null,
    Object? confirmAllOrder = null,
    Object? pageNumber = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? confirmPagination = freezed,
    Object? locationController = freezed,
    Object? hasMore = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDoneList: null == orderDoneList
          ? _value.orderDoneList
          : orderDoneList // ignore: cast_nullable_to_non_nullable
              as List<OrdersDoneList>,
      confirmLoading: null == confirmLoading
          ? _value.confirmLoading
          : confirmLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmAll: null == confirmAll
          ? _value.confirmAll
          : confirmAll // ignore: cast_nullable_to_non_nullable
              as List<ConfirmAll?>,
      confirmAllOrder: null == confirmAllOrder
          ? _value.confirmAllOrder
          : confirmAllOrder // ignore: cast_nullable_to_non_nullable
              as List<ConfirmPagination?>,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPagination: freezed == confirmPagination
          ? _value.confirmPagination
          : confirmPagination // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      locationController: freezed == locationController
          ? _value.locationController
          : locationController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, Result>?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoneBuildableImplCopyWith<$Res>
    implements $DoneBuildableCopyWith<$Res> {
  factory _$$DoneBuildableImplCopyWith(
          _$DoneBuildableImpl value, $Res Function(_$DoneBuildableImpl) then) =
      __$$DoneBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      List<OrdersDoneList> orderDoneList,
      bool confirmLoading,
      List<ConfirmAll?> confirmAll,
      List<ConfirmPagination?> confirmAllOrder,
      int pageNumber,
      int totalPages,
      int currentPage,
      int? count,
      String? next,
      String? previous,
      List<Result>? confirmPagination,
      PagingController<int, Result>? locationController,
      bool hasMore,
      bool isLoading});
}

/// @nodoc
class __$$DoneBuildableImplCopyWithImpl<$Res>
    extends _$DoneBuildableCopyWithImpl<$Res, _$DoneBuildableImpl>
    implements _$$DoneBuildableImplCopyWith<$Res> {
  __$$DoneBuildableImplCopyWithImpl(
      _$DoneBuildableImpl _value, $Res Function(_$DoneBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoneBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? orderDoneList = null,
    Object? confirmLoading = null,
    Object? confirmAll = null,
    Object? confirmAllOrder = null,
    Object? pageNumber = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? confirmPagination = freezed,
    Object? locationController = freezed,
    Object? hasMore = null,
    Object? isLoading = null,
  }) {
    return _then(_$DoneBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDoneList: null == orderDoneList
          ? _value._orderDoneList
          : orderDoneList // ignore: cast_nullable_to_non_nullable
              as List<OrdersDoneList>,
      confirmLoading: null == confirmLoading
          ? _value.confirmLoading
          : confirmLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmAll: null == confirmAll
          ? _value._confirmAll
          : confirmAll // ignore: cast_nullable_to_non_nullable
              as List<ConfirmAll?>,
      confirmAllOrder: null == confirmAllOrder
          ? _value._confirmAllOrder
          : confirmAllOrder // ignore: cast_nullable_to_non_nullable
              as List<ConfirmPagination?>,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPagination: freezed == confirmPagination
          ? _value._confirmPagination
          : confirmPagination // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      locationController: freezed == locationController
          ? _value.locationController
          : locationController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, Result>?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DoneBuildableImpl implements _DoneBuildable {
  const _$DoneBuildableImpl(
      {this.loading = false,
      final List<OrdersDoneList> orderDoneList = const [],
      this.confirmLoading = false,
      final List<ConfirmAll?> confirmAll = const [],
      final List<ConfirmPagination?> confirmAllOrder = const [],
      this.pageNumber = 1,
      this.totalPages = 1,
      this.currentPage = 1,
      this.count,
      this.next,
      this.previous,
      final List<Result>? confirmPagination,
      this.locationController,
      this.hasMore = false,
      this.isLoading = false})
      : _orderDoneList = orderDoneList,
        _confirmAll = confirmAll,
        _confirmAllOrder = confirmAllOrder,
        _confirmPagination = confirmPagination;

  @override
  @JsonKey()
  final bool loading;
  final List<OrdersDoneList> _orderDoneList;
  @override
  @JsonKey()
  List<OrdersDoneList> get orderDoneList {
    if (_orderDoneList is EqualUnmodifiableListView) return _orderDoneList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderDoneList);
  }

  @override
  @JsonKey()
  final bool confirmLoading;
  final List<ConfirmAll?> _confirmAll;
  @override
  @JsonKey()
  List<ConfirmAll?> get confirmAll {
    if (_confirmAll is EqualUnmodifiableListView) return _confirmAll;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_confirmAll);
  }

  final List<ConfirmPagination?> _confirmAllOrder;
  @override
  @JsonKey()
  List<ConfirmPagination?> get confirmAllOrder {
    if (_confirmAllOrder is EqualUnmodifiableListView) return _confirmAllOrder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_confirmAllOrder);
  }

  @override
  @JsonKey()
  final int pageNumber;
// Default sahifa raqami 1
  @override
  @JsonKey()
  final int totalPages;
// Total sahifalar
  @override
  @JsonKey()
  final int currentPage;
// Total sahifalar
  @override
  final int? count;
// Ma'lumotlar soni
  @override
  final String? next;
// Keyingi sahifa (agar bo'lsa)
  @override
  final String? previous;
// Oldingi sahifa (agar bo'lsa)
  final List<Result>? _confirmPagination;
// Oldingi sahifa (agar bo'lsa)
  @override
  List<Result>? get confirmPagination {
    final value = _confirmPagination;
    if (value == null) return null;
    if (_confirmPagination is EqualUnmodifiableListView)
      return _confirmPagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Ma'lumotlar ro'yxati
  @override
  final PagingController<int, Result>? locationController;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'DoneBuildable(loading: $loading, orderDoneList: $orderDoneList, confirmLoading: $confirmLoading, confirmAll: $confirmAll, confirmAllOrder: $confirmAllOrder, pageNumber: $pageNumber, totalPages: $totalPages, currentPage: $currentPage, count: $count, next: $next, previous: $previous, confirmPagination: $confirmPagination, locationController: $locationController, hasMore: $hasMore, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._orderDoneList, _orderDoneList) &&
            (identical(other.confirmLoading, confirmLoading) ||
                other.confirmLoading == confirmLoading) &&
            const DeepCollectionEquality()
                .equals(other._confirmAll, _confirmAll) &&
            const DeepCollectionEquality()
                .equals(other._confirmAllOrder, _confirmAllOrder) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality()
                .equals(other._confirmPagination, _confirmPagination) &&
            (identical(other.locationController, locationController) ||
                other.locationController == locationController) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      const DeepCollectionEquality().hash(_orderDoneList),
      confirmLoading,
      const DeepCollectionEquality().hash(_confirmAll),
      const DeepCollectionEquality().hash(_confirmAllOrder),
      pageNumber,
      totalPages,
      currentPage,
      count,
      next,
      previous,
      const DeepCollectionEquality().hash(_confirmPagination),
      locationController,
      hasMore,
      isLoading);

  /// Create a copy of DoneBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneBuildableImplCopyWith<_$DoneBuildableImpl> get copyWith =>
      __$$DoneBuildableImplCopyWithImpl<_$DoneBuildableImpl>(this, _$identity);
}

abstract class _DoneBuildable implements DoneBuildable {
  const factory _DoneBuildable(
      {final bool loading,
      final List<OrdersDoneList> orderDoneList,
      final bool confirmLoading,
      final List<ConfirmAll?> confirmAll,
      final List<ConfirmPagination?> confirmAllOrder,
      final int pageNumber,
      final int totalPages,
      final int currentPage,
      final int? count,
      final String? next,
      final String? previous,
      final List<Result>? confirmPagination,
      final PagingController<int, Result>? locationController,
      final bool hasMore,
      final bool isLoading}) = _$DoneBuildableImpl;

  @override
  bool get loading;
  @override
  List<OrdersDoneList> get orderDoneList;
  @override
  bool get confirmLoading;
  @override
  List<ConfirmAll?> get confirmAll;
  @override
  List<ConfirmPagination?> get confirmAllOrder;
  @override
  int get pageNumber; // Default sahifa raqami 1
  @override
  int get totalPages; // Total sahifalar
  @override
  int get currentPage; // Total sahifalar
  @override
  int? get count; // Ma'lumotlar soni
  @override
  String? get next; // Keyingi sahifa (agar bo'lsa)
  @override
  String? get previous; // Oldingi sahifa (agar bo'lsa)
  @override
  List<Result>? get confirmPagination; // Ma'lumotlar ro'yxati
  @override
  PagingController<int, Result>? get locationController;
  @override
  bool get hasMore;
  @override
  bool get isLoading;

  /// Create a copy of DoneBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoneBuildableImplCopyWith<_$DoneBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoneListenable {}

/// @nodoc
abstract class $DoneListenableCopyWith<$Res> {
  factory $DoneListenableCopyWith(
          DoneListenable value, $Res Function(DoneListenable) then) =
      _$DoneListenableCopyWithImpl<$Res, DoneListenable>;
}

/// @nodoc
class _$DoneListenableCopyWithImpl<$Res, $Val extends DoneListenable>
    implements $DoneListenableCopyWith<$Res> {
  _$DoneListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoneListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DoneListenableImplCopyWith<$Res> {
  factory _$$DoneListenableImplCopyWith(_$DoneListenableImpl value,
          $Res Function(_$DoneListenableImpl) then) =
      __$$DoneListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoneListenableImplCopyWithImpl<$Res>
    extends _$DoneListenableCopyWithImpl<$Res, _$DoneListenableImpl>
    implements _$$DoneListenableImplCopyWith<$Res> {
  __$$DoneListenableImplCopyWithImpl(
      _$DoneListenableImpl _value, $Res Function(_$DoneListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoneListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DoneListenableImpl implements _DoneListenable {
  const _$DoneListenableImpl();

  @override
  String toString() {
    return 'DoneListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoneListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _DoneListenable implements DoneListenable {
  const factory _DoneListenable() = _$DoneListenableImpl;
}
