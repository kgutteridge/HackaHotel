// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Hotel.m instead.

#import "_Hotel.h"

const struct HotelAttributes HotelAttributes = {
	.address1 = @"address1",
	.airportCode = @"airportCode",
	.amenityMask = @"amenityMask",
	.city = @"city",
	.confidenceRating = @"confidenceRating",
	.countryCode = @"countryCode",
	.deepLink = @"deepLink",
	.eanShortDescription = @"eanShortDescription",
	.highRate = @"highRate",
	.hotelId = @"hotelId",
	.hotelInDestination = @"hotelInDestination",
	.hotelRating = @"hotelRating",
	.latitude = @"latitude",
	.locationDescription = @"locationDescription",
	.longtitude = @"longtitude",
	.lowRate = @"lowRate",
	.name = @"name",
	.postalCode = @"postalCode",
	.propertyCategory = @"propertyCategory",
	.proximityDistance = @"proximityDistance",
	.proximityUnit = @"proximityUnit",
	.rateCurrencyCode = @"rateCurrencyCode",
	.stateProvinceCode = @"stateProvinceCode",
	.supplierType = @"supplierType",
	.thumbnailURL = @"thumbnailURL",
	.tripAdvisorRating = @"tripAdvisorRating",
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
	
	if ([key isEqualToString:@"amenityMaskValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"amenityMask"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"confidenceRatingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"confidenceRating"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"highRateValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"highRate"];
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
	if ([key isEqualToString:@"tripAdvisorRatingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"tripAdvisorRating"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
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






@dynamic deepLink;






@dynamic eanShortDescription;






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










@end
