// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState<$T>()';
}


}

/// @nodoc
class $SearchStateCopyWith<T,$Res>  {
$SearchStateCopyWith(SearchState<T> _, $Res Function(SearchState<T>) __);
}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns<T> on SearchState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( SearchDoctorLoading<T> value)?  searchDoctorLoading,TResult Function( SearchDoctorSuccess<T> value)?  searchDoctorSuccess,TResult Function( SearchDoctorError<T> value)?  searchDoctorError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SearchDoctorLoading() when searchDoctorLoading != null:
return searchDoctorLoading(_that);case SearchDoctorSuccess() when searchDoctorSuccess != null:
return searchDoctorSuccess(_that);case SearchDoctorError() when searchDoctorError != null:
return searchDoctorError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( SearchDoctorLoading<T> value)  searchDoctorLoading,required TResult Function( SearchDoctorSuccess<T> value)  searchDoctorSuccess,required TResult Function( SearchDoctorError<T> value)  searchDoctorError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SearchDoctorLoading():
return searchDoctorLoading(_that);case SearchDoctorSuccess():
return searchDoctorSuccess(_that);case SearchDoctorError():
return searchDoctorError(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( SearchDoctorLoading<T> value)?  searchDoctorLoading,TResult? Function( SearchDoctorSuccess<T> value)?  searchDoctorSuccess,TResult? Function( SearchDoctorError<T> value)?  searchDoctorError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SearchDoctorLoading() when searchDoctorLoading != null:
return searchDoctorLoading(_that);case SearchDoctorSuccess() when searchDoctorSuccess != null:
return searchDoctorSuccess(_that);case SearchDoctorError() when searchDoctorError != null:
return searchDoctorError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  searchDoctorLoading,TResult Function( List<Doctor> doctorList)?  searchDoctorSuccess,TResult Function( ApiErrorModel apiErrorModel)?  searchDoctorError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SearchDoctorLoading() when searchDoctorLoading != null:
return searchDoctorLoading();case SearchDoctorSuccess() when searchDoctorSuccess != null:
return searchDoctorSuccess(_that.doctorList);case SearchDoctorError() when searchDoctorError != null:
return searchDoctorError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  searchDoctorLoading,required TResult Function( List<Doctor> doctorList)  searchDoctorSuccess,required TResult Function( ApiErrorModel apiErrorModel)  searchDoctorError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SearchDoctorLoading():
return searchDoctorLoading();case SearchDoctorSuccess():
return searchDoctorSuccess(_that.doctorList);case SearchDoctorError():
return searchDoctorError(_that.apiErrorModel);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  searchDoctorLoading,TResult? Function( List<Doctor> doctorList)?  searchDoctorSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  searchDoctorError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SearchDoctorLoading() when searchDoctorLoading != null:
return searchDoctorLoading();case SearchDoctorSuccess() when searchDoctorSuccess != null:
return searchDoctorSuccess(_that.doctorList);case SearchDoctorError() when searchDoctorError != null:
return searchDoctorError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements SearchState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState<$T>.initial()';
}


}




/// @nodoc


class SearchDoctorLoading<T> implements SearchState<T> {
  const SearchDoctorLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDoctorLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState<$T>.searchDoctorLoading()';
}


}




/// @nodoc


class SearchDoctorSuccess<T> implements SearchState<T> {
  const SearchDoctorSuccess(final  List<Doctor> doctorList): _doctorList = doctorList;
  

 final  List<Doctor> _doctorList;
 List<Doctor> get doctorList {
  if (_doctorList is EqualUnmodifiableListView) return _doctorList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_doctorList);
}


/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchDoctorSuccessCopyWith<T, SearchDoctorSuccess<T>> get copyWith => _$SearchDoctorSuccessCopyWithImpl<T, SearchDoctorSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDoctorSuccess<T>&&const DeepCollectionEquality().equals(other._doctorList, _doctorList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctorList));

@override
String toString() {
  return 'SearchState<$T>.searchDoctorSuccess(doctorList: $doctorList)';
}


}

/// @nodoc
abstract mixin class $SearchDoctorSuccessCopyWith<T,$Res> implements $SearchStateCopyWith<T, $Res> {
  factory $SearchDoctorSuccessCopyWith(SearchDoctorSuccess<T> value, $Res Function(SearchDoctorSuccess<T>) _then) = _$SearchDoctorSuccessCopyWithImpl;
@useResult
$Res call({
 List<Doctor> doctorList
});




}
/// @nodoc
class _$SearchDoctorSuccessCopyWithImpl<T,$Res>
    implements $SearchDoctorSuccessCopyWith<T, $Res> {
  _$SearchDoctorSuccessCopyWithImpl(this._self, this._then);

  final SearchDoctorSuccess<T> _self;
  final $Res Function(SearchDoctorSuccess<T>) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctorList = null,}) {
  return _then(SearchDoctorSuccess<T>(
null == doctorList ? _self._doctorList : doctorList // ignore: cast_nullable_to_non_nullable
as List<Doctor>,
  ));
}


}

/// @nodoc


class SearchDoctorError<T> implements SearchState<T> {
  const SearchDoctorError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchDoctorErrorCopyWith<T, SearchDoctorError<T>> get copyWith => _$SearchDoctorErrorCopyWithImpl<T, SearchDoctorError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDoctorError<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'SearchState<$T>.searchDoctorError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $SearchDoctorErrorCopyWith<T,$Res> implements $SearchStateCopyWith<T, $Res> {
  factory $SearchDoctorErrorCopyWith(SearchDoctorError<T> value, $Res Function(SearchDoctorError<T>) _then) = _$SearchDoctorErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$SearchDoctorErrorCopyWithImpl<T,$Res>
    implements $SearchDoctorErrorCopyWith<T, $Res> {
  _$SearchDoctorErrorCopyWithImpl(this._self, this._then);

  final SearchDoctorError<T> _self;
  final $Res Function(SearchDoctorError<T>) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(SearchDoctorError<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
