// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'risk_signal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RiskSignalModel {

 bool get isVpn; bool get isEmulator; bool get isMacSpoofed; bool get isDnsSpoofed; bool get isProxySpoofed;
/// Create a copy of RiskSignalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskSignalModelCopyWith<RiskSignalModel> get copyWith => _$RiskSignalModelCopyWithImpl<RiskSignalModel>(this as RiskSignalModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskSignalModel&&(identical(other.isVpn, isVpn) || other.isVpn == isVpn)&&(identical(other.isEmulator, isEmulator) || other.isEmulator == isEmulator)&&(identical(other.isMacSpoofed, isMacSpoofed) || other.isMacSpoofed == isMacSpoofed)&&(identical(other.isDnsSpoofed, isDnsSpoofed) || other.isDnsSpoofed == isDnsSpoofed)&&(identical(other.isProxySpoofed, isProxySpoofed) || other.isProxySpoofed == isProxySpoofed));
}


@override
int get hashCode => Object.hash(runtimeType,isVpn,isEmulator,isMacSpoofed,isDnsSpoofed,isProxySpoofed);

@override
String toString() {
  return 'RiskSignalModel(isVpn: $isVpn, isEmulator: $isEmulator, isMacSpoofed: $isMacSpoofed, isDnsSpoofed: $isDnsSpoofed, isProxySpoofed: $isProxySpoofed)';
}


}

/// @nodoc
abstract mixin class $RiskSignalModelCopyWith<$Res>  {
  factory $RiskSignalModelCopyWith(RiskSignalModel value, $Res Function(RiskSignalModel) _then) = _$RiskSignalModelCopyWithImpl;
@useResult
$Res call({
 bool isVpn, bool isEmulator, bool isMacSpoofed, bool isDnsSpoofed, bool isProxySpoofed
});




}
/// @nodoc
class _$RiskSignalModelCopyWithImpl<$Res>
    implements $RiskSignalModelCopyWith<$Res> {
  _$RiskSignalModelCopyWithImpl(this._self, this._then);

  final RiskSignalModel _self;
  final $Res Function(RiskSignalModel) _then;

/// Create a copy of RiskSignalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isVpn = null,Object? isEmulator = null,Object? isMacSpoofed = null,Object? isDnsSpoofed = null,Object? isProxySpoofed = null,}) {
  return _then(_self.copyWith(
isVpn: null == isVpn ? _self.isVpn : isVpn // ignore: cast_nullable_to_non_nullable
as bool,isEmulator: null == isEmulator ? _self.isEmulator : isEmulator // ignore: cast_nullable_to_non_nullable
as bool,isMacSpoofed: null == isMacSpoofed ? _self.isMacSpoofed : isMacSpoofed // ignore: cast_nullable_to_non_nullable
as bool,isDnsSpoofed: null == isDnsSpoofed ? _self.isDnsSpoofed : isDnsSpoofed // ignore: cast_nullable_to_non_nullable
as bool,isProxySpoofed: null == isProxySpoofed ? _self.isProxySpoofed : isProxySpoofed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskSignalModel].
extension RiskSignalModelPatterns on RiskSignalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskSignalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskSignalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskSignalModel value)  $default,){
final _that = this;
switch (_that) {
case _RiskSignalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskSignalModel value)?  $default,){
final _that = this;
switch (_that) {
case _RiskSignalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isVpn,  bool isEmulator,  bool isMacSpoofed,  bool isDnsSpoofed,  bool isProxySpoofed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskSignalModel() when $default != null:
return $default(_that.isVpn,_that.isEmulator,_that.isMacSpoofed,_that.isDnsSpoofed,_that.isProxySpoofed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isVpn,  bool isEmulator,  bool isMacSpoofed,  bool isDnsSpoofed,  bool isProxySpoofed)  $default,) {final _that = this;
switch (_that) {
case _RiskSignalModel():
return $default(_that.isVpn,_that.isEmulator,_that.isMacSpoofed,_that.isDnsSpoofed,_that.isProxySpoofed);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isVpn,  bool isEmulator,  bool isMacSpoofed,  bool isDnsSpoofed,  bool isProxySpoofed)?  $default,) {final _that = this;
switch (_that) {
case _RiskSignalModel() when $default != null:
return $default(_that.isVpn,_that.isEmulator,_that.isMacSpoofed,_that.isDnsSpoofed,_that.isProxySpoofed);case _:
  return null;

}
}

}

