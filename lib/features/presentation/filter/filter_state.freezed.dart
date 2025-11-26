// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FilterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterState()';
}


}

/// @nodoc
class $FilterStateCopyWith<$Res>  {
$FilterStateCopyWith(FilterState _, $Res Function(FilterState) __);
}


/// Adds pattern-matching-related methods to [FilterState].
extension FilterStatePatterns on FilterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FilterInitial value)?  initial,TResult Function( LoadFiltersLoading value)?  loadFiltersLoading,TResult Function( LoadFiltersSuccess value)?  loadFiltersSuccess,TResult Function( LoadFiltersError value)?  loadFiltersError,TResult Function( FiltersUpdated value)?  filtersUpdated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FilterInitial() when initial != null:
return initial(_that);case LoadFiltersLoading() when loadFiltersLoading != null:
return loadFiltersLoading(_that);case LoadFiltersSuccess() when loadFiltersSuccess != null:
return loadFiltersSuccess(_that);case LoadFiltersError() when loadFiltersError != null:
return loadFiltersError(_that);case FiltersUpdated() when filtersUpdated != null:
return filtersUpdated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FilterInitial value)  initial,required TResult Function( LoadFiltersLoading value)  loadFiltersLoading,required TResult Function( LoadFiltersSuccess value)  loadFiltersSuccess,required TResult Function( LoadFiltersError value)  loadFiltersError,required TResult Function( FiltersUpdated value)  filtersUpdated,}){
final _that = this;
switch (_that) {
case FilterInitial():
return initial(_that);case LoadFiltersLoading():
return loadFiltersLoading(_that);case LoadFiltersSuccess():
return loadFiltersSuccess(_that);case LoadFiltersError():
return loadFiltersError(_that);case FiltersUpdated():
return filtersUpdated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FilterInitial value)?  initial,TResult? Function( LoadFiltersLoading value)?  loadFiltersLoading,TResult? Function( LoadFiltersSuccess value)?  loadFiltersSuccess,TResult? Function( LoadFiltersError value)?  loadFiltersError,TResult? Function( FiltersUpdated value)?  filtersUpdated,}){
final _that = this;
switch (_that) {
case FilterInitial() when initial != null:
return initial(_that);case LoadFiltersLoading() when loadFiltersLoading != null:
return loadFiltersLoading(_that);case LoadFiltersSuccess() when loadFiltersSuccess != null:
return loadFiltersSuccess(_that);case LoadFiltersError() when loadFiltersError != null:
return loadFiltersError(_that);case FiltersUpdated() when filtersUpdated != null:
return filtersUpdated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadFiltersLoading,TResult Function( List<CityModel> cities,  List<SubCategoryModel> subCategories)?  loadFiltersSuccess,TResult Function( String error)?  loadFiltersError,TResult Function( int? selectedCityId,  String? search,  String? providerType,  List<SubCategoryModel>? subCategoryIds)?  filtersUpdated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FilterInitial() when initial != null:
return initial();case LoadFiltersLoading() when loadFiltersLoading != null:
return loadFiltersLoading();case LoadFiltersSuccess() when loadFiltersSuccess != null:
return loadFiltersSuccess(_that.cities,_that.subCategories);case LoadFiltersError() when loadFiltersError != null:
return loadFiltersError(_that.error);case FiltersUpdated() when filtersUpdated != null:
return filtersUpdated(_that.selectedCityId,_that.search,_that.providerType,_that.subCategoryIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadFiltersLoading,required TResult Function( List<CityModel> cities,  List<SubCategoryModel> subCategories)  loadFiltersSuccess,required TResult Function( String error)  loadFiltersError,required TResult Function( int? selectedCityId,  String? search,  String? providerType,  List<SubCategoryModel>? subCategoryIds)  filtersUpdated,}) {final _that = this;
switch (_that) {
case FilterInitial():
return initial();case LoadFiltersLoading():
return loadFiltersLoading();case LoadFiltersSuccess():
return loadFiltersSuccess(_that.cities,_that.subCategories);case LoadFiltersError():
return loadFiltersError(_that.error);case FiltersUpdated():
return filtersUpdated(_that.selectedCityId,_that.search,_that.providerType,_that.subCategoryIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadFiltersLoading,TResult? Function( List<CityModel> cities,  List<SubCategoryModel> subCategories)?  loadFiltersSuccess,TResult? Function( String error)?  loadFiltersError,TResult? Function( int? selectedCityId,  String? search,  String? providerType,  List<SubCategoryModel>? subCategoryIds)?  filtersUpdated,}) {final _that = this;
switch (_that) {
case FilterInitial() when initial != null:
return initial();case LoadFiltersLoading() when loadFiltersLoading != null:
return loadFiltersLoading();case LoadFiltersSuccess() when loadFiltersSuccess != null:
return loadFiltersSuccess(_that.cities,_that.subCategories);case LoadFiltersError() when loadFiltersError != null:
return loadFiltersError(_that.error);case FiltersUpdated() when filtersUpdated != null:
return filtersUpdated(_that.selectedCityId,_that.search,_that.providerType,_that.subCategoryIds);case _:
  return null;

}
}

}

/// @nodoc


class FilterInitial implements FilterState {
  const FilterInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterState.initial()';
}


}




/// @nodoc


class LoadFiltersLoading implements FilterState {
  const LoadFiltersLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadFiltersLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterState.loadFiltersLoading()';
}


}




/// @nodoc


class LoadFiltersSuccess implements FilterState {
  const LoadFiltersSuccess({required final  List<CityModel> cities, required final  List<SubCategoryModel> subCategories}): _cities = cities,_subCategories = subCategories;
  

