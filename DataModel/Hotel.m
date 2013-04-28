#import "Hotel.h"
#import "NSString+Helper.h"
#import "NSDictionary+Helper.h"

@interface Hotel ()

// Private interface goes here.

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
    
    
    
}


@end
