// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Hotel.h instead.

#import <CoreData/CoreData.h>


extern const struct HotelAttributes {
	 NSString *address1;
	 NSString *airportCode;
	 NSString *amenityMask;
	 NSString *city;
	 NSString *confidenceRating;
	 NSString *countryCode;
	 NSString *deepLink;
	 NSString *eanShortDescription;
	 NSString *highRate;
	 NSString *hotelId;
	 NSString *hotelInDestination;
	 NSString *hotelRating;
	 NSString *latitude;
	 NSString *locationDescription;
	 NSString *longtitude;
	 NSString *lowRate;
	 NSString *name;
	 NSString *postalCode;
	 NSString *propertyCategory;
	 NSString *proximityDistance;
	 NSString *proximityUnit;
	 NSString *rateCurrencyCode;
	 NSString *stateProvinceCode;
	 NSString *supplierType;
	 NSString *thumbnailURL;
	 NSString *tripAdvisorRating;
} HotelAttributes;

extern const struct HotelRelationships {
} HotelRelationships;

extern const struct HotelFetchedProperties {
} HotelFetchedProperties;





























@interface HotelID : NSManagedObjectID {}
@end

@interface _Hotel : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (HotelID*)objectID;





@property (nonatomic, retain) NSString* address1;



//- (BOOL)validateAddress1:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* airportCode;



//- (BOOL)validateAirportCode:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSNumber* amenityMask;



@property int32_t amenityMaskValue;
- (int32_t)amenityMaskValue;
- (void)setAmenityMaskValue:(int32_t)value_;

//- (BOOL)validateAmenityMask:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* city;



//- (BOOL)validateCity:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSNumber* confidenceRating;



@property int32_t confidenceRatingValue;
- (int32_t)confidenceRatingValue;
- (void)setConfidenceRatingValue:(int32_t)value_;

//- (BOOL)validateConfidenceRating:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* countryCode;



//- (BOOL)validateCountryCode:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* deepLink;



//- (BOOL)validateDeepLink:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* eanShortDescription;



//- (BOOL)validateEanShortDescription:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSNumber* highRate;



@property float highRateValue;
- (float)highRateValue;
- (void)setHighRateValue:(float)value_;

//- (BOOL)validateHighRate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSNumber* hotelId;



@property int32_t hotelIdValue;
- (int32_t)hotelIdValue;
- (void)setHotelIdValue:(int32_t)value_;

//- (BOOL)validateHotelId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSNumber* hotelInDestination;



@property BOOL hotelInDestinationValue;
- (BOOL)hotelInDestinationValue;
- (void)setHotelInDestinationValue:(BOOL)value_;

//- (BOOL)validateHotelInDestination:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSNumber* hotelRating;



@property float hotelRatingValue;
- (float)hotelRatingValue;
- (void)setHotelRatingValue:(float)value_;

//- (BOOL)validateHotelRating:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSNumber* latitude;



@property float latitudeValue;
- (float)latitudeValue;
- (void)setLatitudeValue:(float)value_;

//- (BOOL)validateLatitude:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* locationDescription;



//- (BOOL)validateLocationDescription:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSNumber* longtitude;



@property float longtitudeValue;
- (float)longtitudeValue;
- (void)setLongtitudeValue:(float)value_;

//- (BOOL)validateLongtitude:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSNumber* lowRate;



@property float lowRateValue;
- (float)lowRateValue;
- (void)setLowRateValue:(float)value_;

//- (BOOL)validateLowRate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* postalCode;



//- (BOOL)validatePostalCode:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSNumber* propertyCategory;



@property int32_t propertyCategoryValue;
- (int32_t)propertyCategoryValue;
- (void)setPropertyCategoryValue:(int32_t)value_;

//- (BOOL)validatePropertyCategory:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSNumber* proximityDistance;



@property float proximityDistanceValue;
- (float)proximityDistanceValue;
- (void)setProximityDistanceValue:(float)value_;

//- (BOOL)validateProximityDistance:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* proximityUnit;



//- (BOOL)validateProximityUnit:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* rateCurrencyCode;



//- (BOOL)validateRateCurrencyCode:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* stateProvinceCode;



//- (BOOL)validateStateProvinceCode:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* supplierType;



//- (BOOL)validateSupplierType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* thumbnailURL;



//- (BOOL)validateThumbnailURL:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSNumber* tripAdvisorRating;



@property int32_t tripAdvisorRatingValue;
- (int32_t)tripAdvisorRatingValue;
- (void)setTripAdvisorRatingValue:(int32_t)value_;

