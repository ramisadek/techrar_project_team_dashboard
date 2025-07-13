// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colleges_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CollegesModel {

 String get name; String get role; String get avatarUrl; bool get isOnline;
/// Create a copy of CollegesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollegesModelCopyWith<CollegesModel> get copyWith => _$CollegesModelCopyWithImpl<CollegesModel>(this as CollegesModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollegesModel&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline));
}


@override
int get hashCode => Object.hash(runtimeType,name,role,avatarUrl,isOnline);

@override
String toString() {
  return 'CollegesModel(name: $name, role: $role, avatarUrl: $avatarUrl, isOnline: $isOnline)';
}


}

/// @nodoc
abstract mixin class $CollegesModelCopyWith<$Res>  {
  factory $CollegesModelCopyWith(CollegesModel value, $Res Function(CollegesModel) _then) = _$CollegesModelCopyWithImpl;
@useResult
$Res call({
 String name, String role, String avatarUrl, bool isOnline
});




}
/// @nodoc
class _$CollegesModelCopyWithImpl<$Res>
    implements $CollegesModelCopyWith<$Res> {
  _$CollegesModelCopyWithImpl(this._self, this._then);

  final CollegesModel _self;
  final $Res Function(CollegesModel) _then;

/// Create a copy of CollegesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? role = null,Object? avatarUrl = null,Object? isOnline = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CollegesModel].
extension CollegesModelPatterns on CollegesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollegesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollegesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollegesModel value)  $default,){
final _that = this;
switch (_that) {
case _CollegesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollegesModel value)?  $default,){
final _that = this;
switch (_that) {
case _CollegesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String role,  String avatarUrl,  bool isOnline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollegesModel() when $default != null:
return $default(_that.name,_that.role,_that.avatarUrl,_that.isOnline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String role,  String avatarUrl,  bool isOnline)  $default,) {final _that = this;
switch (_that) {
case _CollegesModel():
return $default(_that.name,_that.role,_that.avatarUrl,_that.isOnline);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String role,  String avatarUrl,  bool isOnline)?  $default,) {final _that = this;
switch (_that) {
case _CollegesModel() when $default != null:
return $default(_that.name,_that.role,_that.avatarUrl,_that.isOnline);case _:
  return null;

}
}

}

/// @nodoc


class _CollegesModel implements CollegesModel {
  const _CollegesModel({required this.name, required this.role, required this.avatarUrl, required this.isOnline});
  

@override final  String name;
@override final  String role;
@override final  String avatarUrl;
@override final  bool isOnline;

/// Create a copy of CollegesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollegesModelCopyWith<_CollegesModel> get copyWith => __$CollegesModelCopyWithImpl<_CollegesModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollegesModel&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline));
}


@override
int get hashCode => Object.hash(runtimeType,name,role,avatarUrl,isOnline);

@override
String toString() {
  return 'CollegesModel(name: $name, role: $role, avatarUrl: $avatarUrl, isOnline: $isOnline)';
}


}

/// @nodoc
abstract mixin class _$CollegesModelCopyWith<$Res> implements $CollegesModelCopyWith<$Res> {
  factory _$CollegesModelCopyWith(_CollegesModel value, $Res Function(_CollegesModel) _then) = __$CollegesModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String role, String avatarUrl, bool isOnline
});




}
/// @nodoc
class __$CollegesModelCopyWithImpl<$Res>
    implements _$CollegesModelCopyWith<$Res> {
  __$CollegesModelCopyWithImpl(this._self, this._then);

  final _CollegesModel _self;
  final $Res Function(_CollegesModel) _then;

/// Create a copy of CollegesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? role = null,Object? avatarUrl = null,Object? isOnline = null,}) {
  return _then(_CollegesModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
