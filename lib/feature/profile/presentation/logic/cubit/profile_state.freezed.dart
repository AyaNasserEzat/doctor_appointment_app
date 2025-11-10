// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState<$T>()';
}


}

/// @nodoc
class $ProfileStateCopyWith<T,$Res>  {
$ProfileStateCopyWith(ProfileState<T> _, $Res Function(ProfileState<T>) __);
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns<T> on ProfileState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( GetProfileLoading<T> value)?  getProfileLoading,TResult Function( GetProfilSuccess<T> value)?  getProfileSuccess,TResult Function( GetProfileError<T> value)?  getProfileError,TResult Function( UpdateProfileLoading<T> value)?  updateProfileLoading,TResult Function( UpdateProfileSuccess<T> value)?  updateProfileSucess,TResult Function( UpdateProfileError<T> value)?  updateProfileError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetProfileLoading() when getProfileLoading != null:
return getProfileLoading(_that);case GetProfilSuccess() when getProfileSuccess != null:
return getProfileSuccess(_that);case GetProfileError() when getProfileError != null:
return getProfileError(_that);case UpdateProfileLoading() when updateProfileLoading != null:
return updateProfileLoading(_that);case UpdateProfileSuccess() when updateProfileSucess != null:
return updateProfileSucess(_that);case UpdateProfileError() when updateProfileError != null:
return updateProfileError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( GetProfileLoading<T> value)  getProfileLoading,required TResult Function( GetProfilSuccess<T> value)  getProfileSuccess,required TResult Function( GetProfileError<T> value)  getProfileError,required TResult Function( UpdateProfileLoading<T> value)  updateProfileLoading,required TResult Function( UpdateProfileSuccess<T> value)  updateProfileSucess,required TResult Function( UpdateProfileError<T> value)  updateProfileError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetProfileLoading():
return getProfileLoading(_that);case GetProfilSuccess():
return getProfileSuccess(_that);case GetProfileError():
return getProfileError(_that);case UpdateProfileLoading():
return updateProfileLoading(_that);case UpdateProfileSuccess():
return updateProfileSucess(_that);case UpdateProfileError():
return updateProfileError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( GetProfileLoading<T> value)?  getProfileLoading,TResult? Function( GetProfilSuccess<T> value)?  getProfileSuccess,TResult? Function( GetProfileError<T> value)?  getProfileError,TResult? Function( UpdateProfileLoading<T> value)?  updateProfileLoading,TResult? Function( UpdateProfileSuccess<T> value)?  updateProfileSucess,TResult? Function( UpdateProfileError<T> value)?  updateProfileError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetProfileLoading() when getProfileLoading != null:
return getProfileLoading(_that);case GetProfilSuccess() when getProfileSuccess != null:
return getProfileSuccess(_that);case GetProfileError() when getProfileError != null:
return getProfileError(_that);case UpdateProfileLoading() when updateProfileLoading != null:
return updateProfileLoading(_that);case UpdateProfileSuccess() when updateProfileSucess != null:
return updateProfileSucess(_that);case UpdateProfileError() when updateProfileError != null:
return updateProfileError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getProfileLoading,TResult Function( ProfileResponse profileResponse)?  getProfileSuccess,TResult Function( ApiErrorModel apiErrorModel)?  getProfileError,TResult Function()?  updateProfileLoading,TResult Function( UpdateProfileResponse updateProfileResponse)?  updateProfileSucess,TResult Function( ApiErrorModel apiErroeModel)?  updateProfileError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetProfileLoading() when getProfileLoading != null:
return getProfileLoading();case GetProfilSuccess() when getProfileSuccess != null:
return getProfileSuccess(_that.profileResponse);case GetProfileError() when getProfileError != null:
return getProfileError(_that.apiErrorModel);case UpdateProfileLoading() when updateProfileLoading != null:
return updateProfileLoading();case UpdateProfileSuccess() when updateProfileSucess != null:
return updateProfileSucess(_that.updateProfileResponse);case UpdateProfileError() when updateProfileError != null:
return updateProfileError(_that.apiErroeModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getProfileLoading,required TResult Function( ProfileResponse profileResponse)  getProfileSuccess,required TResult Function( ApiErrorModel apiErrorModel)  getProfileError,required TResult Function()  updateProfileLoading,required TResult Function( UpdateProfileResponse updateProfileResponse)  updateProfileSucess,required TResult Function( ApiErrorModel apiErroeModel)  updateProfileError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetProfileLoading():
return getProfileLoading();case GetProfilSuccess():
return getProfileSuccess(_that.profileResponse);case GetProfileError():
return getProfileError(_that.apiErrorModel);case UpdateProfileLoading():
return updateProfileLoading();case UpdateProfileSuccess():
return updateProfileSucess(_that.updateProfileResponse);case UpdateProfileError():
return updateProfileError(_that.apiErroeModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getProfileLoading,TResult? Function( ProfileResponse profileResponse)?  getProfileSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  getProfileError,TResult? Function()?  updateProfileLoading,TResult? Function( UpdateProfileResponse updateProfileResponse)?  updateProfileSucess,TResult? Function( ApiErrorModel apiErroeModel)?  updateProfileError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetProfileLoading() when getProfileLoading != null:
return getProfileLoading();case GetProfilSuccess() when getProfileSuccess != null:
return getProfileSuccess(_that.profileResponse);case GetProfileError() when getProfileError != null:
return getProfileError(_that.apiErrorModel);case UpdateProfileLoading() when updateProfileLoading != null:
return updateProfileLoading();case UpdateProfileSuccess() when updateProfileSucess != null:
return updateProfileSucess(_that.updateProfileResponse);case UpdateProfileError() when updateProfileError != null:
return updateProfileError(_that.apiErroeModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements ProfileState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState<$T>.initial()';
}


}




/// @nodoc


class GetProfileLoading<T> implements ProfileState<T> {
  const GetProfileLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState<$T>.getProfileLoading()';
}


}




/// @nodoc


class GetProfilSuccess<T> implements ProfileState<T> {
  const GetProfilSuccess(this.profileResponse);
  

