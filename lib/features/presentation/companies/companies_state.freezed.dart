// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'companies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CompaniesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompaniesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CompaniesState()';
}


}

/// @nodoc
class $CompaniesStateCopyWith<$Res>  {
$CompaniesStateCopyWith(CompaniesState _, $Res Function(CompaniesState) __);
}


/// Adds pattern-matching-related methods to [CompaniesState].
extension CompaniesStatePatterns on CompaniesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( FilterCompaniesLoading value)?  filterCompaniesLoading,TResult Function( FilterCompaniesSuccess value)?  filterCompaniesSuccess,TResult Function( FilterCompaniesError value)?  filterCompaniesError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case FilterCompaniesLoading() when filterCompaniesLoading != null:
return filterCompaniesLoading(_that);case FilterCompaniesSuccess() when filterCompaniesSuccess != null:
return filterCompaniesSuccess(_that);case FilterCompaniesError() when filterCompaniesError != null:
return filterCompaniesError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( FilterCompaniesLoading value)  filterCompaniesLoading,required TResult Function( FilterCompaniesSuccess value)  filterCompaniesSuccess,required TResult Function( FilterCompaniesError value)  filterCompaniesError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case FilterCompaniesLoading():
return filterCompaniesLoading(_that);case FilterCompaniesSuccess():
return filterCompaniesSuccess(_that);case FilterCompaniesError():
return filterCompaniesError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( FilterCompaniesLoading value)?  filterCompaniesLoading,TResult? Function( FilterCompaniesSuccess value)?  filterCompaniesSuccess,TResult? Function( FilterCompaniesError value)?  filterCompaniesError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case FilterCompaniesLoading() when filterCompaniesLoading != null:
return filterCompaniesLoading(_that);case FilterCompaniesSuccess() when filterCompaniesSuccess != null:
return filterCompaniesSuccess(_that);case FilterCompaniesError() when filterCompaniesError != null:
return filterCompaniesError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  filterCompaniesLoading,TResult Function( FilterCompaniesEntity filterEntity)?  filterCompaniesSuccess,TResult Function( String error)?  filterCompaniesError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case FilterCompaniesLoading() when filterCompaniesLoading != null:
return filterCompaniesLoading();case FilterCompaniesSuccess() when filterCompaniesSuccess != null:
return filterCompaniesSuccess(_that.filterEntity);case FilterCompaniesError() when filterCompaniesError != null:
return filterCompaniesError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  filterCompaniesLoading,required TResult Function( FilterCompaniesEntity filterEntity)  filterCompaniesSuccess,required TResult Function( String error)  filterCompaniesError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case FilterCompaniesLoading():
return filterCompaniesLoading();case FilterCompaniesSuccess():
return filterCompaniesSuccess(_that.filterEntity);case FilterCompaniesError():
return filterCompaniesError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  filterCompaniesLoading,TResult? Function( FilterCompaniesEntity filterEntity)?  filterCompaniesSuccess,TResult? Function( String error)?  filterCompaniesError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case FilterCompaniesLoading() when filterCompaniesLoading != null:
return filterCompaniesLoading();case FilterCompaniesSuccess() when filterCompaniesSuccess != null:
return filterCompaniesSuccess(_that.filterEntity);case FilterCompaniesError() when filterCompaniesError != null:
return filterCompaniesError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CompaniesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CompaniesState.initial()';
}


}




/// @nodoc


class FilterCompaniesLoading implements CompaniesState {
  const FilterCompaniesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterCompaniesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CompaniesState.filterCompaniesLoading()';
}


}




/// @nodoc


class FilterCompaniesSuccess implements CompaniesState {
  const FilterCompaniesSuccess(this.filterEntity);
  

 final  FilterCompaniesEntity filterEntity;

/// Create a copy of CompaniesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterCompaniesSuccessCopyWith<FilterCompaniesSuccess> get copyWith => _$FilterCompaniesSuccessCopyWithImpl<FilterCompaniesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterCompaniesSuccess&&(identical(other.filterEntity, filterEntity) || other.filterEntity == filterEntity));
}


@override
int get hashCode => Object.hash(runtimeType,filterEntity);

@override
String toString() {
  return 'CompaniesState.filterCompaniesSuccess(filterEntity: $filterEntity)';
}


}

/// @nodoc
abstract mixin class $FilterCompaniesSuccessCopyWith<$Res> implements $CompaniesStateCopyWith<$Res> {
  factory $FilterCompaniesSuccessCopyWith(FilterCompaniesSuccess value, $Res Function(FilterCompaniesSuccess) _then) = _$FilterCompaniesSuccessCopyWithImpl;
@useResult
$Res call({
 FilterCompaniesEntity filterEntity
});




}
/// @nodoc
class _$FilterCompaniesSuccessCopyWithImpl<$Res>
    implements $FilterCompaniesSuccessCopyWith<$Res> {
  _$FilterCompaniesSuccessCopyWithImpl(this._self, this._then);

  final FilterCompaniesSuccess _self;
  final $Res Function(FilterCompaniesSuccess) _then;

/// Create a copy of CompaniesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filterEntity = null,}) {
  return _then(FilterCompaniesSuccess(
null == filterEntity ? _self.filterEntity : filterEntity // ignore: cast_nullable_to_non_nullable
as FilterCompaniesEntity,
  ));
}


}

/// @nodoc


class FilterCompaniesError implements CompaniesState {
  const FilterCompaniesError(this.error);
  

 final  String error;

/// Create a copy of CompaniesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterCompaniesErrorCopyWith<FilterCompaniesError> get copyWith => _$FilterCompaniesErrorCopyWithImpl<FilterCompaniesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterCompaniesError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CompaniesState.filterCompaniesError(error: $error)';
}


}

/// @nodoc
abstract mixin class $FilterCompaniesErrorCopyWith<$Res> implements $CompaniesStateCopyWith<$Res> {
  factory $FilterCompaniesErrorCopyWith(FilterCompaniesError value, $Res Function(FilterCompaniesError) _then) = _$FilterCompaniesErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$FilterCompaniesErrorCopyWithImpl<$Res>
    implements $FilterCompaniesErrorCopyWith<$Res> {
  _$FilterCompaniesErrorCopyWithImpl(this._self, this._then);

  final FilterCompaniesError _self;
  final $Res Function(FilterCompaniesError) _then;

/// Create a copy of CompaniesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(FilterCompaniesError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
