// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState<$T>()';
}


}

/// @nodoc
class $SignupStateCopyWith<T,$Res>  {
$SignupStateCopyWith(SignupState<T> _, $Res Function(SignupState<T>) __);
}


/// Adds pattern-matching-related methods to [SignupState].
extension SignupStatePatterns<T> on SignupState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( SignupLoading<T> value)?  signupLoading,TResult Function( SignupSucess<T> value)?  signupSucess,TResult Function( SignupError<T> value)?  signupError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignupLoading() when signupLoading != null:
return signupLoading(_that);case SignupSucess() when signupSucess != null:
return signupSucess(_that);case SignupError() when signupError != null:
return signupError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( SignupLoading<T> value)  signupLoading,required TResult Function( SignupSucess<T> value)  signupSucess,required TResult Function( SignupError<T> value)  signupError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SignupLoading():
return signupLoading(_that);case SignupSucess():
return signupSucess(_that);case SignupError():
return signupError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( SignupLoading<T> value)?  signupLoading,TResult? Function( SignupSucess<T> value)?  signupSucess,TResult? Function( SignupError<T> value)?  signupError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignupLoading() when signupLoading != null:
return signupLoading(_that);case SignupSucess() when signupSucess != null:
return signupSucess(_that);case SignupError() when signupError != null:
return signupError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  signupLoading,TResult Function( T data)?  signupSucess,TResult Function( ApiErrorModel apiErroeModel)?  signupError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignupLoading() when signupLoading != null:
return signupLoading();case SignupSucess() when signupSucess != null:
return signupSucess(_that.data);case SignupError() when signupError != null:
return signupError(_that.apiErroeModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  signupLoading,required TResult Function( T data)  signupSucess,required TResult Function( ApiErrorModel apiErroeModel)  signupError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SignupLoading():
return signupLoading();case SignupSucess():
return signupSucess(_that.data);case SignupError():
return signupError(_that.apiErroeModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  signupLoading,TResult? Function( T data)?  signupSucess,TResult? Function( ApiErrorModel apiErroeModel)?  signupError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignupLoading() when signupLoading != null:
return signupLoading();case SignupSucess() when signupSucess != null:
return signupSucess(_that.data);case SignupError() when signupError != null:
return signupError(_that.apiErroeModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements SignupState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState<$T>.initial()';
}


}




/// @nodoc


class SignupLoading<T> implements SignupState<T> {
  const SignupLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState<$T>.signupLoading()';
}


}




/// @nodoc


class SignupSucess<T> implements SignupState<T> {
  const SignupSucess(this.data);
  

 final  T data;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupSucessCopyWith<T, SignupSucess<T>> get copyWith => _$SignupSucessCopyWithImpl<T, SignupSucess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupSucess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SignupState<$T>.signupSucess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignupSucessCopyWith<T,$Res> implements $SignupStateCopyWith<T, $Res> {
  factory $SignupSucessCopyWith(SignupSucess<T> value, $Res Function(SignupSucess<T>) _then) = _$SignupSucessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SignupSucessCopyWithImpl<T,$Res>
    implements $SignupSucessCopyWith<T, $Res> {
  _$SignupSucessCopyWithImpl(this._self, this._then);

  final SignupSucess<T> _self;
  final $Res Function(SignupSucess<T>) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SignupSucess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SignupError<T> implements SignupState<T> {
  const SignupError(this.apiErroeModel);
  

 final  ApiErrorModel apiErroeModel;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupErrorCopyWith<T, SignupError<T>> get copyWith => _$SignupErrorCopyWithImpl<T, SignupError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupError<T>&&(identical(other.apiErroeModel, apiErroeModel) || other.apiErroeModel == apiErroeModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErroeModel);

@override
String toString() {
  return 'SignupState<$T>.signupError(apiErroeModel: $apiErroeModel)';
}


}

/// @nodoc
abstract mixin class $SignupErrorCopyWith<T,$Res> implements $SignupStateCopyWith<T, $Res> {
  factory $SignupErrorCopyWith(SignupError<T> value, $Res Function(SignupError<T>) _then) = _$SignupErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErroeModel
});




}
/// @nodoc
class _$SignupErrorCopyWithImpl<T,$Res>
    implements $SignupErrorCopyWith<T, $Res> {
  _$SignupErrorCopyWithImpl(this._self, this._then);

  final SignupError<T> _self;
  final $Res Function(SignupError<T>) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErroeModel = null,}) {
  return _then(SignupError<T>(
null == apiErroeModel ? _self.apiErroeModel : apiErroeModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
