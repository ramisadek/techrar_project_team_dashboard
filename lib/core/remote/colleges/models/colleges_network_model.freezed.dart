// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colleges_network_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CollegesListNetworkModel {

@JsonKey(name: 'data') List<CollegesNetworkModel> get collegesList;
/// Create a copy of CollegesListNetworkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollegesListNetworkModelCopyWith<CollegesListNetworkModel> get copyWith => _$CollegesListNetworkModelCopyWithImpl<CollegesListNetworkModel>(this as CollegesListNetworkModel, _$identity);

  /// Serializes this CollegesListNetworkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollegesListNetworkModel&&const DeepCollectionEquality().equals(other.collegesList, collegesList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(collegesList));

@override
String toString() {
  return 'CollegesListNetworkModel(collegesList: $collegesList)';
}


}

/// @nodoc
abstract mixin class $CollegesListNetworkModelCopyWith<$Res>  {
  factory $CollegesListNetworkModelCopyWith(CollegesListNetworkModel value, $Res Function(CollegesListNetworkModel) _then) = _$CollegesListNetworkModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<CollegesNetworkModel> collegesList
});




}
/// @nodoc
class _$CollegesListNetworkModelCopyWithImpl<$Res>
    implements $CollegesListNetworkModelCopyWith<$Res> {
  _$CollegesListNetworkModelCopyWithImpl(this._self, this._then);

  final CollegesListNetworkModel _self;
  final $Res Function(CollegesListNetworkModel) _then;

/// Create a copy of CollegesListNetworkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collegesList = null,}) {
  return _then(_self.copyWith(
collegesList: null == collegesList ? _self.collegesList : collegesList // ignore: cast_nullable_to_non_nullable
as List<CollegesNetworkModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CollegesListNetworkModel].
extension CollegesListNetworkModelPatterns on CollegesListNetworkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollegesListNetworkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollegesListNetworkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollegesListNetworkModel value)  $default,){
final _that = this;
switch (_that) {
case _CollegesListNetworkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollegesListNetworkModel value)?  $default,){
final _that = this;
switch (_that) {
case _CollegesListNetworkModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<CollegesNetworkModel> collegesList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollegesListNetworkModel() when $default != null:
return $default(_that.collegesList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<CollegesNetworkModel> collegesList)  $default,) {final _that = this;
switch (_that) {
case _CollegesListNetworkModel():
return $default(_that.collegesList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<CollegesNetworkModel> collegesList)?  $default,) {final _that = this;
switch (_that) {
case _CollegesListNetworkModel() when $default != null:
return $default(_that.collegesList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CollegesListNetworkModel extends CollegesListNetworkModel {
  const _CollegesListNetworkModel({@JsonKey(name: 'data') final  List<CollegesNetworkModel> collegesList = const []}): _collegesList = collegesList,super._();
  factory _CollegesListNetworkModel.fromJson(Map<String, dynamic> json) => _$CollegesListNetworkModelFromJson(json);

 final  List<CollegesNetworkModel> _collegesList;
@override@JsonKey(name: 'data') List<CollegesNetworkModel> get collegesList {
  if (_collegesList is EqualUnmodifiableListView) return _collegesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_collegesList);
}


/// Create a copy of CollegesListNetworkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollegesListNetworkModelCopyWith<_CollegesListNetworkModel> get copyWith => __$CollegesListNetworkModelCopyWithImpl<_CollegesListNetworkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollegesListNetworkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollegesListNetworkModel&&const DeepCollectionEquality().equals(other._collegesList, _collegesList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_collegesList));

@override
String toString() {
  return 'CollegesListNetworkModel(collegesList: $collegesList)';
}


}

/// @nodoc
abstract mixin class _$CollegesListNetworkModelCopyWith<$Res> implements $CollegesListNetworkModelCopyWith<$Res> {
  factory _$CollegesListNetworkModelCopyWith(_CollegesListNetworkModel value, $Res Function(_CollegesListNetworkModel) _then) = __$CollegesListNetworkModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<CollegesNetworkModel> collegesList
});




}
/// @nodoc
class __$CollegesListNetworkModelCopyWithImpl<$Res>
    implements _$CollegesListNetworkModelCopyWith<$Res> {
  __$CollegesListNetworkModelCopyWithImpl(this._self, this._then);

  final _CollegesListNetworkModel _self;
  final $Res Function(_CollegesListNetworkModel) _then;

/// Create a copy of CollegesListNetworkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collegesList = null,}) {
  return _then(_CollegesListNetworkModel(
collegesList: null == collegesList ? _self._collegesList : collegesList // ignore: cast_nullable_to_non_nullable
as List<CollegesNetworkModel>,
  ));
}


}


/// @nodoc
mixin _$CollegesNetworkModel {

 String get name; String get role; String get avatarUrl; bool get isOnline;
/// Create a copy of CollegesNetworkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollegesNetworkModelCopyWith<CollegesNetworkModel> get copyWith => _$CollegesNetworkModelCopyWithImpl<CollegesNetworkModel>(this as CollegesNetworkModel, _$identity);

  /// Serializes this CollegesNetworkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollegesNetworkModel&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,role,avatarUrl,isOnline);

@override
String toString() {
  return 'CollegesNetworkModel(name: $name, role: $role, avatarUrl: $avatarUrl, isOnline: $isOnline)';
}


}

/// @nodoc
abstract mixin class $CollegesNetworkModelCopyWith<$Res>  {
  factory $CollegesNetworkModelCopyWith(CollegesNetworkModel value, $Res Function(CollegesNetworkModel) _then) = _$CollegesNetworkModelCopyWithImpl;
@useResult
$Res call({
 String name, String role, String avatarUrl, bool isOnline
});




}
/// @nodoc
class _$CollegesNetworkModelCopyWithImpl<$Res>
    implements $CollegesNetworkModelCopyWith<$Res> {
  _$CollegesNetworkModelCopyWithImpl(this._self, this._then);

  final CollegesNetworkModel _self;
  final $Res Function(CollegesNetworkModel) _then;

/// Create a copy of CollegesNetworkModel
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


/// Adds pattern-matching-related methods to [CollegesNetworkModel].
extension CollegesNetworkModelPatterns on CollegesNetworkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollegesNetworkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollegesNetworkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollegesNetworkModel value)  $default,){
final _that = this;
switch (_that) {
case _CollegesNetworkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollegesNetworkModel value)?  $default,){
final _that = this;
switch (_that) {
case _CollegesNetworkModel() when $default != null:
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
case _CollegesNetworkModel() when $default != null:
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
case _CollegesNetworkModel():
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
case _CollegesNetworkModel() when $default != null:
return $default(_that.name,_that.role,_that.avatarUrl,_that.isOnline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CollegesNetworkModel extends CollegesNetworkModel {
  const _CollegesNetworkModel({this.name = "", this.role = "", this.avatarUrl = "", this.isOnline = false}): super._();
  factory _CollegesNetworkModel.fromJson(Map<String, dynamic> json) => _$CollegesNetworkModelFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  String role;
@override@JsonKey() final  String avatarUrl;
@override@JsonKey() final  bool isOnline;

/// Create a copy of CollegesNetworkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollegesNetworkModelCopyWith<_CollegesNetworkModel> get copyWith => __$CollegesNetworkModelCopyWithImpl<_CollegesNetworkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollegesNetworkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollegesNetworkModel&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,role,avatarUrl,isOnline);

@override
String toString() {
  return 'CollegesNetworkModel(name: $name, role: $role, avatarUrl: $avatarUrl, isOnline: $isOnline)';
}


}

/// @nodoc
abstract mixin class _$CollegesNetworkModelCopyWith<$Res> implements $CollegesNetworkModelCopyWith<$Res> {
  factory _$CollegesNetworkModelCopyWith(_CollegesNetworkModel value, $Res Function(_CollegesNetworkModel) _then) = __$CollegesNetworkModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String role, String avatarUrl, bool isOnline
});




}
/// @nodoc
class __$CollegesNetworkModelCopyWithImpl<$Res>
    implements _$CollegesNetworkModelCopyWith<$Res> {
  __$CollegesNetworkModelCopyWithImpl(this._self, this._then);

  final _CollegesNetworkModel _self;
  final $Res Function(_CollegesNetworkModel) _then;

/// Create a copy of CollegesNetworkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? role = null,Object? avatarUrl = null,Object? isOnline = null,}) {
  return _then(_CollegesNetworkModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
