// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Hotel.m instead.

#import "_Hotel.h"

const struct HotelAttributes HotelAttributes = {
	.accessibleBathroom = @"accessibleBathroom",
	.accessibleTravel = @"accessibleTravel",
	.address1 = @"address1",
	.airportCode = @"airportCode",
	.amenityMask = @"amenityMask",
	.babySitting = @"babySitting",
	.braille = @"braille",
	.breakfast = @"breakfast",
	.businessCenter = @"businessCenter",
	.city = @"city",
	.confidenceRating = @"confidenceRating",
	.countryCode = @"countryCode",
	.deafEquipment = @"deafEquipment",
	.deepLink = @"deepLink",
	.eanShortDescription = @"eanShortDescription",
	.extendingParking = @"extendingParking",
	.fitnessCenter = @"fitnessCenter",
	.freeAirportShuttle = @"freeAirportShuttle",
	.freeParking = @"freeParking",
	.handicapParking = @"handicapParking",
	.highRate = @"highRate",
	.hotTub = @"hotTub",
	.hotelId = @"hotelId",
	.hotelInDestination = @"hotelInDestination",
	.hotelRating = @"hotelRating",
	.inRoomAccesibility = @"inRoomAccesibility",
	.indoorPool = @"indoorPool",
	.internetAccessAvailable = @"internetAccessAvailable",
	.jacuzzi = @"jacuzzi",
	.kidsActivities = @"kidsActivities",
	.kitchen = @"kitchen",
	.latitude = @"latitude",
	.locationDescription = @"locationDescription",
	.longtitude = @"longtitude",
	.lowRate = @"lowRate",
	.name = @"name",
	.outdoorPool = @"outdoorPool",
	.parking = @"parking",
	.petsAllowed = @"petsAllowed",
	.pool = @"pool",
	.postalCode = @"postalCode",
	.propertyCategory = @"propertyCategory",
	.proximityDistance = @"proximityDistance",
	.proximityUnit = @"proximityUnit",
	.rateCurrencyCode = @"rateCurrencyCode",
	.restaurantOnSite = @"restaurantOnSite",
	.rollinShower = @"rollinShower",
	.roomService = @"roomService",
	.spaOnSite = @"spaOnSite",
	.stateProvinceCode = @"stateProvinceCode",
	.supplierType = @"supplierType",
	.thumbnailURL = @"thumbnailURL",
	.tripAdvisorRating = @"tripAdvisorRating",
	.whirlpool = @"whirlpool",
};

const struct HotelRelationships HotelRelationships = {
};

const struct HotelFetchedProperties HotelFetchedProperties = {
};

@implementation HotelID
@end

@implementation _Hotel

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Hotel" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Hotel";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Hotel" inManagedObjectContext:moc_];
}

