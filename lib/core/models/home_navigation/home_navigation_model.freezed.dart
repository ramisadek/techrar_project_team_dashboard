// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_navigation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeNavigationModel {

 PageController get pageController; int get currentPageSelected; bool get isAtDashboard;
/// Create a copy of HomeNavigationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeNavigationModelCopyWith<HomeNavigationModel> get copyWith => _$HomeNavigationModelCopyWithImpl<HomeNavigationModel>(this as HomeNavigationModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeNavigationModel&&(identical(other.pageController, pageController) || other.pageController == pageController)&&(identical(other.currentPageSelected, currentPageSelected) || other.currentPageSelected == currentPageSelected)&&(identical(other.isAtDashboard, isAtDashboard) || other.isAtDashboard == isAtDashboard));
}


@override
int get hashCode => Object.hash(runtimeType,pageController,currentPageSelected,isAtDashboard);

@override
String toString() {
  return 'HomeNavigationModel(pageController: $pageController, currentPageSelected: $currentPageSelected, isAtDashboard: $isAtDashboard)';
}


}

/// @nodoc
abstract mixin class $HomeNavigationModelCopyWith<$Res>  {
  factory $HomeNavigationModelCopyWith(HomeNavigationModel value, $Res Function(HomeNavigationModel) _then) = _$HomeNavigationModelCopyWithImpl;
@useResult
$Res call({
 PageController pageController, int currentPageSelected, bool isAtDashboard
});




}
/// @nodoc
class _$HomeNavigationModelCopyWithImpl<$Res>
    implements $HomeNavigationModelCopyWith<$Res> {
  _$HomeNavigationModelCopyWithImpl(this._self, this._then);

  final HomeNavigationModel _self;
  final $Res Function(HomeNavigationModel) _then;

/// Create a copy of HomeNavigationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pageController = null,Object? currentPageSelected = null,Object? isAtDashboard = null,}) {
  return _then(_self.copyWith(
pageController: null == pageController ? _self.pageController : pageController // ignore: cast_nullable_to_non_nullable
as PageController,currentPageSelected: null == currentPageSelected ? _self.currentPageSelected : currentPageSelected // ignore: cast_nullable_to_non_nullable
as int,isAtDashboard: null == isAtDashboard ? _self.isAtDashboard : isAtDashboard // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeNavigationModel].
extension HomeNavigationModelPatterns on HomeNavigationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeNavigationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeNavigationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeNavigationModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeNavigationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeNavigationModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeNavigationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PageController pageController,  int currentPageSelected,  bool isAtDashboard)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeNavigationModel() when $default != null:
return $default(_that.pageController,_that.currentPageSelected,_that.isAtDashboard);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PageController pageController,  int currentPageSelected,  bool isAtDashboard)  $default,) {final _that = this;
switch (_that) {
case _HomeNavigationModel():
return $default(_that.pageController,_that.currentPageSelected,_that.isAtDashboard);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PageController pageController,  int currentPageSelected,  bool isAtDashboard)?  $default,) {final _that = this;
switch (_that) {
case _HomeNavigationModel() when $default != null:
return $default(_that.pageController,_that.currentPageSelected,_that.isAtDashboard);case _:
  return null;

}
}

}

/// @nodoc


class _HomeNavigationModel implements HomeNavigationModel {
  const _HomeNavigationModel({required this.pageController, required this.currentPageSelected, required this.isAtDashboard});
  

@override final  PageController pageController;
@override final  int currentPageSelected;
@override final  bool isAtDashboard;

/// Create a copy of HomeNavigationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeNavigationModelCopyWith<_HomeNavigationModel> get copyWith => __$HomeNavigationModelCopyWithImpl<_HomeNavigationModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeNavigationModel&&(identical(other.pageController, pageController) || other.pageController == pageController)&&(identical(other.currentPageSelected, currentPageSelected) || other.currentPageSelected == currentPageSelected)&&(identical(other.isAtDashboard, isAtDashboard) || other.isAtDashboard == isAtDashboard));
}


@override
int get hashCode => Object.hash(runtimeType,pageController,currentPageSelected,isAtDashboard);

@override
String toString() {
  return 'HomeNavigationModel(pageController: $pageController, currentPageSelected: $currentPageSelected, isAtDashboard: $isAtDashboard)';
}


}

/// @nodoc
abstract mixin class _$HomeNavigationModelCopyWith<$Res> implements $HomeNavigationModelCopyWith<$Res> {
  factory _$HomeNavigationModelCopyWith(_HomeNavigationModel value, $Res Function(_HomeNavigationModel) _then) = __$HomeNavigationModelCopyWithImpl;
@override @useResult
$Res call({
 PageController pageController, int currentPageSelected, bool isAtDashboard
});




}
/// @nodoc
class __$HomeNavigationModelCopyWithImpl<$Res>
    implements _$HomeNavigationModelCopyWith<$Res> {
  __$HomeNavigationModelCopyWithImpl(this._self, this._then);

  final _HomeNavigationModel _self;
  final $Res Function(_HomeNavigationModel) _then;

/// Create a copy of HomeNavigationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pageController = null,Object? currentPageSelected = null,Object? isAtDashboard = null,}) {
  return _then(_HomeNavigationModel(
pageController: null == pageController ? _self.pageController : pageController // ignore: cast_nullable_to_non_nullable
as PageController,currentPageSelected: null == currentPageSelected ? _self.currentPageSelected : currentPageSelected // ignore: cast_nullable_to_non_nullable
as int,isAtDashboard: null == isAtDashboard ? _self.isAtDashboard : isAtDashboard // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
