// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riskified_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RiskifiedModel {

 bool get isVpnSpoofed; bool get isProxySpoofed;
/// Create a copy of RiskifiedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskifiedModelCopyWith<RiskifiedModel> get copyWith => _$RiskifiedModelCopyWithImpl<RiskifiedModel>(this as RiskifiedModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskifiedModel&&(identical(other.isVpnSpoofed, isVpnSpoofed) || other.isVpnSpoofed == isVpnSpoofed)&&(identical(other.isProxySpoofed, isProxySpoofed) || other.isProxySpoofed == isProxySpoofed));
}


@override
int get hashCode => Object.hash(runtimeType,isVpnSpoofed,isProxySpoofed);

@override
String toString() {
  return 'RiskifiedModel(isVpnSpoofed: $isVpnSpoofed, isProxySpoofed: $isProxySpoofed)';
}


}

/// @nodoc
abstract mixin class $RiskifiedModelCopyWith<$Res>  {
  factory $RiskifiedModelCopyWith(RiskifiedModel value, $Res Function(RiskifiedModel) _then) = _$RiskifiedModelCopyWithImpl;
@useResult
$Res call({
 bool isVpnSpoofed, bool isProxySpoofed
});




}
/// @nodoc
class _$RiskifiedModelCopyWithImpl<$Res>
    implements $RiskifiedModelCopyWith<$Res> {
  _$RiskifiedModelCopyWithImpl(this._self, this._then);

  final RiskifiedModel _self;
  final $Res Function(RiskifiedModel) _then;

/// Create a copy of RiskifiedModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isVpnSpoofed = null,Object? isProxySpoofed = null,}) {
  return _then(_self.copyWith(
isVpnSpoofed: null == isVpnSpoofed ? _self.isVpnSpoofed : isVpnSpoofed // ignore: cast_nullable_to_non_nullable
as bool,isProxySpoofed: null == isProxySpoofed ? _self.isProxySpoofed : isProxySpoofed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskifiedModel].
extension RiskifiedModelPatterns on RiskifiedModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskifiedModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskifiedModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskifiedModel value)  $default,){
final _that = this;
switch (_that) {
case _RiskifiedModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskifiedModel value)?  $default,){
final _that = this;
switch (_that) {
case _RiskifiedModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isVpnSpoofed,  bool isProxySpoofed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskifiedModel() when $default != null:
return $default(_that.isVpnSpoofed,_that.isProxySpoofed);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isVpnSpoofed,  bool isProxySpoofed)  $default,) {final _that = this;
switch (_that) {
case _RiskifiedModel():
return $default(_that.isVpnSpoofed,_that.isProxySpoofed);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isVpnSpoofed,  bool isProxySpoofed)?  $default,) {final _that = this;
switch (_that) {
case _RiskifiedModel() when $default != null:
return $default(_that.isVpnSpoofed,_that.isProxySpoofed);case _:
  return null;

}
}

}

/// @nodoc


class _RiskifiedModel extends RiskifiedModel {
  const _RiskifiedModel({required this.isVpnSpoofed, required this.isProxySpoofed}): super._();
  

@override final  bool isVpnSpoofed;
@override final  bool isProxySpoofed;

/// Create a copy of RiskifiedModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskifiedModelCopyWith<_RiskifiedModel> get copyWith => __$RiskifiedModelCopyWithImpl<_RiskifiedModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskifiedModel&&(identical(other.isVpnSpoofed, isVpnSpoofed) || other.isVpnSpoofed == isVpnSpoofed)&&(identical(other.isProxySpoofed, isProxySpoofed) || other.isProxySpoofed == isProxySpoofed));
}


@override
int get hashCode => Object.hash(runtimeType,isVpnSpoofed,isProxySpoofed);

@override
String toString() {
  return 'RiskifiedModel(isVpnSpoofed: $isVpnSpoofed, isProxySpoofed: $isProxySpoofed)';
}


}

/// @nodoc
abstract mixin class _$RiskifiedModelCopyWith<$Res> implements $RiskifiedModelCopyWith<$Res> {
  factory _$RiskifiedModelCopyWith(_RiskifiedModel value, $Res Function(_RiskifiedModel) _then) = __$RiskifiedModelCopyWithImpl;
@override @useResult
$Res call({
 bool isVpnSpoofed, bool isProxySpoofed
});




}
/// @nodoc
class __$RiskifiedModelCopyWithImpl<$Res>
    implements _$RiskifiedModelCopyWith<$Res> {
  __$RiskifiedModelCopyWithImpl(this._self, this._then);

  final _RiskifiedModel _self;
  final $Res Function(_RiskifiedModel) _then;

/// Create a copy of RiskifiedModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isVpnSpoofed = null,Object? isProxySpoofed = null,}) {
  return _then(_RiskifiedModel(
isVpnSpoofed: null == isVpnSpoofed ? _self.isVpnSpoofed : isVpnSpoofed // ignore: cast_nullable_to_non_nullable
as bool,isProxySpoofed: null == isProxySpoofed ? _self.isProxySpoofed : isProxySpoofed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
