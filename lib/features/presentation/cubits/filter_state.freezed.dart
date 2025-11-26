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

 bool get isLoading; bool get isFiltering; List<CityModel> get cities; List<SubCategoryModel> get subCategories; int? get selectedCityId; List<int> get selectedSubCategoryIds; ProviderType? get selectedProviderType; String get searchText; FilterCompaniesEntity? get result; String? get errorMessage;
/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterStateCopyWith<FilterState> get copyWith => _$FilterStateCopyWithImpl<FilterState>(this as FilterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFiltering, isFiltering) || other.isFiltering == isFiltering)&&const DeepCollectionEquality().equals(other.cities, cities)&&const DeepCollectionEquality().equals(other.subCategories, subCategories)&&(identical(other.selectedCityId, selectedCityId) || other.selectedCityId == selectedCityId)&&const DeepCollectionEquality().equals(other.selectedSubCategoryIds, selectedSubCategoryIds)&&(identical(other.selectedProviderType, selectedProviderType) || other.selectedProviderType == selectedProviderType)&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.result, result) || other.result == result)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isFiltering,const DeepCollectionEquality().hash(cities),const DeepCollectionEquality().hash(subCategories),selectedCityId,const DeepCollectionEquality().hash(selectedSubCategoryIds),selectedProviderType,searchText,result,errorMessage);

@override
String toString() {
  return 'FilterState(isLoading: $isLoading, isFiltering: $isFiltering, cities: $cities, subCategories: $subCategories, selectedCityId: $selectedCityId, selectedSubCategoryIds: $selectedSubCategoryIds, selectedProviderType: $selectedProviderType, searchText: $searchText, result: $result, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $FilterStateCopyWith<$Res>  {
  factory $FilterStateCopyWith(FilterState value, $Res Function(FilterState) _then) = _$FilterStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isFiltering, List<CityModel> cities, List<SubCategoryModel> subCategories, int? selectedCityId, List<int> selectedSubCategoryIds, ProviderType? selectedProviderType, String searchText, FilterCompaniesEntity? result, String? errorMessage
});




}
/// @nodoc
class _$FilterStateCopyWithImpl<$Res>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._self, this._then);

  final FilterState _self;
  final $Res Function(FilterState) _then;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isFiltering = null,Object? cities = null,Object? subCategories = null,Object? selectedCityId = freezed,Object? selectedSubCategoryIds = null,Object? selectedProviderType = freezed,Object? searchText = null,Object? result = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFiltering: null == isFiltering ? _self.isFiltering : isFiltering // ignore: cast_nullable_to_non_nullable
