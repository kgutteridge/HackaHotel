#import "Hotel.h"


#import "NSString+Helper.h"
#import "NSDictionary+Helper.h"

@interface Hotel ()

// Private interface goes here.

-(BOOL)hasBusinessCenter;
-(BOOL)hasFitnessCenter;
-(BOOL)hasHotTub;
-(BOOL)hasInternetAccessAvailable;
-(BOOL)hasKidsActivities;
-(BOOL)hasKitchen;
-(BOOL)hasPetsAllowed;
-(BOOL)hasPool;
-(BOOL)hasRestaurantOnSite;
-(BOOL)hasSpaOnSite;
-(BOOL)hasWhirlpool;
-(BOOL)hasBreakfast;
-(BOOL)hasBabysitting;
-(BOOL)hasJacuzzi;
-(BOOL)hasParking;
-(BOOL)hasRoomService;
-(BOOL)hasAccesibleTravel;
-(BOOL)hasAccessibleBathroom;
-(BOOL)hasRollInShower;
-(BOOL)hasHandicapParking;
-(BOOL)hasInRoomAccesibility;
-(BOOL)hasDeafEquipment;
-(BOOL)hasBraille;
-(BOOL)hasFreeAirportShuttle;
-(BOOL)hasIndoorPool;
-(BOOL)hasOutdoorPool;
-(BOOL)hasExtendedParking;
-(BOOL)hasFreeParking;

@end


@implementation Hotel

// Custom logic goes here.
-(void)setPropertiesFromDictionary:(NSDictionary *)dictionary
{
    self.hotelId = [dictionary objectForKeyNotNull:@"hotelId"];
    self.name = [dictionary objectForKeyNotNull:@"name"];
     self.address1 = [dictionary objectForKeyNotNull:@"address1"];
     self.city = [dictionary objectForKeyNotNull:@"city"];
     self.stateProvinceCode= [dictionary objectForKeyNotNull:@"stateProvinceCode"];
     self.postalCode= [dictionary objectForKeyNotNull:@"postalCode"];
     self.countryCode= [dictionary objectForKeyNotNull:@"countryCode"];
     self.airportCode= [dictionary objectForKeyNotNull:@"airportCode"];
     self.supplierType= [dictionary objectForKeyNotNull:@"supplierType"];
     self.propertyCategory= [dictionary objectForKeyNotNull:@"propertyCategory"];
     self.hotelRating= [dictionary objectForKeyNotNull:@"hotelRating"];
     self.confidenceRating= [dictionary objectForKeyNotNull:@"confidenceRating"];
     self.amenityMask= [dictionary objectForKeyNotNull:@"amenityMask"];
     self.tripAdvisorRating= [dictionary objectForKeyNotNull:@"tripAdvisorRating"];
     self.locationDescription= [dictionary objectForKeyNotNull:@"locationDescription"];
     self.eanShortDescription= [dictionary objectForKeyNotNull:@"eanShortDescription"];
     self.highRate= [dictionary objectForKeyNotNull:@"highRate"];
     self.lowRate= [dictionary objectForKeyNotNull:@"lowRate"];
     self.rateCurrencyCode= [dictionary objectForKeyNotNull:@"rateCurrencyCode"];
     self.latitude= [dictionary objectForKeyNotNull:@"latitude"];
     self.longtitude= [dictionary objectForKeyNotNull:@"longitude"];
     self.proximityDistance= [dictionary objectForKeyNotNull:@"proximityDistance"];
     self.proximityUnit= [dictionary objectForKeyNotNull:@"proximityUnit"];
     self.hotelInDestination= [dictionary objectForKeyNotNull:@"hotelInDestination"];
     self.deepLink= [dictionary objectForKeyNotNull:@"thumbNailUrl"];
     self.thumbnailURL = [dictionary objectForKeyNotNull:@"thumbNailUrl"];
    
    /*
    self.businessCenterValue = [self hasBusinessCenter];
    self.fitnessCenterValue = [self hasFitnessCenter];
    self.hotTubValue = [self hasHotTub];
    
     ....
     
     */
    
  
}

-(BOOL)hasBusinessCenter
{
    return [self.amenityMask longValue] & 1;
}

-(BOOL)hasFitnessCenter
{
    return [self.amenityMask longValue] & 2;
}

-(BOOL)hasHotTub
{
    return [self.amenityMask longValue] & 4;
}

-(BOOL)hasInternetAccessAvailable
{
    return [self.amenityMask longValue] & 8;
}

-(BOOL)hasKidsActivities
{
    return [self.amenityMask longValue] & 16;
}

-(BOOL)hasKitchen
{
    return [self.amenityMask longValue] & 32;
}

-(BOOL)hasPetsAllowed
{
    return [self.amenityMask longValue] & 64;
}

-(BOOL)hasPool
{
    return [self.amenityMask longValue] & 128;
}

-(BOOL)hasRestaurantOnSite
{
    return [self.amenityMask longValue] & 256;
}

-(BOOL)hasSpaOnSite
{
    return [self.amenityMask longValue] & 512;
}

-(BOOL)hasWhirlpool
{
    return [self.amenityMask longValue] & 1024;
}

-(BOOL)hasBreakfast
{
    return [self.amenityMask longValue] & 2048;
}

-(BOOL)hasBabysitting
{
    return [self.amenityMask longValue] & 4096;
}

-(BOOL)hasJacuzzi
{
    return [self.amenityMask longValue] & 8192;
}

-(BOOL)hasParking
{
    return [self.amenityMask longValue] & 16834;
}

-(BOOL)hasRoomService
{
    return [self.amenityMask longValue] & 32768;
}

-(BOOL)hasAccesibleTravel
{
    return [self.amenityMask longValue] & 65536;
}

-(BOOL)hasAccessibleBathroom
{
    return [self.amenityMask longValue] & 131072;
}

-(BOOL)hasRollInShower
{
    return [self.amenityMask longValue] & 262144;
}

-(BOOL)hasHandicapParking
{
    return [self.amenityMask longValue] & 524288;
}

-(BOOL)hasInRoomAccesibility
{
    return [self.amenityMask longValue] & 1048576;
}

-(BOOL)hasDeafEquipment
{
    return [self.amenityMask longValue] & 2097152;
}

-(BOOL)hasBraille
{
    return [self.amenityMask longValue] & 4194304;
}

-(BOOL)hasFreeAirportShuttle
{
    return [self.amenityMask longValue] & 8388608;
}

-(BOOL)hasIndoorPool
{
    return [self.amenityMask longValue] & 16777216;
}

-(BOOL)hasOutdoorPool
{
    return [self.amenityMask longValue] & 33554432 ;
}

-(BOOL)hasExtendedParking
{
    return [self.amenityMask longValue] & 67108864;
}

-(BOOL)hasFreeParking
{
    return [self.amenityMask longValue] & 134217728;
}

@end