/// @nodoc


class _RiskSignalModel extends RiskSignalModel {
  const _RiskSignalModel({required this.isVpn, required this.isEmulator, required this.isMacSpoofed, required this.isDnsSpoofed, required this.isProxySpoofed}): super._();
  

@override final  bool isVpn;
@override final  bool isEmulator;
@override final  bool isMacSpoofed;
@override final  bool isDnsSpoofed;
@override final  bool isProxySpoofed;

/// Create a copy of RiskSignalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskSignalModelCopyWith<_RiskSignalModel> get copyWith => __$RiskSignalModelCopyWithImpl<_RiskSignalModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskSignalModel&&(identical(other.isVpn, isVpn) || other.isVpn == isVpn)&&(identical(other.isEmulator, isEmulator) || other.isEmulator == isEmulator)&&(identical(other.isMacSpoofed, isMacSpoofed) || other.isMacSpoofed == isMacSpoofed)&&(identical(other.isDnsSpoofed, isDnsSpoofed) || other.isDnsSpoofed == isDnsSpoofed)&&(identical(other.isProxySpoofed, isProxySpoofed) || other.isProxySpoofed == isProxySpoofed));
}


@override
int get hashCode => Object.hash(runtimeType,isVpn,isEmulator,isMacSpoofed,isDnsSpoofed,isProxySpoofed);

@override
String toString() {
  return 'RiskSignalModel(isVpn: $isVpn, isEmulator: $isEmulator, isMacSpoofed: $isMacSpoofed, isDnsSpoofed: $isDnsSpoofed, isProxySpoofed: $isProxySpoofed)';
}


}

/// @nodoc
abstract mixin class _$RiskSignalModelCopyWith<$Res> implements $RiskSignalModelCopyWith<$Res> {
  factory _$RiskSignalModelCopyWith(_RiskSignalModel value, $Res Function(_RiskSignalModel) _then) = __$RiskSignalModelCopyWithImpl;
@override @useResult
$Res call({
 bool isVpn, bool isEmulator, bool isMacSpoofed, bool isDnsSpoofed, bool isProxySpoofed
});




}
/// @nodoc
class __$RiskSignalModelCopyWithImpl<$Res>
    implements _$RiskSignalModelCopyWith<$Res> {
  __$RiskSignalModelCopyWithImpl(this._self, this._then);

  final _RiskSignalModel _self;
  final $Res Function(_RiskSignalModel) _then;

/// Create a copy of RiskSignalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isVpn = null,Object? isEmulator = null,Object? isMacSpoofed = null,Object? isDnsSpoofed = null,Object? isProxySpoofed = null,}) {
  return _then(_RiskSignalModel(
isVpn: null == isVpn ? _self.isVpn : isVpn // ignore: cast_nullable_to_non_nullable
as bool,isEmulator: null == isEmulator ? _self.isEmulator : isEmulator // ignore: cast_nullable_to_non_nullable
as bool,isMacSpoofed: null == isMacSpoofed ? _self.isMacSpoofed : isMacSpoofed // ignore: cast_nullable_to_non_nullable
as bool,isDnsSpoofed: null == isDnsSpoofed ? _self.isDnsSpoofed : isDnsSpoofed // ignore: cast_nullable_to_non_nullable
as bool,isProxySpoofed: null == isProxySpoofed ? _self.isProxySpoofed : isProxySpoofed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