//- (BOOL)validateTripAdvisorRating:(id*)value_ error:(NSError**)error_;






@end

@interface _Hotel (CoreDataGeneratedAccessors)

@end

@interface _Hotel (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveAddress1;
- (void)setPrimitiveAddress1:(NSString*)value;




- (NSString*)primitiveAirportCode;
- (void)setPrimitiveAirportCode:(NSString*)value;




- (NSNumber*)primitiveAmenityMask;
- (void)setPrimitiveAmenityMask:(NSNumber*)value;

- (int32_t)primitiveAmenityMaskValue;
- (void)setPrimitiveAmenityMaskValue:(int32_t)value_;




- (NSString*)primitiveCity;
- (void)setPrimitiveCity:(NSString*)value;




- (NSNumber*)primitiveConfidenceRating;
- (void)setPrimitiveConfidenceRating:(NSNumber*)value;

- (int32_t)primitiveConfidenceRatingValue;
- (void)setPrimitiveConfidenceRatingValue:(int32_t)value_;




- (NSString*)primitiveCountryCode;
- (void)setPrimitiveCountryCode:(NSString*)value;




- (NSString*)primitiveDeepLink;
- (void)setPrimitiveDeepLink:(NSString*)value;




- (NSString*)primitiveEanShortDescription;
- (void)setPrimitiveEanShortDescription:(NSString*)value;




- (NSNumber*)primitiveHighRate;
- (void)setPrimitiveHighRate:(NSNumber*)value;

- (float)primitiveHighRateValue;
- (void)setPrimitiveHighRateValue:(float)value_;




- (NSNumber*)primitiveHotelId;
- (void)setPrimitiveHotelId:(NSNumber*)value;

- (int32_t)primitiveHotelIdValue;
- (void)setPrimitiveHotelIdValue:(int32_t)value_;




- (NSNumber*)primitiveHotelInDestination;
- (void)setPrimitiveHotelInDestination:(NSNumber*)value;

- (BOOL)primitiveHotelInDestinationValue;
- (void)setPrimitiveHotelInDestinationValue:(BOOL)value_;




- (NSNumber*)primitiveHotelRating;
- (void)setPrimitiveHotelRating:(NSNumber*)value;

- (float)primitiveHotelRatingValue;
- (void)setPrimitiveHotelRatingValue:(float)value_;




- (NSNumber*)primitiveLatitude;
- (void)setPrimitiveLatitude:(NSNumber*)value;

- (float)primitiveLatitudeValue;
- (void)setPrimitiveLatitudeValue:(float)value_;




- (NSString*)primitiveLocationDescription;
- (void)setPrimitiveLocationDescription:(NSString*)value;




- (NSNumber*)primitiveLongtitude;
- (void)setPrimitiveLongtitude:(NSNumber*)value;

- (float)primitiveLongtitudeValue;
- (void)setPrimitiveLongtitudeValue:(float)value_;




- (NSNumber*)primitiveLowRate;
- (void)setPrimitiveLowRate:(NSNumber*)value;

- (float)primitiveLowRateValue;
- (void)setPrimitiveLowRateValue:(float)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitivePostalCode;
- (void)setPrimitivePostalCode:(NSString*)value;




- (NSNumber*)primitivePropertyCategory;
- (void)setPrimitivePropertyCategory:(NSNumber*)value;

- (int32_t)primitivePropertyCategoryValue;
- (void)setPrimitivePropertyCategoryValue:(int32_t)value_;




- (NSNumber*)primitiveProximityDistance;
- (void)setPrimitiveProximityDistance:(NSNumber*)value;

- (float)primitiveProximityDistanceValue;
- (void)setPrimitiveProximityDistanceValue:(float)value_;




- (NSString*)primitiveProximityUnit;
- (void)setPrimitiveProximityUnit:(NSString*)value;




- (NSString*)primitiveRateCurrencyCode;
- (void)setPrimitiveRateCurrencyCode:(NSString*)value;




- (NSString*)primitiveStateProvinceCode;
- (void)setPrimitiveStateProvinceCode:(NSString*)value;




- (NSString*)primitiveSupplierType;
- (void)setPrimitiveSupplierType:(NSString*)value;




- (NSString*)primitiveThumbnailURL;
- (void)setPrimitiveThumbnailURL:(NSString*)value;




- (NSNumber*)primitiveTripAdvisorRating;
- (void)setPrimitiveTripAdvisorRating:(NSNumber*)value;

- (int32_t)primitiveTripAdvisorRatingValue;
- (void)setPrimitiveTripAdvisorRatingValue:(int32_t)value_;




@end
