// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dio_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DioResponse {

 Response get response; DioException? get dioException; Exception? get normalException; StackTrace? get stackTrace;
/// Create a copy of DioResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DioResponseCopyWith<DioResponse> get copyWith => _$DioResponseCopyWithImpl<DioResponse>(this as DioResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DioResponse&&(identical(other.response, response) || other.response == response)&&(identical(other.dioException, dioException) || other.dioException == dioException)&&(identical(other.normalException, normalException) || other.normalException == normalException)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,response,dioException,normalException,stackTrace);

@override
String toString() {
  return 'DioResponse(response: $response, dioException: $dioException, normalException: $normalException, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $DioResponseCopyWith<$Res>  {
  factory $DioResponseCopyWith(DioResponse value, $Res Function(DioResponse) _then) = _$DioResponseCopyWithImpl;
@useResult
$Res call({
 Response response, DioException? dioException, Exception? normalException, StackTrace? stackTrace
});




}
/// @nodoc
class _$DioResponseCopyWithImpl<$Res>
    implements $DioResponseCopyWith<$Res> {
  _$DioResponseCopyWithImpl(this._self, this._then);

  final DioResponse _self;
  final $Res Function(DioResponse) _then;

/// Create a copy of DioResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? response = null,Object? dioException = freezed,Object? normalException = freezed,Object? stackTrace = freezed,}) {
  return _then(_self.copyWith(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as Response,dioException: freezed == dioException ? _self.dioException : dioException // ignore: cast_nullable_to_non_nullable
as DioException?,normalException: freezed == normalException ? _self.normalException : normalException // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

}


/// Adds pattern-matching-related methods to [DioResponse].
extension DioResponsePatterns on DioResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DioResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DioResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DioResponse value)  $default,){
final _that = this;
switch (_that) {
case _DioResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DioResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DioResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Response response,  DioException? dioException,  Exception? normalException,  StackTrace? stackTrace)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DioResponse() when $default != null:
return $default(_that.response,_that.dioException,_that.normalException,_that.stackTrace);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Response response,  DioException? dioException,  Exception? normalException,  StackTrace? stackTrace)  $default,) {final _that = this;
switch (_that) {
case _DioResponse():
return $default(_that.response,_that.dioException,_that.normalException,_that.stackTrace);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Response response,  DioException? dioException,  Exception? normalException,  StackTrace? stackTrace)?  $default,) {final _that = this;
switch (_that) {
case _DioResponse() when $default != null:
return $default(_that.response,_that.dioException,_that.normalException,_that.stackTrace);case _:
  return null;

}
}

}

/// @nodoc


class _DioResponse extends DioResponse {
  const _DioResponse({required this.response, this.dioException, this.normalException, this.stackTrace}): super._();
  

@override final  Response response;
@override final  DioException? dioException;
@override final  Exception? normalException;
@override final  StackTrace? stackTrace;

/// Create a copy of DioResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DioResponseCopyWith<_DioResponse> get copyWith => __$DioResponseCopyWithImpl<_DioResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DioResponse&&(identical(other.response, response) || other.response == response)&&(identical(other.dioException, dioException) || other.dioException == dioException)&&(identical(other.normalException, normalException) || other.normalException == normalException)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,response,dioException,normalException,stackTrace);

@override
String toString() {
  return 'DioResponse(response: $response, dioException: $dioException, normalException: $normalException, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class _$DioResponseCopyWith<$Res> implements $DioResponseCopyWith<$Res> {
  factory _$DioResponseCopyWith(_DioResponse value, $Res Function(_DioResponse) _then) = __$DioResponseCopyWithImpl;
@override @useResult
$Res call({
 Response response, DioException? dioException, Exception? normalException, StackTrace? stackTrace
});




}
/// @nodoc
class __$DioResponseCopyWithImpl<$Res>
    implements _$DioResponseCopyWith<$Res> {
  __$DioResponseCopyWithImpl(this._self, this._then);

  final _DioResponse _self;
  final $Res Function(_DioResponse) _then;

/// Create a copy of DioResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? response = null,Object? dioException = freezed,Object? normalException = freezed,Object? stackTrace = freezed,}) {
  return _then(_DioResponse(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as Response,dioException: freezed == dioException ? _self.dioException : dioException // ignore: cast_nullable_to_non_nullable
as DioException?,normalException: freezed == normalException ? _self.normalException : normalException // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