 final  List<CityModel> _cities;
 List<CityModel> get cities {
  if (_cities is EqualUnmodifiableListView) return _cities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cities);
}

 final  List<SubCategoryModel> _subCategories;
 List<SubCategoryModel> get subCategories {
  if (_subCategories is EqualUnmodifiableListView) return _subCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subCategories);
}


/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadFiltersSuccessCopyWith<LoadFiltersSuccess> get copyWith => _$LoadFiltersSuccessCopyWithImpl<LoadFiltersSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadFiltersSuccess&&const DeepCollectionEquality().equals(other._cities, _cities)&&const DeepCollectionEquality().equals(other._subCategories, _subCategories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cities),const DeepCollectionEquality().hash(_subCategories));

@override
String toString() {
  return 'FilterState.loadFiltersSuccess(cities: $cities, subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class $LoadFiltersSuccessCopyWith<$Res> implements $FilterStateCopyWith<$Res> {
  factory $LoadFiltersSuccessCopyWith(LoadFiltersSuccess value, $Res Function(LoadFiltersSuccess) _then) = _$LoadFiltersSuccessCopyWithImpl;
@useResult
$Res call({
 List<CityModel> cities, List<SubCategoryModel> subCategories
});




}
/// @nodoc
class _$LoadFiltersSuccessCopyWithImpl<$Res>
    implements $LoadFiltersSuccessCopyWith<$Res> {
  _$LoadFiltersSuccessCopyWithImpl(this._self, this._then);

  final LoadFiltersSuccess _self;
  final $Res Function(LoadFiltersSuccess) _then;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cities = null,Object? subCategories = null,}) {
  return _then(LoadFiltersSuccess(
cities: null == cities ? _self._cities : cities // ignore: cast_nullable_to_non_nullable
as List<CityModel>,subCategories: null == subCategories ? _self._subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<SubCategoryModel>,
  ));
}


}

/// @nodoc


class LoadFiltersError implements FilterState {
  const LoadFiltersError(this.error);
  

 final  String error;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadFiltersErrorCopyWith<LoadFiltersError> get copyWith => _$LoadFiltersErrorCopyWithImpl<LoadFiltersError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadFiltersError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'FilterState.loadFiltersError(error: $error)';
}


}

/// @nodoc
abstract mixin class $LoadFiltersErrorCopyWith<$Res> implements $FilterStateCopyWith<$Res> {
  factory $LoadFiltersErrorCopyWith(LoadFiltersError value, $Res Function(LoadFiltersError) _then) = _$LoadFiltersErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$LoadFiltersErrorCopyWithImpl<$Res>
    implements $LoadFiltersErrorCopyWith<$Res> {
  _$LoadFiltersErrorCopyWithImpl(this._self, this._then);

  final LoadFiltersError _self;
  final $Res Function(LoadFiltersError) _then;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(LoadFiltersError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FiltersUpdated implements FilterState {
  const FiltersUpdated({this.selectedCityId, this.search, this.providerType, final  List<SubCategoryModel>? subCategoryIds = const []}): _subCategoryIds = subCategoryIds;
  

 final  int? selectedCityId;
 final  String? search;
 final  String? providerType;
 final  List<SubCategoryModel>? _subCategoryIds;
@JsonKey() List<SubCategoryModel>? get subCategoryIds {
  final value = _subCategoryIds;
  if (value == null) return null;
  if (_subCategoryIds is EqualUnmodifiableListView) return _subCategoryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FiltersUpdatedCopyWith<FiltersUpdated> get copyWith => _$FiltersUpdatedCopyWithImpl<FiltersUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FiltersUpdated&&(identical(other.selectedCityId, selectedCityId) || other.selectedCityId == selectedCityId)&&(identical(other.search, search) || other.search == search)&&(identical(other.providerType, providerType) || other.providerType == providerType)&&const DeepCollectionEquality().equals(other._subCategoryIds, _subCategoryIds));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCityId,search,providerType,const DeepCollectionEquality().hash(_subCategoryIds));

@override
String toString() {
  return 'FilterState.filtersUpdated(selectedCityId: $selectedCityId, search: $search, providerType: $providerType, subCategoryIds: $subCategoryIds)';
}


}

/// @nodoc
abstract mixin class $FiltersUpdatedCopyWith<$Res> implements $FilterStateCopyWith<$Res> {
  factory $FiltersUpdatedCopyWith(FiltersUpdated value, $Res Function(FiltersUpdated) _then) = _$FiltersUpdatedCopyWithImpl;
@useResult
$Res call({
 int? selectedCityId, String? search, String? providerType, List<SubCategoryModel>? subCategoryIds
});




}
/// @nodoc
class _$FiltersUpdatedCopyWithImpl<$Res>
    implements $FiltersUpdatedCopyWith<$Res> {
  _$FiltersUpdatedCopyWithImpl(this._self, this._then);

  final FiltersUpdated _self;
  final $Res Function(FiltersUpdated) _then;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedCityId = freezed,Object? search = freezed,Object? providerType = freezed,Object? subCategoryIds = freezed,}) {
  return _then(FiltersUpdated(
selectedCityId: freezed == selectedCityId ? _self.selectedCityId : selectedCityId // ignore: cast_nullable_to_non_nullable
as int?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,providerType: freezed == providerType ? _self.providerType : providerType // ignore: cast_nullable_to_non_nullable
as String?,subCategoryIds: freezed == subCategoryIds ? _self._subCategoryIds : subCategoryIds // ignore: cast_nullable_to_non_nullable
as List<SubCategoryModel>?,
  ));
}


}

// dart format on
