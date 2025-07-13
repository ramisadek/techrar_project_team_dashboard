// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tasks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserTasksState {

 List<TaskModel> get userTasksList; bool get isFiltered;
/// Create a copy of UserTasksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserTasksStateCopyWith<UserTasksState> get copyWith => _$UserTasksStateCopyWithImpl<UserTasksState>(this as UserTasksState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserTasksState&&const DeepCollectionEquality().equals(other.userTasksList, userTasksList)&&(identical(other.isFiltered, isFiltered) || other.isFiltered == isFiltered));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(userTasksList),isFiltered);

@override
String toString() {
  return 'UserTasksState(userTasksList: $userTasksList, isFiltered: $isFiltered)';
}


}

/// @nodoc
abstract mixin class $UserTasksStateCopyWith<$Res>  {
  factory $UserTasksStateCopyWith(UserTasksState value, $Res Function(UserTasksState) _then) = _$UserTasksStateCopyWithImpl;
@useResult
$Res call({
 List<TaskModel> userTasksList, bool isFiltered
});




}
/// @nodoc
class _$UserTasksStateCopyWithImpl<$Res>
    implements $UserTasksStateCopyWith<$Res> {
  _$UserTasksStateCopyWithImpl(this._self, this._then);

  final UserTasksState _self;
  final $Res Function(UserTasksState) _then;

/// Create a copy of UserTasksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userTasksList = null,Object? isFiltered = null,}) {
  return _then(_self.copyWith(
userTasksList: null == userTasksList ? _self.userTasksList : userTasksList // ignore: cast_nullable_to_non_nullable
as List<TaskModel>,isFiltered: null == isFiltered ? _self.isFiltered : isFiltered // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserTasksState].
extension UserTasksStatePatterns on UserTasksState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserTasksState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserTasksState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserTasksState value)  $default,){
final _that = this;
switch (_that) {
case _UserTasksState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserTasksState value)?  $default,){
final _that = this;
switch (_that) {
case _UserTasksState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TaskModel> userTasksList,  bool isFiltered)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserTasksState() when $default != null:
return $default(_that.userTasksList,_that.isFiltered);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TaskModel> userTasksList,  bool isFiltered)  $default,) {final _that = this;
switch (_that) {
case _UserTasksState():
return $default(_that.userTasksList,_that.isFiltered);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TaskModel> userTasksList,  bool isFiltered)?  $default,) {final _that = this;
switch (_that) {
case _UserTasksState() when $default != null:
return $default(_that.userTasksList,_that.isFiltered);case _:
  return null;

}
}

}

/// @nodoc


class _UserTasksState implements UserTasksState {
  const _UserTasksState({required final  List<TaskModel> userTasksList, required this.isFiltered}): _userTasksList = userTasksList;
  

 final  List<TaskModel> _userTasksList;
@override List<TaskModel> get userTasksList {
  if (_userTasksList is EqualUnmodifiableListView) return _userTasksList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userTasksList);
}

@override final  bool isFiltered;

/// Create a copy of UserTasksState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserTasksStateCopyWith<_UserTasksState> get copyWith => __$UserTasksStateCopyWithImpl<_UserTasksState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserTasksState&&const DeepCollectionEquality().equals(other._userTasksList, _userTasksList)&&(identical(other.isFiltered, isFiltered) || other.isFiltered == isFiltered));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userTasksList),isFiltered);

@override
String toString() {
  return 'UserTasksState(userTasksList: $userTasksList, isFiltered: $isFiltered)';
}


}

/// @nodoc
abstract mixin class _$UserTasksStateCopyWith<$Res> implements $UserTasksStateCopyWith<$Res> {
  factory _$UserTasksStateCopyWith(_UserTasksState value, $Res Function(_UserTasksState) _then) = __$UserTasksStateCopyWithImpl;
@override @useResult
$Res call({
 List<TaskModel> userTasksList, bool isFiltered
});




}
/// @nodoc
class __$UserTasksStateCopyWithImpl<$Res>
    implements _$UserTasksStateCopyWith<$Res> {
  __$UserTasksStateCopyWithImpl(this._self, this._then);

  final _UserTasksState _self;
  final $Res Function(_UserTasksState) _then;

/// Create a copy of UserTasksState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userTasksList = null,Object? isFiltered = null,}) {
  return _then(_UserTasksState(
userTasksList: null == userTasksList ? _self._userTasksList : userTasksList // ignore: cast_nullable_to_non_nullable
as List<TaskModel>,isFiltered: null == isFiltered ? _self.isFiltered : isFiltered // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
