// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tasks_network_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserTasksListNetworkModel {

@JsonKey(name: 'data') List<UserTaskNetworkModel> get tasksList;
/// Create a copy of UserTasksListNetworkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserTasksListNetworkModelCopyWith<UserTasksListNetworkModel> get copyWith => _$UserTasksListNetworkModelCopyWithImpl<UserTasksListNetworkModel>(this as UserTasksListNetworkModel, _$identity);

  /// Serializes this UserTasksListNetworkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserTasksListNetworkModel&&const DeepCollectionEquality().equals(other.tasksList, tasksList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tasksList));

@override
String toString() {
  return 'UserTasksListNetworkModel(tasksList: $tasksList)';
}


}

/// @nodoc
abstract mixin class $UserTasksListNetworkModelCopyWith<$Res>  {
  factory $UserTasksListNetworkModelCopyWith(UserTasksListNetworkModel value, $Res Function(UserTasksListNetworkModel) _then) = _$UserTasksListNetworkModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<UserTaskNetworkModel> tasksList
});




}
/// @nodoc
class _$UserTasksListNetworkModelCopyWithImpl<$Res>
    implements $UserTasksListNetworkModelCopyWith<$Res> {
  _$UserTasksListNetworkModelCopyWithImpl(this._self, this._then);

  final UserTasksListNetworkModel _self;
  final $Res Function(UserTasksListNetworkModel) _then;

/// Create a copy of UserTasksListNetworkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tasksList = null,}) {
  return _then(_self.copyWith(
tasksList: null == tasksList ? _self.tasksList : tasksList // ignore: cast_nullable_to_non_nullable
as List<UserTaskNetworkModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserTasksListNetworkModel].
extension UserTasksListNetworkModelPatterns on UserTasksListNetworkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserTasksListNetworkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserTasksListNetworkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserTasksListNetworkModel value)  $default,){
final _that = this;
switch (_that) {
case _UserTasksListNetworkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserTasksListNetworkModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserTasksListNetworkModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<UserTaskNetworkModel> tasksList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserTasksListNetworkModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<UserTaskNetworkModel> tasksList)  $default,) {final _that = this;
switch (_that) {
case _UserTasksListNetworkModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<UserTaskNetworkModel> tasksList)?  $default,) {final _that = this;
switch (_that) {
case _UserTasksListNetworkModel() when $default != null:
return $default(_that.tasksList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserTasksListNetworkModel extends UserTasksListNetworkModel {
  const _UserTasksListNetworkModel({@JsonKey(name: 'data') final  List<UserTaskNetworkModel> tasksList = const []}): _tasksList = tasksList,super._();
  factory _UserTasksListNetworkModel.fromJson(Map<String, dynamic> json) => _$UserTasksListNetworkModelFromJson(json);

 final  List<UserTaskNetworkModel> _tasksList;
@override@JsonKey(name: 'data') List<UserTaskNetworkModel> get tasksList {
  if (_tasksList is EqualUnmodifiableListView) return _tasksList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasksList);
}


/// Create a copy of UserTasksListNetworkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserTasksListNetworkModelCopyWith<_UserTasksListNetworkModel> get copyWith => __$UserTasksListNetworkModelCopyWithImpl<_UserTasksListNetworkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserTasksListNetworkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserTasksListNetworkModel&&const DeepCollectionEquality().equals(other._tasksList, _tasksList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tasksList));

@override
String toString() {
  return 'UserTasksListNetworkModel(tasksList: $tasksList)';
}


}

/// @nodoc
abstract mixin class _$UserTasksListNetworkModelCopyWith<$Res> implements $UserTasksListNetworkModelCopyWith<$Res> {
  factory _$UserTasksListNetworkModelCopyWith(_UserTasksListNetworkModel value, $Res Function(_UserTasksListNetworkModel) _then) = __$UserTasksListNetworkModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<UserTaskNetworkModel> tasksList
});




}
/// @nodoc
class __$UserTasksListNetworkModelCopyWithImpl<$Res>
    implements _$UserTasksListNetworkModelCopyWith<$Res> {
  __$UserTasksListNetworkModelCopyWithImpl(this._self, this._then);

  final _UserTasksListNetworkModel _self;
  final $Res Function(_UserTasksListNetworkModel) _then;

/// Create a copy of UserTasksListNetworkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tasksList = null,}) {
  return _then(_UserTasksListNetworkModel(
tasksList: null == tasksList ? _self._tasksList : tasksList // ignore: cast_nullable_to_non_nullable
as List<UserTaskNetworkModel>,
  ));
}


}


/// @nodoc
mixin _$UserTaskNetworkModel {

 int get userId; int get id; String get title; String get assignedUser; DateTime? get dueDate;@JsonKey(name: 'task_status') UserTaskNetworkStatus get taskEnum;
/// Create a copy of UserTaskNetworkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserTaskNetworkModelCopyWith<UserTaskNetworkModel> get copyWith => _$UserTaskNetworkModelCopyWithImpl<UserTaskNetworkModel>(this as UserTaskNetworkModel, _$identity);

  /// Serializes this UserTaskNetworkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserTaskNetworkModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.assignedUser, assignedUser) || other.assignedUser == assignedUser)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.taskEnum, taskEnum) || other.taskEnum == taskEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,id,title,assignedUser,dueDate,taskEnum);

@override
String toString() {
  return 'UserTaskNetworkModel(userId: $userId, id: $id, title: $title, assignedUser: $assignedUser, dueDate: $dueDate, taskEnum: $taskEnum)';
}


}

