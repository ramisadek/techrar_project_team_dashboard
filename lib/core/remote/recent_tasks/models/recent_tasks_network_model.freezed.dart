// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_tasks_network_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TasksListNetworkModel {

@JsonKey(name: 'data') List<TaskNetworkModel> get tasksList;
/// Create a copy of TasksListNetworkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksListNetworkModelCopyWith<TasksListNetworkModel> get copyWith => _$TasksListNetworkModelCopyWithImpl<TasksListNetworkModel>(this as TasksListNetworkModel, _$identity);

  /// Serializes this TasksListNetworkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksListNetworkModel&&const DeepCollectionEquality().equals(other.tasksList, tasksList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tasksList));

@override
String toString() {
  return 'TasksListNetworkModel(tasksList: $tasksList)';
}


}

/// @nodoc
abstract mixin class $TasksListNetworkModelCopyWith<$Res>  {
  factory $TasksListNetworkModelCopyWith(TasksListNetworkModel value, $Res Function(TasksListNetworkModel) _then) = _$TasksListNetworkModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<TaskNetworkModel> tasksList
});




}
/// @nodoc
class _$TasksListNetworkModelCopyWithImpl<$Res>
    implements $TasksListNetworkModelCopyWith<$Res> {
  _$TasksListNetworkModelCopyWithImpl(this._self, this._then);

  final TasksListNetworkModel _self;
  final $Res Function(TasksListNetworkModel) _then;

/// Create a copy of TasksListNetworkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tasksList = null,}) {
  return _then(_self.copyWith(
tasksList: null == tasksList ? _self.tasksList : tasksList // ignore: cast_nullable_to_non_nullable
as List<TaskNetworkModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [TasksListNetworkModel].
extension TasksListNetworkModelPatterns on TasksListNetworkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TasksListNetworkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TasksListNetworkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TasksListNetworkModel value)  $default,){
final _that = this;
switch (_that) {
case _TasksListNetworkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TasksListNetworkModel value)?  $default,){
final _that = this;
switch (_that) {
case _TasksListNetworkModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<TaskNetworkModel> tasksList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TasksListNetworkModel() when $default != null:
return $default(_that.tasksList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<TaskNetworkModel> tasksList)  $default,) {final _that = this;
switch (_that) {
case _TasksListNetworkModel():
return $default(_that.tasksList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<TaskNetworkModel> tasksList)?  $default,) {final _that = this;
switch (_that) {
case _TasksListNetworkModel() when $default != null:
return $default(_that.tasksList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TasksListNetworkModel extends TasksListNetworkModel {
  const _TasksListNetworkModel({@JsonKey(name: 'data') final  List<TaskNetworkModel> tasksList = const []}): _tasksList = tasksList,super._();
  factory _TasksListNetworkModel.fromJson(Map<String, dynamic> json) => _$TasksListNetworkModelFromJson(json);

 final  List<TaskNetworkModel> _tasksList;
@override@JsonKey(name: 'data') List<TaskNetworkModel> get tasksList {
  if (_tasksList is EqualUnmodifiableListView) return _tasksList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasksList);
}


/// Create a copy of TasksListNetworkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasksListNetworkModelCopyWith<_TasksListNetworkModel> get copyWith => __$TasksListNetworkModelCopyWithImpl<_TasksListNetworkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TasksListNetworkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksListNetworkModel&&const DeepCollectionEquality().equals(other._tasksList, _tasksList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tasksList));

@override
String toString() {
  return 'TasksListNetworkModel(tasksList: $tasksList)';
}


}

/// @nodoc
abstract mixin class _$TasksListNetworkModelCopyWith<$Res> implements $TasksListNetworkModelCopyWith<$Res> {
  factory _$TasksListNetworkModelCopyWith(_TasksListNetworkModel value, $Res Function(_TasksListNetworkModel) _then) = __$TasksListNetworkModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<TaskNetworkModel> tasksList
});




}
/// @nodoc
class __$TasksListNetworkModelCopyWithImpl<$Res>
    implements _$TasksListNetworkModelCopyWith<$Res> {
  __$TasksListNetworkModelCopyWithImpl(this._self, this._then);

  final _TasksListNetworkModel _self;
  final $Res Function(_TasksListNetworkModel) _then;

/// Create a copy of TasksListNetworkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tasksList = null,}) {
  return _then(_TasksListNetworkModel(
tasksList: null == tasksList ? _self._tasksList : tasksList // ignore: cast_nullable_to_non_nullable
as List<TaskNetworkModel>,
  ));
}


}


/// @nodoc
mixin _$TaskNetworkModel {

 String get title; String get assignedUser; DateTime? get dueDate;@JsonKey(name: 'task_status') TaskNetworkStatus get taskEnum;
/// Create a copy of TaskNetworkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskNetworkModelCopyWith<TaskNetworkModel> get copyWith => _$TaskNetworkModelCopyWithImpl<TaskNetworkModel>(this as TaskNetworkModel, _$identity);

  /// Serializes this TaskNetworkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskNetworkModel&&(identical(other.title, title) || other.title == title)&&(identical(other.assignedUser, assignedUser) || other.assignedUser == assignedUser)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.taskEnum, taskEnum) || other.taskEnum == taskEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,assignedUser,dueDate,taskEnum);

@override
String toString() {
  return 'TaskNetworkModel(title: $title, assignedUser: $assignedUser, dueDate: $dueDate, taskEnum: $taskEnum)';
}


}

/// @nodoc
abstract mixin class $TaskNetworkModelCopyWith<$Res>  {
  factory $TaskNetworkModelCopyWith(TaskNetworkModel value, $Res Function(TaskNetworkModel) _then) = _$TaskNetworkModelCopyWithImpl;
@useResult
$Res call({
 String title, String assignedUser, DateTime? dueDate,@JsonKey(name: 'task_status') TaskNetworkStatus taskEnum
});




}
/// @nodoc
class _$TaskNetworkModelCopyWithImpl<$Res>
    implements $TaskNetworkModelCopyWith<$Res> {
  _$TaskNetworkModelCopyWithImpl(this._self, this._then);

  final TaskNetworkModel _self;
  final $Res Function(TaskNetworkModel) _then;

/// Create a copy of TaskNetworkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? assignedUser = null,Object? dueDate = freezed,Object? taskEnum = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,assignedUser: null == assignedUser ? _self.assignedUser : assignedUser // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,taskEnum: null == taskEnum ? _self.taskEnum : taskEnum // ignore: cast_nullable_to_non_nullable
as TaskNetworkStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskNetworkModel].
extension TaskNetworkModelPatterns on TaskNetworkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskNetworkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskNetworkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskNetworkModel value)  $default,){
final _that = this;
switch (_that) {
case _TaskNetworkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskNetworkModel value)?  $default,){
final _that = this;
switch (_that) {
case _TaskNetworkModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String assignedUser,  DateTime? dueDate, @JsonKey(name: 'task_status')  TaskNetworkStatus taskEnum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskNetworkModel() when $default != null:
return $default(_that.title,_that.assignedUser,_that.dueDate,_that.taskEnum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String assignedUser,  DateTime? dueDate, @JsonKey(name: 'task_status')  TaskNetworkStatus taskEnum)  $default,) {final _that = this;
switch (_that) {
case _TaskNetworkModel():
return $default(_that.title,_that.assignedUser,_that.dueDate,_that.taskEnum);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String assignedUser,  DateTime? dueDate, @JsonKey(name: 'task_status')  TaskNetworkStatus taskEnum)?  $default,) {final _that = this;
switch (_that) {
case _TaskNetworkModel() when $default != null:
return $default(_that.title,_that.assignedUser,_that.dueDate,_that.taskEnum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaskNetworkModel extends TaskNetworkModel {
  const _TaskNetworkModel({this.title = "", this.assignedUser = "", this.dueDate, @JsonKey(name: 'task_status') required this.taskEnum}): super._();
  factory _TaskNetworkModel.fromJson(Map<String, dynamic> json) => _$TaskNetworkModelFromJson(json);

@override@JsonKey() final  String title;
@override@JsonKey() final  String assignedUser;
@override final  DateTime? dueDate;
@override@JsonKey(name: 'task_status') final  TaskNetworkStatus taskEnum;

/// Create a copy of TaskNetworkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskNetworkModelCopyWith<_TaskNetworkModel> get copyWith => __$TaskNetworkModelCopyWithImpl<_TaskNetworkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskNetworkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskNetworkModel&&(identical(other.title, title) || other.title == title)&&(identical(other.assignedUser, assignedUser) || other.assignedUser == assignedUser)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.taskEnum, taskEnum) || other.taskEnum == taskEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,assignedUser,dueDate,taskEnum);

@override
String toString() {
  return 'TaskNetworkModel(title: $title, assignedUser: $assignedUser, dueDate: $dueDate, taskEnum: $taskEnum)';
}


}

/// @nodoc
abstract mixin class _$TaskNetworkModelCopyWith<$Res> implements $TaskNetworkModelCopyWith<$Res> {
  factory _$TaskNetworkModelCopyWith(_TaskNetworkModel value, $Res Function(_TaskNetworkModel) _then) = __$TaskNetworkModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String assignedUser, DateTime? dueDate,@JsonKey(name: 'task_status') TaskNetworkStatus taskEnum
});




}
/// @nodoc
class __$TaskNetworkModelCopyWithImpl<$Res>
    implements _$TaskNetworkModelCopyWith<$Res> {
  __$TaskNetworkModelCopyWithImpl(this._self, this._then);

  final _TaskNetworkModel _self;
  final $Res Function(_TaskNetworkModel) _then;

/// Create a copy of TaskNetworkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? assignedUser = null,Object? dueDate = freezed,Object? taskEnum = null,}) {
  return _then(_TaskNetworkModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,assignedUser: null == assignedUser ? _self.assignedUser : assignedUser // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,taskEnum: null == taskEnum ? _self.taskEnum : taskEnum // ignore: cast_nullable_to_non_nullable
as TaskNetworkStatus,
  ));
}


}

// dart format on
