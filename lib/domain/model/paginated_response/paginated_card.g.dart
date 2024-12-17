// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedCardImpl _$$PaginatedCardImplFromJson(Map<String, dynamic> json) =>
    _$PaginatedCardImpl(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PaginatedCardImplToJson(_$PaginatedCardImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: (json['id'] as num?)?.toInt(),
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      time: json['time'] as String?,
      total_price: (json['total_price'] as num?)?.toInt(),
      user_type: $enumDecodeNullable(_$UserTypeEnumMap, json['user_type']),
      user_full_name:
          $enumDecodeNullable(_$UserFullNameEnumMap, json['user_full_name']),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cart': instance.cart,
      'date': instance.date?.toIso8601String(),
      'time': instance.time,
      'total_price': instance.total_price,
      'user_type': _$UserTypeEnumMap[instance.user_type],
      'user_full_name': _$UserFullNameEnumMap[instance.user_full_name],
    };

const _$UserTypeEnumMap = {
  UserType.KASSIR: 'KASSIR',
  UserType.OFITSANT: 'OFITSANT',
};

const _$UserFullNameEnumMap = {
  UserFullName.EMPTY: 'EMPTY',
};

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      id: (json['id'] as num?)?.toInt(),
      table_number: (json['table_number'] as num?)?.toInt(),
      cart_items: (json['cart_items'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'table_number': instance.table_number,
      'cart_items': instance.cart_items,
    };

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      id: (json['id'] as num?)?.toInt(),
      food: json['food'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'food': instance.food,
      'quantity': instance.quantity,
    };