as bool,cities: null == cities ? _self.cities : cities // ignore: cast_nullable_to_non_nullable
as List<CityModel>,subCategories: null == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<SubCategoryModel>,selectedCityId: freezed == selectedCityId ? _self.selectedCityId : selectedCityId // ignore: cast_nullable_to_non_nullable
as int?,selectedSubCategoryIds: null == selectedSubCategoryIds ? _self.selectedSubCategoryIds : selectedSubCategoryIds // ignore: cast_nullable_to_non_nullable
as List<int>,selectedProviderType: freezed == selectedProviderType ? _self.selectedProviderType : selectedProviderType // ignore: cast_nullable_to_non_nullable
as ProviderType?,searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as FilterCompaniesEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterState value)  $default,){
final _that = this;
switch (_that) {
case _FilterState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterState value)?  $default,){
final _that = this;
switch (_that) {
case _FilterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isFiltering,  List<CityModel> cities,  List<SubCategoryModel> subCategories,  int? selectedCityId,  List<int> selectedSubCategoryIds,  ProviderType? selectedProviderType,  String searchText,  FilterCompaniesEntity? result,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterState() when $default != null:
return $default(_that.isLoading,_that.isFiltering,_that.cities,_that.subCategories,_that.selectedCityId,_that.selectedSubCategoryIds,_that.selectedProviderType,_that.searchText,_that.result,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isFiltering,  List<CityModel> cities,  List<SubCategoryModel> subCategories,  int? selectedCityId,  List<int> selectedSubCategoryIds,  ProviderType? selectedProviderType,  String searchText,  FilterCompaniesEntity? result,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _FilterState():
return $default(_that.isLoading,_that.isFiltering,_that.cities,_that.subCategories,_that.selectedCityId,_that.selectedSubCategoryIds,_that.selectedProviderType,_that.searchText,_that.result,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isFiltering,  List<CityModel> cities,  List<SubCategoryModel> subCategories,  int? selectedCityId,  List<int> selectedSubCategoryIds,  ProviderType? selectedProviderType,  String searchText,  FilterCompaniesEntity? result,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _FilterState() when $default != null:
return $default(_that.isLoading,_that.isFiltering,_that.cities,_that.subCategories,_that.selectedCityId,_that.selectedSubCategoryIds,_that.selectedProviderType,_that.searchText,_that.result,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _FilterState implements FilterState {
  const _FilterState({this.isLoading = false, this.isFiltering = false, final  List<CityModel> cities = const [], final  List<SubCategoryModel> subCategories = const [], this.selectedCityId, final  List<int> selectedSubCategoryIds = const [], this.selectedProviderType, this.searchText = '', this.result, this.errorMessage}): _cities = cities,_subCategories = subCategories,_selectedSubCategoryIds = selectedSubCategoryIds;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isFiltering;
 final  List<CityModel> _cities;
@override@JsonKey() List<CityModel> get cities {
  if (_cities is EqualUnmodifiableListView) return _cities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cities);
}

 final  List<SubCategoryModel> _subCategories;
@override@JsonKey() List<SubCategoryModel> get subCategories {
  if (_subCategories is EqualUnmodifiableListView) return _subCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subCategories);
}

@override final  int? selectedCityId;
 final  List<int> _selectedSubCategoryIds;
@override@JsonKey() List<int> get selectedSubCategoryIds {
  if (_selectedSubCategoryIds is EqualUnmodifiableListView) return _selectedSubCategoryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedSubCategoryIds);
}

@override final  ProviderType? selectedProviderType;
@override@JsonKey() final  String searchText;
@override final  FilterCompaniesEntity? result;
@override final  String? errorMessage;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterStateCopyWith<_FilterState> get copyWith => __$FilterStateCopyWithImpl<_FilterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFiltering, isFiltering) || other.isFiltering == isFiltering)&&const DeepCollectionEquality().equals(other._cities, _cities)&&const DeepCollectionEquality().equals(other._subCategories, _subCategories)&&(identical(other.selectedCityId, selectedCityId) || other.selectedCityId == selectedCityId)&&const DeepCollectionEquality().equals(other._selectedSubCategoryIds, _selectedSubCategoryIds)&&(identical(other.selectedProviderType, selectedProviderType) || other.selectedProviderType == selectedProviderType)&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.result, result) || other.result == result)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isFiltering,const DeepCollectionEquality().hash(_cities),const DeepCollectionEquality().hash(_subCategories),selectedCityId,const DeepCollectionEquality().hash(_selectedSubCategoryIds),selectedProviderType,searchText,result,errorMessage);

@override
String toString() {
  return 'FilterState(isLoading: $isLoading, isFiltering: $isFiltering, cities: $cities, subCategories: $subCategories, selectedCityId: $selectedCityId, selectedSubCategoryIds: $selectedSubCategoryIds, selectedProviderType: $selectedProviderType, searchText: $searchText, result: $result, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$FilterStateCopyWith<$Res> implements $FilterStateCopyWith<$Res> {
  factory _$FilterStateCopyWith(_FilterState value, $Res Function(_FilterState) _then) = __$FilterStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isFiltering, List<CityModel> cities, List<SubCategoryModel> subCategories, int? selectedCityId, List<int> selectedSubCategoryIds, ProviderType? selectedProviderType, String searchText, FilterCompaniesEntity? result, String? errorMessage
});




}
/// @nodoc
class __$FilterStateCopyWithImpl<$Res>
    implements _$FilterStateCopyWith<$Res> {
  __$FilterStateCopyWithImpl(this._self, this._then);

  final _FilterState _self;
  final $Res Function(_FilterState) _then;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isFiltering = null,Object? cities = null,Object? subCategories = null,Object? selectedCityId = freezed,Object? selectedSubCategoryIds = null,Object? selectedProviderType = freezed,Object? searchText = null,Object? result = freezed,Object? errorMessage = freezed,}) {
  return _then(_FilterState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFiltering: null == isFiltering ? _self.isFiltering : isFiltering // ignore: cast_nullable_to_non_nullable
as bool,cities: null == cities ? _self._cities : cities // ignore: cast_nullable_to_non_nullable
as List<CityModel>,subCategories: null == subCategories ? _self._subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<SubCategoryModel>,selectedCityId: freezed == selectedCityId ? _self.selectedCityId : selectedCityId // ignore: cast_nullable_to_non_nullable
as int?,selectedSubCategoryIds: null == selectedSubCategoryIds ? _self._selectedSubCategoryIds : selectedSubCategoryIds // ignore: cast_nullable_to_non_nullable
as List<int>,selectedProviderType: freezed == selectedProviderType ? _self.selectedProviderType : selectedProviderType // ignore: cast_nullable_to_non_nullable
as ProviderType?,searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as FilterCompaniesEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
