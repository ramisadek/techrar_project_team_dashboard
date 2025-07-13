// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeModel {

 Themes get currentTheme; ColorScheme get currentOsColorTheme; TextTheme get currentOsTextTheme; AppColorThemeContract get currentAppColorTheme; AppTextThemeContract get currentAppTextTheme;
/// Create a copy of ThemeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeModelCopyWith<ThemeModel> get copyWith => _$ThemeModelCopyWithImpl<ThemeModel>(this as ThemeModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeModel&&(identical(other.currentTheme, currentTheme) || other.currentTheme == currentTheme)&&(identical(other.currentOsColorTheme, currentOsColorTheme) || other.currentOsColorTheme == currentOsColorTheme)&&(identical(other.currentOsTextTheme, currentOsTextTheme) || other.currentOsTextTheme == currentOsTextTheme)&&(identical(other.currentAppColorTheme, currentAppColorTheme) || other.currentAppColorTheme == currentAppColorTheme)&&(identical(other.currentAppTextTheme, currentAppTextTheme) || other.currentAppTextTheme == currentAppTextTheme));
}


@override
int get hashCode => Object.hash(runtimeType,currentTheme,currentOsColorTheme,currentOsTextTheme,currentAppColorTheme,currentAppTextTheme);

@override
String toString() {
  return 'ThemeModel(currentTheme: $currentTheme, currentOsColorTheme: $currentOsColorTheme, currentOsTextTheme: $currentOsTextTheme, currentAppColorTheme: $currentAppColorTheme, currentAppTextTheme: $currentAppTextTheme)';
}


}

/// @nodoc
abstract mixin class $ThemeModelCopyWith<$Res>  {
  factory $ThemeModelCopyWith(ThemeModel value, $Res Function(ThemeModel) _then) = _$ThemeModelCopyWithImpl;
@useResult
$Res call({
 Themes currentTheme, ColorScheme currentOsColorTheme, TextTheme currentOsTextTheme, AppColorThemeContract currentAppColorTheme, AppTextThemeContract currentAppTextTheme
});




}
/// @nodoc
class _$ThemeModelCopyWithImpl<$Res>
    implements $ThemeModelCopyWith<$Res> {
  _$ThemeModelCopyWithImpl(this._self, this._then);

  final ThemeModel _self;
  final $Res Function(ThemeModel) _then;

/// Create a copy of ThemeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentTheme = null,Object? currentOsColorTheme = null,Object? currentOsTextTheme = null,Object? currentAppColorTheme = null,Object? currentAppTextTheme = null,}) {
  return _then(_self.copyWith(
currentTheme: null == currentTheme ? _self.currentTheme : currentTheme // ignore: cast_nullable_to_non_nullable
as Themes,currentOsColorTheme: null == currentOsColorTheme ? _self.currentOsColorTheme : currentOsColorTheme // ignore: cast_nullable_to_non_nullable
as ColorScheme,currentOsTextTheme: null == currentOsTextTheme ? _self.currentOsTextTheme : currentOsTextTheme // ignore: cast_nullable_to_non_nullable
as TextTheme,currentAppColorTheme: null == currentAppColorTheme ? _self.currentAppColorTheme : currentAppColorTheme // ignore: cast_nullable_to_non_nullable
as AppColorThemeContract,currentAppTextTheme: null == currentAppTextTheme ? _self.currentAppTextTheme : currentAppTextTheme // ignore: cast_nullable_to_non_nullable
as AppTextThemeContract,
  ));
}

}


/// Adds pattern-matching-related methods to [ThemeModel].
extension ThemeModelPatterns on ThemeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThemeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThemeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThemeModel value)  $default,){
final _that = this;
switch (_that) {
case _ThemeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThemeModel value)?  $default,){
final _that = this;
switch (_that) {
case _ThemeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Themes currentTheme,  ColorScheme currentOsColorTheme,  TextTheme currentOsTextTheme,  AppColorThemeContract currentAppColorTheme,  AppTextThemeContract currentAppTextTheme)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThemeModel() when $default != null:
return $default(_that.currentTheme,_that.currentOsColorTheme,_that.currentOsTextTheme,_that.currentAppColorTheme,_that.currentAppTextTheme);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Themes currentTheme,  ColorScheme currentOsColorTheme,  TextTheme currentOsTextTheme,  AppColorThemeContract currentAppColorTheme,  AppTextThemeContract currentAppTextTheme)  $default,) {final _that = this;
switch (_that) {
case _ThemeModel():
return $default(_that.currentTheme,_that.currentOsColorTheme,_that.currentOsTextTheme,_that.currentAppColorTheme,_that.currentAppTextTheme);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Themes currentTheme,  ColorScheme currentOsColorTheme,  TextTheme currentOsTextTheme,  AppColorThemeContract currentAppColorTheme,  AppTextThemeContract currentAppTextTheme)?  $default,) {final _that = this;
switch (_that) {
case _ThemeModel() when $default != null:
return $default(_that.currentTheme,_that.currentOsColorTheme,_that.currentOsTextTheme,_that.currentAppColorTheme,_that.currentAppTextTheme);case _:
  return null;

}
}

}