 final  ProfileResponse profileResponse;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfilSuccessCopyWith<T, GetProfilSuccess<T>> get copyWith => _$GetProfilSuccessCopyWithImpl<T, GetProfilSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfilSuccess<T>&&(identical(other.profileResponse, profileResponse) || other.profileResponse == profileResponse));
}


@override
int get hashCode => Object.hash(runtimeType,profileResponse);

@override
String toString() {
  return 'ProfileState<$T>.getProfileSuccess(profileResponse: $profileResponse)';
}


}

/// @nodoc
abstract mixin class $GetProfilSuccessCopyWith<T,$Res> implements $ProfileStateCopyWith<T, $Res> {
  factory $GetProfilSuccessCopyWith(GetProfilSuccess<T> value, $Res Function(GetProfilSuccess<T>) _then) = _$GetProfilSuccessCopyWithImpl;
@useResult
$Res call({
 ProfileResponse profileResponse
});




}
/// @nodoc
class _$GetProfilSuccessCopyWithImpl<T,$Res>
    implements $GetProfilSuccessCopyWith<T, $Res> {
  _$GetProfilSuccessCopyWithImpl(this._self, this._then);

  final GetProfilSuccess<T> _self;
  final $Res Function(GetProfilSuccess<T>) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profileResponse = null,}) {
  return _then(GetProfilSuccess<T>(
null == profileResponse ? _self.profileResponse : profileResponse // ignore: cast_nullable_to_non_nullable
as ProfileResponse,
  ));
}


}

/// @nodoc


