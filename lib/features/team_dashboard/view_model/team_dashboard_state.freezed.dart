// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TeamDashboardState {

 List<CollegesModel> get collegesList; List<TaskModel> get recentTaskList;
/// Create a copy of TeamDashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamDashboardStateCopyWith<TeamDashboardState> get copyWith => _$TeamDashboardStateCopyWithImpl<TeamDashboardState>(this as TeamDashboardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamDashboardState&&const DeepCollectionEquality().equals(other.collegesList, collegesList)&&const DeepCollectionEquality().equals(other.recentTaskList, recentTaskList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(collegesList),const DeepCollectionEquality().hash(recentTaskList));

@override
String toString() {
  return 'TeamDashboardState(collegesList: $collegesList, recentTaskList: $recentTaskList)';
}


}

/// @nodoc
abstract mixin class $TeamDashboardStateCopyWith<$Res>  {
  factory $TeamDashboardStateCopyWith(TeamDashboardState value, $Res Function(TeamDashboardState) _then) = _$TeamDashboardStateCopyWithImpl;
@useResult
$Res call({
 List<CollegesModel> collegesList, List<TaskModel> recentTaskList
});




}
/// @nodoc
class _$TeamDashboardStateCopyWithImpl<$Res>
    implements $TeamDashboardStateCopyWith<$Res> {
  _$TeamDashboardStateCopyWithImpl(this._self, this._then);

  final TeamDashboardState _self;
  final $Res Function(TeamDashboardState) _then;

/// Create a copy of TeamDashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collegesList = null,Object? recentTaskList = null,}) {
  return _then(_self.copyWith(
collegesList: null == collegesList ? _self.collegesList : collegesList // ignore: cast_nullable_to_non_nullable
as List<CollegesModel>,recentTaskList: null == recentTaskList ? _self.recentTaskList : recentTaskList // ignore: cast_nullable_to_non_nullable
as List<TaskModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [TeamDashboardState].
extension TeamDashboardStatePatterns on TeamDashboardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamDashboardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamDashboardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamDashboardState value)  $default,){
final _that = this;
switch (_that) {
case _TeamDashboardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamDashboardState value)?  $default,){
final _that = this;
switch (_that) {
case _TeamDashboardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CollegesModel> collegesList,  List<TaskModel> recentTaskList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamDashboardState() when $default != null:
return $default(_that.collegesList,_that.recentTaskList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CollegesModel> collegesList,  List<TaskModel> recentTaskList)  $default,) {final _that = this;
switch (_that) {
case _TeamDashboardState():
return $default(_that.collegesList,_that.recentTaskList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CollegesModel> collegesList,  List<TaskModel> recentTaskList)?  $default,) {final _that = this;
switch (_that) {
case _TeamDashboardState() when $default != null:
return $default(_that.collegesList,_that.recentTaskList);case _:
  return null;

}
}

}

/// @nodoc


class _TeamDashboardState implements TeamDashboardState {
  const _TeamDashboardState({required final  List<CollegesModel> collegesList, required final  List<TaskModel> recentTaskList}): _collegesList = collegesList,_recentTaskList = recentTaskList;
  

 final  List<CollegesModel> _collegesList;
@override List<CollegesModel> get collegesList {
  if (_collegesList is EqualUnmodifiableListView) return _collegesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_collegesList);
}

 final  List<TaskModel> _recentTaskList;
@override List<TaskModel> get recentTaskList {
  if (_recentTaskList is EqualUnmodifiableListView) return _recentTaskList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentTaskList);
}


/// Create a copy of TeamDashboardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamDashboardStateCopyWith<_TeamDashboardState> get copyWith => __$TeamDashboardStateCopyWithImpl<_TeamDashboardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamDashboardState&&const DeepCollectionEquality().equals(other._collegesList, _collegesList)&&const DeepCollectionEquality().equals(other._recentTaskList, _recentTaskList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_collegesList),const DeepCollectionEquality().hash(_recentTaskList));

@override
String toString() {
  return 'TeamDashboardState(collegesList: $collegesList, recentTaskList: $recentTaskList)';
}


}

/// @nodoc
abstract mixin class _$TeamDashboardStateCopyWith<$Res> implements $TeamDashboardStateCopyWith<$Res> {
  factory _$TeamDashboardStateCopyWith(_TeamDashboardState value, $Res Function(_TeamDashboardState) _then) = __$TeamDashboardStateCopyWithImpl;
@override @useResult
$Res call({
 List<CollegesModel> collegesList, List<TaskModel> recentTaskList
});




}
/// @nodoc
class __$TeamDashboardStateCopyWithImpl<$Res>
    implements _$TeamDashboardStateCopyWith<$Res> {
  __$TeamDashboardStateCopyWithImpl(this._self, this._then);

  final _TeamDashboardState _self;
  final $Res Function(_TeamDashboardState) _then;

/// Create a copy of TeamDashboardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collegesList = null,Object? recentTaskList = null,}) {
  return _then(_TeamDashboardState(
collegesList: null == collegesList ? _self._collegesList : collegesList // ignore: cast_nullable_to_non_nullable
as List<CollegesModel>,recentTaskList: null == recentTaskList ? _self._recentTaskList : recentTaskList // ignore: cast_nullable_to_non_nullable
as List<TaskModel>,
  ));
}


}

// dart format on