/// @nodoc
abstract mixin class $UserTaskNetworkModelCopyWith<$Res>  {
  factory $UserTaskNetworkModelCopyWith(UserTaskNetworkModel value, $Res Function(UserTaskNetworkModel) _then) = _$UserTaskNetworkModelCopyWithImpl;
@useResult
$Res call({
 int userId, int id, String title, String assignedUser, DateTime? dueDate,@JsonKey(name: 'task_status') UserTaskNetworkStatus taskEnum
});




}
/// @nodoc
class _$UserTaskNetworkModelCopyWithImpl<$Res>
    implements $UserTaskNetworkModelCopyWith<$Res> {
  _$UserTaskNetworkModelCopyWithImpl(this._self, this._then);

  final UserTaskNetworkModel _self;
  final $Res Function(UserTaskNetworkModel) _then;

/// Create a copy of UserTaskNetworkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? id = null,Object? title = null,Object? assignedUser = null,Object? dueDate = freezed,Object? taskEnum = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,assignedUser: null == assignedUser ? _self.assignedUser : assignedUser // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,taskEnum: null == taskEnum ? _self.taskEnum : taskEnum // ignore: cast_nullable_to_non_nullable
as UserTaskNetworkStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [UserTaskNetworkModel].
extension UserTaskNetworkModelPatterns on UserTaskNetworkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserTaskNetworkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserTaskNetworkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserTaskNetworkModel value)  $default,){
final _that = this;
switch (_that) {
case _UserTaskNetworkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserTaskNetworkModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserTaskNetworkModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  int id,  String title,  String assignedUser,  DateTime? dueDate, @JsonKey(name: 'task_status')  UserTaskNetworkStatus taskEnum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserTaskNetworkModel() when $default != null:
return $default(_that.userId,_that.id,_that.title,_that.assignedUser,_that.dueDate,_that.taskEnum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  int id,  String title,  String assignedUser,  DateTime? dueDate, @JsonKey(name: 'task_status')  UserTaskNetworkStatus taskEnum)  $default,) {final _that = this;
switch (_that) {
case _UserTaskNetworkModel():
return $default(_that.userId,_that.id,_that.title,_that.assignedUser,_that.dueDate,_that.taskEnum);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  int id,  String title,  String assignedUser,  DateTime? dueDate, @JsonKey(name: 'task_status')  UserTaskNetworkStatus taskEnum)?  $default,) {final _that = this;
switch (_that) {
case _UserTaskNetworkModel() when $default != null:
return $default(_that.userId,_that.id,_that.title,_that.assignedUser,_that.dueDate,_that.taskEnum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserTaskNetworkModel extends UserTaskNetworkModel {
  const _UserTaskNetworkModel({required this.userId, required this.id, this.title = "", this.assignedUser = "", this.dueDate, @JsonKey(name: 'task_status') required this.taskEnum}): super._();
  factory _UserTaskNetworkModel.fromJson(Map<String, dynamic> json) => _$UserTaskNetworkModelFromJson(json);

@override final  int userId;
@override final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String assignedUser;
@override final  DateTime? dueDate;
@override@JsonKey(name: 'task_status') final  UserTaskNetworkStatus taskEnum;

/// Create a copy of UserTaskNetworkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserTaskNetworkModelCopyWith<_UserTaskNetworkModel> get copyWith => __$UserTaskNetworkModelCopyWithImpl<_UserTaskNetworkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserTaskNetworkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserTaskNetworkModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.assignedUser, assignedUser) || other.assignedUser == assignedUser)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.taskEnum, taskEnum) || other.taskEnum == taskEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,id,title,assignedUser,dueDate,taskEnum);

@override
String toString() {
  return 'UserTaskNetworkModel(userId: $userId, id: $id, title: $title, assignedUser: $assignedUser, dueDate: $dueDate, taskEnum: $taskEnum)';
}


}

/// @nodoc
abstract mixin class _$UserTaskNetworkModelCopyWith<$Res> implements $UserTaskNetworkModelCopyWith<$Res> {
  factory _$UserTaskNetworkModelCopyWith(_UserTaskNetworkModel value, $Res Function(_UserTaskNetworkModel) _then) = __$UserTaskNetworkModelCopyWithImpl;
@override @useResult
$Res call({
 int userId, int id, String title, String assignedUser, DateTime? dueDate,@JsonKey(name: 'task_status') UserTaskNetworkStatus taskEnum
});




}
/// @nodoc
class __$UserTaskNetworkModelCopyWithImpl<$Res>
    implements _$UserTaskNetworkModelCopyWith<$Res> {
  __$UserTaskNetworkModelCopyWithImpl(this._self, this._then);

  final _UserTaskNetworkModel _self;
  final $Res Function(_UserTaskNetworkModel) _then;

/// Create a copy of UserTaskNetworkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? id = null,Object? title = null,Object? assignedUser = null,Object? dueDate = freezed,Object? taskEnum = null,}) {
  return _then(_UserTaskNetworkModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,assignedUser: null == assignedUser ? _self.assignedUser : assignedUser // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,taskEnum: null == taskEnum ? _self.taskEnum : taskEnum // ignore: cast_nullable_to_non_nullable
as UserTaskNetworkStatus,
  ));
}


}

// dart format on