class GetProfileError<T> implements ProfileState<T> {
  const GetProfileError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileErrorCopyWith<T, GetProfileError<T>> get copyWith => _$GetProfileErrorCopyWithImpl<T, GetProfileError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileError<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'ProfileState<$T>.getProfileError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $GetProfileErrorCopyWith<T,$Res> implements $ProfileStateCopyWith<T, $Res> {
  factory $GetProfileErrorCopyWith(GetProfileError<T> value, $Res Function(GetProfileError<T>) _then) = _$GetProfileErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$GetProfileErrorCopyWithImpl<T,$Res>
    implements $GetProfileErrorCopyWith<T, $Res> {
  _$GetProfileErrorCopyWithImpl(this._self, this._then);

  final GetProfileError<T> _self;
  final $Res Function(GetProfileError<T>) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(GetProfileError<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class UpdateProfileLoading<T> implements ProfileState<T> {
  const UpdateProfileLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState<$T>.updateProfileLoading()';
}


}




/// @nodoc


class UpdateProfileSuccess<T> implements ProfileState<T> {
  const UpdateProfileSuccess(this.updateProfileResponse);
  

 final  UpdateProfileResponse updateProfileResponse;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileSuccessCopyWith<T, UpdateProfileSuccess<T>> get copyWith => _$UpdateProfileSuccessCopyWithImpl<T, UpdateProfileSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileSuccess<T>&&(identical(other.updateProfileResponse, updateProfileResponse) || other.updateProfileResponse == updateProfileResponse));
}


@override
int get hashCode => Object.hash(runtimeType,updateProfileResponse);

@override
String toString() {
  return 'ProfileState<$T>.updateProfileSucess(updateProfileResponse: $updateProfileResponse)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileSuccessCopyWith<T,$Res> implements $ProfileStateCopyWith<T, $Res> {
  factory $UpdateProfileSuccessCopyWith(UpdateProfileSuccess<T> value, $Res Function(UpdateProfileSuccess<T>) _then) = _$UpdateProfileSuccessCopyWithImpl;
@useResult
$Res call({
 UpdateProfileResponse updateProfileResponse
});




}
/// @nodoc
class _$UpdateProfileSuccessCopyWithImpl<T,$Res>
    implements $UpdateProfileSuccessCopyWith<T, $Res> {
  _$UpdateProfileSuccessCopyWithImpl(this._self, this._then);

  final UpdateProfileSuccess<T> _self;
  final $Res Function(UpdateProfileSuccess<T>) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? updateProfileResponse = null,}) {
  return _then(UpdateProfileSuccess<T>(
null == updateProfileResponse ? _self.updateProfileResponse : updateProfileResponse // ignore: cast_nullable_to_non_nullable
as UpdateProfileResponse,
  ));
}


}

/// @nodoc


class UpdateProfileError<T> implements ProfileState<T> {
  const UpdateProfileError(this.apiErroeModel);
  

 final  ApiErrorModel apiErroeModel;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileErrorCopyWith<T, UpdateProfileError<T>> get copyWith => _$UpdateProfileErrorCopyWithImpl<T, UpdateProfileError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileError<T>&&(identical(other.apiErroeModel, apiErroeModel) || other.apiErroeModel == apiErroeModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErroeModel);

@override
String toString() {
  return 'ProfileState<$T>.updateProfileError(apiErroeModel: $apiErroeModel)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileErrorCopyWith<T,$Res> implements $ProfileStateCopyWith<T, $Res> {
  factory $UpdateProfileErrorCopyWith(UpdateProfileError<T> value, $Res Function(UpdateProfileError<T>) _then) = _$UpdateProfileErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErroeModel
});




}
/// @nodoc
class _$UpdateProfileErrorCopyWithImpl<T,$Res>
    implements $UpdateProfileErrorCopyWith<T, $Res> {
  _$UpdateProfileErrorCopyWithImpl(this._self, this._then);

  final UpdateProfileError<T> _self;
  final $Res Function(UpdateProfileError<T>) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErroeModel = null,}) {
  return _then(UpdateProfileError<T>(
null == apiErroeModel ? _self.apiErroeModel : apiErroeModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
