// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Hotel.h instead.

#import <CoreData/CoreData.h>


extern const struct HotelAttributes {
	__unsafe_unretained NSString *address1;
	__unsafe_unretained NSString *airportCode;
	__unsafe_unretained NSString *amenityMask;
	__unsafe_unretained NSString *businessCenter;
	__unsafe_unretained NSString *city;
	__unsafe_unretained NSString *confidenceRating;
	__unsafe_unretained NSString *countryCode;
	__unsafe_unretained NSString *deepLink;
	__unsafe_unretained NSString *eanShortDescription;
	__unsafe_unretained NSString *fitnessCenter;
	__unsafe_unretained NSString *highRate;
	__unsafe_unretained NSString *hotTub;
	__unsafe_unretained NSString *hotelId;
	__unsafe_unretained NSString *hotelInDestination;
	__unsafe_unretained NSString *hotelRating;
	__unsafe_unretained NSString *internetAccessAvailable;
	__unsafe_unretained NSString *kidsActivities;
	__unsafe_unretained NSString *kitchen;
	__unsafe_unretained NSString *latitude;
	__unsafe_unretained NSString *locationDescription;
	__unsafe_unretained NSString *longtitude;
	__unsafe_unretained NSString *lowRate;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *petsAllowed;
	__unsafe_unretained NSString *pool;
	__unsafe_unretained NSString *postalCode;
	__unsafe_unretained NSString *propertyCategory;
	__unsafe_unretained NSString *proximityDistance;
	__unsafe_unretained NSString *proximityUnit;
	__unsafe_unretained NSString *rateCurrencyCode;
	__unsafe_unretained NSString *stateProvinceCode;
	__unsafe_unretained NSString *supplierType;
	__unsafe_unretained NSString *thumbnailURL;
	__unsafe_unretained NSString *tripAdvisorRating;
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





@property (nonatomic, strong) NSString* address1;



//- (BOOL)validateAddress1:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* airportCode;



//- (BOOL)validateAirportCode:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* amenityMask;



@property int32_t amenityMaskValue;
- (int32_t)amenityMaskValue;
- (void)setAmenityMaskValue:(int32_t)value_;

//- (BOOL)validateAmenityMask:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* businessCenter;



@property BOOL businessCenterValue;
- (BOOL)businessCenterValue;
- (void)setBusinessCenterValue:(BOOL)value_;

//- (BOOL)validateBusinessCenter:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* city;



//- (BOOL)validateCity:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* confidenceRating;



@property int32_t confidenceRatingValue;
- (int32_t)confidenceRatingValue;
- (void)setConfidenceRatingValue:(int32_t)value_;

//- (BOOL)validateConfidenceRating:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* countryCode;



//- (BOOL)validateCountryCode:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* deepLink;



//- (BOOL)validateDeepLink:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* eanShortDescription;



//- (BOOL)validateEanShortDescription:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* fitnessCenter;



@property BOOL fitnessCenterValue;
- (BOOL)fitnessCenterValue;
- (void)setFitnessCenterValue:(BOOL)value_;

//- (BOOL)validateFitnessCenter:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* highRate;



@property float highRateValue;
- (float)highRateValue;
- (void)setHighRateValue:(float)value_;

//- (BOOL)validateHighRate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* hotTub;



@property BOOL hotTubValue;
- (BOOL)hotTubValue;
- (void)setHotTubValue:(BOOL)value_;

//- (BOOL)validateHotTub:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* hotelId;



@property int32_t hotelIdValue;
- (int32_t)hotelIdValue;
- (void)setHotelIdValue:(int32_t)value_;

//- (BOOL)validateHotelId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* hotelInDestination;



@property BOOL hotelInDestinationValue;
- (BOOL)hotelInDestinationValue;
- (void)setHotelInDestinationValue:(BOOL)value_;

//- (BOOL)validateHotelInDestination:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* hotelRating;



@property float hotelRatingValue;
- (float)hotelRatingValue;
- (void)setHotelRatingValue:(float)value_;

//- (BOOL)validateHotelRating:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* internetAccessAvailable;



@property BOOL internetAccessAvailableValue;
- (BOOL)internetAccessAvailableValue;
- (void)setInternetAccessAvailableValue:(BOOL)value_;

//- (BOOL)validateInternetAccessAvailable:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* kidsActivities;



@property BOOL kidsActivitiesValue;
- (BOOL)kidsActivitiesValue;
- (void)setKidsActivitiesValue:(BOOL)value_;

//- (BOOL)validateKidsActivities:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* kitchen;



@property BOOL kitchenValue;
- (BOOL)kitchenValue;
- (void)setKitchenValue:(BOOL)value_;

//- (BOOL)validateKitchen:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* latitude;



@property float latitudeValue;
- (float)latitudeValue;
- (void)setLatitudeValue:(float)value_;

//- (BOOL)validateLatitude:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* locationDescription;



//- (BOOL)validateLocationDescription:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* longtitude;



@property float longtitudeValue;
- (float)longtitudeValue;
- (void)setLongtitudeValue:(float)value_;

//- (BOOL)validateLongtitude:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* lowRate;



@property float lowRateValue;
- (float)lowRateValue;
- (void)setLowRateValue:(float)value_;

//- (BOOL)validateLowRate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* petsAllowed;



@property BOOL petsAllowedValue;
- (BOOL)petsAllowedValue;
- (void)setPetsAllowedValue:(BOOL)value_;

//- (BOOL)validatePetsAllowed:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* pool;



@property BOOL poolValue;
- (BOOL)poolValue;
- (void)setPoolValue:(BOOL)value_;

//- (BOOL)validatePool:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* postalCode;



//- (BOOL)validatePostalCode:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* propertyCategory;



@property int32_t propertyCategoryValue;
- (int32_t)propertyCategoryValue;
- (void)setPropertyCategoryValue:(int32_t)value_;

//- (BOOL)validatePropertyCategory:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* proximityDistance;



@property float proximityDistanceValue;
- (float)proximityDistanceValue;
- (void)setProximityDistanceValue:(float)value_;

//- (BOOL)validateProximityDistance:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* proximityUnit;



//- (BOOL)validateProximityUnit:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* rateCurrencyCode;



//- (BOOL)validateRateCurrencyCode:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* stateProvinceCode;



//- (BOOL)validateStateProvinceCode:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* supplierType;



//- (BOOL)validateSupplierType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* thumbnailURL;



//- (BOOL)validateThumbnailURL:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* tripAdvisorRating;



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




- (NSNumber*)primitiveBusinessCenter;
- (void)setPrimitiveBusinessCenter:(NSNumber*)value;

- (BOOL)primitiveBusinessCenterValue;
- (void)setPrimitiveBusinessCenterValue:(BOOL)value_;




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




- (NSNumber*)primitiveFitnessCenter;
- (void)setPrimitiveFitnessCenter:(NSNumber*)value;

- (BOOL)primitiveFitnessCenterValue;
- (void)setPrimitiveFitnessCenterValue:(BOOL)value_;




- (NSNumber*)primitiveHighRate;
- (void)setPrimitiveHighRate:(NSNumber*)value;

- (float)primitiveHighRateValue;
- (void)setPrimitiveHighRateValue:(float)value_;




- (NSNumber*)primitiveHotTub;
- (void)setPrimitiveHotTub:(NSNumber*)value;

- (BOOL)primitiveHotTubValue;
- (void)setPrimitiveHotTubValue:(BOOL)value_;




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




- (NSNumber*)primitiveInternetAccessAvailable;
- (void)setPrimitiveInternetAccessAvailable:(NSNumber*)value;

- (BOOL)primitiveInternetAccessAvailableValue;
- (void)setPrimitiveInternetAccessAvailableValue:(BOOL)value_;




- (NSNumber*)primitiveKidsActivities;
- (void)setPrimitiveKidsActivities:(NSNumber*)value;

- (BOOL)primitiveKidsActivitiesValue;
- (void)setPrimitiveKidsActivitiesValue:(BOOL)value_;




- (NSNumber*)primitiveKitchen;
- (void)setPrimitiveKitchen:(NSNumber*)value;

- (BOOL)primitiveKitchenValue;
- (void)setPrimitiveKitchenValue:(BOOL)value_;




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




- (NSNumber*)primitivePetsAllowed;
- (void)setPrimitivePetsAllowed:(NSNumber*)value;

- (BOOL)primitivePetsAllowedValue;
- (void)setPrimitivePetsAllowedValue:(BOOL)value_;




- (NSNumber*)primitivePool;
- (void)setPrimitivePool:(NSNumber*)value;

- (BOOL)primitivePoolValue;
- (void)setPrimitivePoolValue:(BOOL)value_;




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