/// @nodoc


class _ThemeModel implements ThemeModel {
  const _ThemeModel({required this.currentTheme, required this.currentOsColorTheme, required this.currentOsTextTheme, required this.currentAppColorTheme, required this.currentAppTextTheme});
  

@override final  Themes currentTheme;
@override final  ColorScheme currentOsColorTheme;
@override final  TextTheme currentOsTextTheme;
@override final  AppColorThemeContract currentAppColorTheme;
@override final  AppTextThemeContract currentAppTextTheme;

/// Create a copy of ThemeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeModelCopyWith<_ThemeModel> get copyWith => __$ThemeModelCopyWithImpl<_ThemeModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeModel&&(identical(other.currentTheme, currentTheme) || other.currentTheme == currentTheme)&&(identical(other.currentOsColorTheme, currentOsColorTheme) || other.currentOsColorTheme == currentOsColorTheme)&&(identical(other.currentOsTextTheme, currentOsTextTheme) || other.currentOsTextTheme == currentOsTextTheme)&&(identical(other.currentAppColorTheme, currentAppColorTheme) || other.currentAppColorTheme == currentAppColorTheme)&&(identical(other.currentAppTextTheme, currentAppTextTheme) || other.currentAppTextTheme == currentAppTextTheme));
}


@override
int get hashCode => Object.hash(runtimeType,currentTheme,currentOsColorTheme,currentOsTextTheme,currentAppColorTheme,currentAppTextTheme);

@override
String toString() {
  return 'ThemeModel(currentTheme: $currentTheme, currentOsColorTheme: $currentOsColorTheme, currentOsTextTheme: $currentOsTextTheme, currentAppColorTheme: $currentAppColorTheme, currentAppTextTheme: $currentAppTextTheme)';
}


}

/// @nodoc
abstract mixin class _$ThemeModelCopyWith<$Res> implements $ThemeModelCopyWith<$Res> {
  factory _$ThemeModelCopyWith(_ThemeModel value, $Res Function(_ThemeModel) _then) = __$ThemeModelCopyWithImpl;
@override @useResult
$Res call({
 Themes currentTheme, ColorScheme currentOsColorTheme, TextTheme currentOsTextTheme, AppColorThemeContract currentAppColorTheme, AppTextThemeContract currentAppTextTheme
});




}
/// @nodoc
class __$ThemeModelCopyWithImpl<$Res>
    implements _$ThemeModelCopyWith<$Res> {
  __$ThemeModelCopyWithImpl(this._self, this._then);

  final _ThemeModel _self;
  final $Res Function(_ThemeModel) _then;

/// Create a copy of ThemeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentTheme = null,Object? currentOsColorTheme = null,Object? currentOsTextTheme = null,Object? currentAppColorTheme = null,Object? currentAppTextTheme = null,}) {
  return _then(_ThemeModel(
currentTheme: null == currentTheme ? _self.currentTheme : currentTheme // ignore: cast_nullable_to_non_nullable
as Themes,currentOsColorTheme: null == currentOsColorTheme ? _self.currentOsColorTheme : currentOsColorTheme // ignore: cast_nullable_to_non_nullable
as ColorScheme,currentOsTextTheme: null == currentOsTextTheme ? _self.currentOsTextTheme : currentOsTextTheme // ignore: cast_nullable_to_non_nullable
as TextTheme,currentAppColorTheme: null == currentAppColorTheme ? _self.currentAppColorTheme : currentAppColorTheme // ignore: cast_nullable_to_non_nullable
as AppColorThemeContract,currentAppTextTheme: null == currentAppTextTheme ? _self.currentAppTextTheme : currentAppTextTheme // ignore: cast_nullable_to_non_nullable
as AppTextThemeContract,
  ));
}


}

// dart format on