- (HotelID*)objectID {
	return (HotelID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"accessibleBathroomValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"accessibleBathroom"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"accessibleTravelValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"accessibleTravel"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"amenityMaskValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"amenityMask"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"babySittingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"babySitting"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"brailleValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"braille"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"breakfastValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"breakfast"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"businessCenterValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"businessCenter"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"confidenceRatingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"confidenceRating"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"deafEquipmentValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"deafEquipment"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"extendingParkingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"extendingParking"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"fitnessCenterValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"fitnessCenter"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"freeAirportShuttleValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"freeAirportShuttle"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"freeParkingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"freeParking"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"handicapParkingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"handicapParking"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"highRateValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"highRate"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"hotTubValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"hotTub"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"hotelIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"hotelId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"hotelInDestinationValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"hotelInDestination"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"hotelRatingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"hotelRating"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"inRoomAccesibilityValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"inRoomAccesibility"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"indoorPoolValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"indoorPool"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"internetAccessAvailableValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"internetAccessAvailable"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"jacuzziValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"jacuzzi"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"kidsActivitiesValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"kidsActivities"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"kitchenValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"kitchen"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"latitudeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"latitude"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"longtitudeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"longtitude"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"lowRateValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"lowRate"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"outdoorPoolValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"outdoorPool"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"parkingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"parking"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"petsAllowedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"petsAllowed"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"poolValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"pool"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"propertyCategoryValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"propertyCategory"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"proximityDistanceValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"proximityDistance"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"restaurantOnSiteValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"restaurantOnSite"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"rollinShowerValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"rollinShower"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"roomServiceValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"roomService"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"spaOnSiteValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"spaOnSite"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"tripAdvisorRatingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"tripAdvisorRating"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"whirlpoolValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"whirlpool"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic accessibleBathroom;



- (BOOL)accessibleBathroomValue {
	NSNumber *result = [self accessibleBathroom];
	return [result boolValue];
}

- (void)setAccessibleBathroomValue:(BOOL)value_ {
	[self setAccessibleBathroom:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveAccessibleBathroomValue {
	NSNumber *result = [self primitiveAccessibleBathroom];
	return [result boolValue];
}

- (void)setPrimitiveAccessibleBathroomValue:(BOOL)value_ {
	[self setPrimitiveAccessibleBathroom:[NSNumber numberWithBool:value_]];
}





@dynamic accessibleTravel;



- (BOOL)accessibleTravelValue {
	NSNumber *result = [self accessibleTravel];
	return [result boolValue];
}

- (void)setAccessibleTravelValue:(BOOL)value_ {
	[self setAccessibleTravel:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveAccessibleTravelValue {
	NSNumber *result = [self primitiveAccessibleTravel];
	return [result boolValue];
}

- (void)setPrimitiveAccessibleTravelValue:(BOOL)value_ {
	[self setPrimitiveAccessibleTravel:[NSNumber numberWithBool:value_]];
}





@dynamic address1;






@dynamic airportCode;






@dynamic amenityMask;



- (int32_t)amenityMaskValue {
	NSNumber *result = [self amenityMask];
	return [result intValue];
}

- (void)setAmenityMaskValue:(int32_t)value_ {
	[self setAmenityMask:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveAmenityMaskValue {
	NSNumber *result = [self primitiveAmenityMask];
	return [result intValue];
}

- (void)setPrimitiveAmenityMaskValue:(int32_t)value_ {
	[self setPrimitiveAmenityMask:[NSNumber numberWithInt:value_]];
}





@dynamic babySitting;



- (BOOL)babySittingValue {
	NSNumber *result = [self babySitting];
	return [result boolValue];
}

- (void)setBabySittingValue:(BOOL)value_ {
	[self setBabySitting:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveBabySittingValue {
	NSNumber *result = [self primitiveBabySitting];
	return [result boolValue];
}

- (void)setPrimitiveBabySittingValue:(BOOL)value_ {
	[self setPrimitiveBabySitting:[NSNumber numberWithBool:value_]];
}





@dynamic braille;



- (BOOL)brailleValue {
	NSNumber *result = [self braille];
	return [result boolValue];
}

- (void)setBrailleValue:(BOOL)value_ {
	[self setBraille:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveBrailleValue {
	NSNumber *result = [self primitiveBraille];
	return [result boolValue];
}

- (void)setPrimitiveBrailleValue:(BOOL)value_ {
	[self setPrimitiveBraille:[NSNumber numberWithBool:value_]];
}





@dynamic breakfast;



- (BOOL)breakfastValue {
	NSNumber *result = [self breakfast];
	return [result boolValue];
}

- (void)setBreakfastValue:(BOOL)value_ {
	[self setBreakfast:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveBreakfastValue {
	NSNumber *result = [self primitiveBreakfast];
	return [result boolValue];
}

- (void)setPrimitiveBreakfastValue:(BOOL)value_ {
	[self setPrimitiveBreakfast:[NSNumber numberWithBool:value_]];
}





@dynamic businessCenter;



- (BOOL)businessCenterValue {
	NSNumber *result = [self businessCenter];
	return [result boolValue];
}

- (void)setBusinessCenterValue:(BOOL)value_ {
	[self setBusinessCenter:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveBusinessCenterValue {
	NSNumber *result = [self primitiveBusinessCenter];
	return [result boolValue];
}

- (void)setPrimitiveBusinessCenterValue:(BOOL)value_ {
	[self setPrimitiveBusinessCenter:[NSNumber numberWithBool:value_]];
}





@dynamic city;






@dynamic confidenceRating;



- (int32_t)confidenceRatingValue {
	NSNumber *result = [self confidenceRating];
	return [result intValue];
}

- (void)setConfidenceRatingValue:(int32_t)value_ {
	[self setConfidenceRating:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveConfidenceRatingValue {
	NSNumber *result = [self primitiveConfidenceRating];
	return [result intValue];
}

- (void)setPrimitiveConfidenceRatingValue:(int32_t)value_ {
	[self setPrimitiveConfidenceRating:[NSNumber numberWithInt:value_]];
}





@dynamic countryCode;






@dynamic deafEquipment;



- (BOOL)deafEquipmentValue {
	NSNumber *result = [self deafEquipment];
	return [result boolValue];
}

- (void)setDeafEquipmentValue:(BOOL)value_ {
	[self setDeafEquipment:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveDeafEquipmentValue {
	NSNumber *result = [self primitiveDeafEquipment];
	return [result boolValue];
}

- (void)setPrimitiveDeafEquipmentValue:(BOOL)value_ {
	[self setPrimitiveDeafEquipment:[NSNumber numberWithBool:value_]];
}





@dynamic deepLink;






@dynamic eanShortDescription;






@dynamic extendingParking;



- (BOOL)extendingParkingValue {
	NSNumber *result = [self extendingParking];
	return [result boolValue];
}

- (void)setExtendingParkingValue:(BOOL)value_ {
	[self setExtendingParking:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveExtendingParkingValue {
	NSNumber *result = [self primitiveExtendingParking];
	return [result boolValue];
}

- (void)setPrimitiveExtendingParkingValue:(BOOL)value_ {
	[self setPrimitiveExtendingParking:[NSNumber numberWithBool:value_]];
}





@dynamic fitnessCenter;



- (BOOL)fitnessCenterValue {
	NSNumber *result = [self fitnessCenter];
	return [result boolValue];
}

- (void)setFitnessCenterValue:(BOOL)value_ {
	[self setFitnessCenter:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveFitnessCenterValue {
	NSNumber *result = [self primitiveFitnessCenter];
	return [result boolValue];
}

- (void)setPrimitiveFitnessCenterValue:(BOOL)value_ {
	[self setPrimitiveFitnessCenter:[NSNumber numberWithBool:value_]];
}





@dynamic freeAirportShuttle;



- (BOOL)freeAirportShuttleValue {
	NSNumber *result = [self freeAirportShuttle];
	return [result boolValue];
}

- (void)setFreeAirportShuttleValue:(BOOL)value_ {
	[self setFreeAirportShuttle:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveFreeAirportShuttleValue {
	NSNumber *result = [self primitiveFreeAirportShuttle];
	return [result boolValue];
}

- (void)setPrimitiveFreeAirportShuttleValue:(BOOL)value_ {
	[self setPrimitiveFreeAirportShuttle:[NSNumber numberWithBool:value_]];
}





@dynamic freeParking;



- (BOOL)freeParkingValue {
	NSNumber *result = [self freeParking];
	return [result boolValue];
}

- (void)setFreeParkingValue:(BOOL)value_ {
	[self setFreeParking:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveFreeParkingValue {
	NSNumber *result = [self primitiveFreeParking];
	return [result boolValue];
}

- (void)setPrimitiveFreeParkingValue:(BOOL)value_ {
	[self setPrimitiveFreeParking:[NSNumber numberWithBool:value_]];
}





@dynamic handicapParking;



- (BOOL)handicapParkingValue {
	NSNumber *result = [self handicapParking];
	return [result boolValue];
}

- (void)setHandicapParkingValue:(BOOL)value_ {
	[self setHandicapParking:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveHandicapParkingValue {
	NSNumber *result = [self primitiveHandicapParking];
	return [result boolValue];
}

- (void)setPrimitiveHandicapParkingValue:(BOOL)value_ {
	[self setPrimitiveHandicapParking:[NSNumber numberWithBool:value_]];
}





@dynamic highRate;



- (float)highRateValue {
	NSNumber *result = [self highRate];
	return [result floatValue];
}

- (void)setHighRateValue:(float)value_ {
	[self setHighRate:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveHighRateValue {
	NSNumber *result = [self primitiveHighRate];
	return [result floatValue];
}

- (void)setPrimitiveHighRateValue:(float)value_ {
	[self setPrimitiveHighRate:[NSNumber numberWithFloat:value_]];
}





@dynamic hotTub;



- (BOOL)hotTubValue {
	NSNumber *result = [self hotTub];
	return [result boolValue];
}

- (void)setHotTubValue:(BOOL)value_ {
	[self setHotTub:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveHotTubValue {
	NSNumber *result = [self primitiveHotTub];
	return [result boolValue];
}

- (void)setPrimitiveHotTubValue:(BOOL)value_ {
	[self setPrimitiveHotTub:[NSNumber numberWithBool:value_]];
}





@dynamic hotelId;



- (int32_t)hotelIdValue {
	NSNumber *result = [self hotelId];
	return [result intValue];
}

- (void)setHotelIdValue:(int32_t)value_ {
	[self setHotelId:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveHotelIdValue {
	NSNumber *result = [self primitiveHotelId];
	return [result intValue];
}

- (void)setPrimitiveHotelIdValue:(int32_t)value_ {
	[self setPrimitiveHotelId:[NSNumber numberWithInt:value_]];
}





@dynamic hotelInDestination;



- (BOOL)hotelInDestinationValue {
	NSNumber *result = [self hotelInDestination];
	return [result boolValue];
}

- (void)setHotelInDestinationValue:(BOOL)value_ {
	[self setHotelInDestination:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveHotelInDestinationValue {
	NSNumber *result = [self primitiveHotelInDestination];
	return [result boolValue];
}

- (void)setPrimitiveHotelInDestinationValue:(BOOL)value_ {
	[self setPrimitiveHotelInDestination:[NSNumber numberWithBool:value_]];
}





@dynamic hotelRating;



- (float)hotelRatingValue {
	NSNumber *result = [self hotelRating];
	return [result floatValue];
}

- (void)setHotelRatingValue:(float)value_ {
	[self setHotelRating:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveHotelRatingValue {
	NSNumber *result = [self primitiveHotelRating];
	return [result floatValue];
}

- (void)setPrimitiveHotelRatingValue:(float)value_ {
	[self setPrimitiveHotelRating:[NSNumber numberWithFloat:value_]];
}





@dynamic inRoomAccesibility;



- (BOOL)inRoomAccesibilityValue {
	NSNumber *result = [self inRoomAccesibility];
	return [result boolValue];
}

- (void)setInRoomAccesibilityValue:(BOOL)value_ {
	[self setInRoomAccesibility:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveInRoomAccesibilityValue {
	NSNumber *result = [self primitiveInRoomAccesibility];
	return [result boolValue];
}

- (void)setPrimitiveInRoomAccesibilityValue:(BOOL)value_ {
	[self setPrimitiveInRoomAccesibility:[NSNumber numberWithBool:value_]];
}





@dynamic indoorPool;



- (BOOL)indoorPoolValue {
	NSNumber *result = [self indoorPool];
	return [result boolValue];
}

- (void)setIndoorPoolValue:(BOOL)value_ {
	[self setIndoorPool:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveIndoorPoolValue {
	NSNumber *result = [self primitiveIndoorPool];
	return [result boolValue];
}

- (void)setPrimitiveIndoorPoolValue:(BOOL)value_ {
	[self setPrimitiveIndoorPool:[NSNumber numberWithBool:value_]];
}





@dynamic internetAccessAvailable;



- (BOOL)internetAccessAvailableValue {
	NSNumber *result = [self internetAccessAvailable];
	return [result boolValue];
}

- (void)setInternetAccessAvailableValue:(BOOL)value_ {
	[self setInternetAccessAvailable:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveInternetAccessAvailableValue {
	NSNumber *result = [self primitiveInternetAccessAvailable];
	return [result boolValue];
}

- (void)setPrimitiveInternetAccessAvailableValue:(BOOL)value_ {
	[self setPrimitiveInternetAccessAvailable:[NSNumber numberWithBool:value_]];
}





@dynamic jacuzzi;



- (BOOL)jacuzziValue {
	NSNumber *result = [self jacuzzi];
	return [result boolValue];
}

- (void)setJacuzziValue:(BOOL)value_ {
	[self setJacuzzi:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveJacuzziValue {
	NSNumber *result = [self primitiveJacuzzi];
	return [result boolValue];
}

- (void)setPrimitiveJacuzziValue:(BOOL)value_ {
	[self setPrimitiveJacuzzi:[NSNumber numberWithBool:value_]];
}





@dynamic kidsActivities;



- (BOOL)kidsActivitiesValue {
	NSNumber *result = [self kidsActivities];
	return [result boolValue];
}

- (void)setKidsActivitiesValue:(BOOL)value_ {
	[self setKidsActivities:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveKidsActivitiesValue {
	NSNumber *result = [self primitiveKidsActivities];
	return [result boolValue];
}

- (void)setPrimitiveKidsActivitiesValue:(BOOL)value_ {
	[self setPrimitiveKidsActivities:[NSNumber numberWithBool:value_]];
}





@dynamic kitchen;



- (BOOL)kitchenValue {
	NSNumber *result = [self kitchen];
	return [result boolValue];
}

- (void)setKitchenValue:(BOOL)value_ {
	[self setKitchen:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveKitchenValue {
	NSNumber *result = [self primitiveKitchen];
	return [result boolValue];
}

- (void)setPrimitiveKitchenValue:(BOOL)value_ {
	[self setPrimitiveKitchen:[NSNumber numberWithBool:value_]];
}





@dynamic latitude;



- (float)latitudeValue {
	NSNumber *result = [self latitude];
	return [result floatValue];
}

- (void)setLatitudeValue:(float)value_ {
	[self setLatitude:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveLatitudeValue {
	NSNumber *result = [self primitiveLatitude];
	return [result floatValue];
}

- (void)setPrimitiveLatitudeValue:(float)value_ {
	[self setPrimitiveLatitude:[NSNumber numberWithFloat:value_]];
}





@dynamic locationDescription;






@dynamic longtitude;



- (float)longtitudeValue {
	NSNumber *result = [self longtitude];
	return [result floatValue];
}

- (void)setLongtitudeValue:(float)value_ {
	[self setLongtitude:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveLongtitudeValue {
	NSNumber *result = [self primitiveLongtitude];
	return [result floatValue];
}

- (void)setPrimitiveLongtitudeValue:(float)value_ {
	[self setPrimitiveLongtitude:[NSNumber numberWithFloat:value_]];
}





@dynamic lowRate;



- (float)lowRateValue {
	NSNumber *result = [self lowRate];
	return [result floatValue];
}

- (void)setLowRateValue:(float)value_ {
	[self setLowRate:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveLowRateValue {
	NSNumber *result = [self primitiveLowRate];
	return [result floatValue];
}

- (void)setPrimitiveLowRateValue:(float)value_ {
	[self setPrimitiveLowRate:[NSNumber numberWithFloat:value_]];
}





@dynamic name;






@dynamic outdoorPool;



- (BOOL)outdoorPoolValue {
	NSNumber *result = [self outdoorPool];
	return [result boolValue];
}

- (void)setOutdoorPoolValue:(BOOL)value_ {
	[self setOutdoorPool:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveOutdoorPoolValue {
	NSNumber *result = [self primitiveOutdoorPool];
	return [result boolValue];
}

- (void)setPrimitiveOutdoorPoolValue:(BOOL)value_ {
	[self setPrimitiveOutdoorPool:[NSNumber numberWithBool:value_]];
}





@dynamic parking;



- (BOOL)parkingValue {
	NSNumber *result = [self parking];
	return [result boolValue];
}

- (void)setParkingValue:(BOOL)value_ {
	[self setParking:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveParkingValue {
	NSNumber *result = [self primitiveParking];
	return [result boolValue];
}

- (void)setPrimitiveParkingValue:(BOOL)value_ {
	[self setPrimitiveParking:[NSNumber numberWithBool:value_]];
}





@dynamic petsAllowed;



- (BOOL)petsAllowedValue {
	NSNumber *result = [self petsAllowed];
	return [result boolValue];
}

- (void)setPetsAllowedValue:(BOOL)value_ {
	[self setPetsAllowed:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitivePetsAllowedValue {
	NSNumber *result = [self primitivePetsAllowed];
	return [result boolValue];
}

- (void)setPrimitivePetsAllowedValue:(BOOL)value_ {
	[self setPrimitivePetsAllowed:[NSNumber numberWithBool:value_]];
}





@dynamic pool;



- (BOOL)poolValue {
	NSNumber *result = [self pool];
	return [result boolValue];
}

- (void)setPoolValue:(BOOL)value_ {
	[self setPool:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitivePoolValue {
	NSNumber *result = [self primitivePool];
	return [result boolValue];
}

- (void)setPrimitivePoolValue:(BOOL)value_ {
	[self setPrimitivePool:[NSNumber numberWithBool:value_]];
}





@dynamic postalCode;






@dynamic propertyCategory;



- (int32_t)propertyCategoryValue {
	NSNumber *result = [self propertyCategory];
	return [result intValue];
}

- (void)setPropertyCategoryValue:(int32_t)value_ {
	[self setPropertyCategory:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitivePropertyCategoryValue {
	NSNumber *result = [self primitivePropertyCategory];
	return [result intValue];
}

- (void)setPrimitivePropertyCategoryValue:(int32_t)value_ {
	[self setPrimitivePropertyCategory:[NSNumber numberWithInt:value_]];
}





@dynamic proximityDistance;



- (float)proximityDistanceValue {
	NSNumber *result = [self proximityDistance];
	return [result floatValue];
}

- (void)setProximityDistanceValue:(float)value_ {
	[self setProximityDistance:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveProximityDistanceValue {
	NSNumber *result = [self primitiveProximityDistance];
	return [result floatValue];
}

- (void)setPrimitiveProximityDistanceValue:(float)value_ {
	[self setPrimitiveProximityDistance:[NSNumber numberWithFloat:value_]];
}





@dynamic proximityUnit;






@dynamic rateCurrencyCode;






@dynamic restaurantOnSite;



- (BOOL)restaurantOnSiteValue {
	NSNumber *result = [self restaurantOnSite];
	return [result boolValue];
}

- (void)setRestaurantOnSiteValue:(BOOL)value_ {
	[self setRestaurantOnSite:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveRestaurantOnSiteValue {
	NSNumber *result = [self primitiveRestaurantOnSite];
	return [result boolValue];
}

- (void)setPrimitiveRestaurantOnSiteValue:(BOOL)value_ {
	[self setPrimitiveRestaurantOnSite:[NSNumber numberWithBool:value_]];
}





@dynamic rollinShower;



- (BOOL)rollinShowerValue {
	NSNumber *result = [self rollinShower];
	return [result boolValue];
}

- (void)setRollinShowerValue:(BOOL)value_ {
	[self setRollinShower:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveRollinShowerValue {
	NSNumber *result = [self primitiveRollinShower];
	return [result boolValue];
}

- (void)setPrimitiveRollinShowerValue:(BOOL)value_ {
	[self setPrimitiveRollinShower:[NSNumber numberWithBool:value_]];
}





@dynamic roomService;



- (BOOL)roomServiceValue {
	NSNumber *result = [self roomService];
	return [result boolValue];
}

- (void)setRoomServiceValue:(BOOL)value_ {
	[self setRoomService:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveRoomServiceValue {
	NSNumber *result = [self primitiveRoomService];
	return [result boolValue];
}

- (void)setPrimitiveRoomServiceValue:(BOOL)value_ {
	[self setPrimitiveRoomService:[NSNumber numberWithBool:value_]];
}





@dynamic spaOnSite;



- (BOOL)spaOnSiteValue {
	NSNumber *result = [self spaOnSite];
	return [result boolValue];
}

- (void)setSpaOnSiteValue:(BOOL)value_ {
	[self setSpaOnSite:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveSpaOnSiteValue {
	NSNumber *result = [self primitiveSpaOnSite];
	return [result boolValue];
}

- (void)setPrimitiveSpaOnSiteValue:(BOOL)value_ {
	[self setPrimitiveSpaOnSite:[NSNumber numberWithBool:value_]];
}





@dynamic stateProvinceCode;






@dynamic supplierType;






@dynamic thumbnailURL;






@dynamic tripAdvisorRating;



- (int32_t)tripAdvisorRatingValue {
	NSNumber *result = [self tripAdvisorRating];
	return [result intValue];
}

- (void)setTripAdvisorRatingValue:(int32_t)value_ {
	[self setTripAdvisorRating:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveTripAdvisorRatingValue {
	NSNumber *result = [self primitiveTripAdvisorRating];
	return [result intValue];
}

- (void)setPrimitiveTripAdvisorRatingValue:(int32_t)value_ {
	[self setPrimitiveTripAdvisorRating:[NSNumber numberWithInt:value_]];
}





@dynamic whirlpool;



- (BOOL)whirlpoolValue {
	NSNumber *result = [self whirlpool];
	return [result boolValue];
}

- (void)setWhirlpoolValue:(BOOL)value_ {
	[self setWhirlpool:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveWhirlpoolValue {
	NSNumber *result = [self primitiveWhirlpool];
	return [result boolValue];
}

- (void)setPrimitiveWhirlpoolValue:(BOOL)value_ {
	[self setPrimitiveWhirlpool:[NSNumber numberWithBool:value_]];
}










@end
