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
      self.thumbnailURL = [dictionary objectForKeyNotNull:@"thumbNailUrl"];
}


@end
