//
//  Config.h
//  YahooHack
//
//  Created by Kieran Gutteridge on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#define EANBaseURL                  @"http://api.ean.com/ean-services/rs/hotel/"
#define EANVersion                  @"v3"
#define EANMinorVersion             @"5"

#define EANURL                      [NSString stringWithFormat:@"%@/%@/",EANBaseURL,EANVersion]

#define APIKey                      SECRET_API_KEY
#define APISecret                   SECRET_API_SECRET
#define APICID                      @"55505"

#define MEDIA_URL_PREFIX @"http://media.expedia.com"

#define kChildrensActivities 4
#define kKitchen 5
#define kPetsAllowed 6
#define kPool 7
#define kOnSiteRestaurant 8
#define kOnSiteSpa 9
#define kWhirlpool 10
#define kBreakfast 11
#define kBabySiting 12
#define kJacuzzi 13
#define kParking 14
#define kRoomService 15
#define kAccessableTravel 16
#define kAccesibleBathroom 17
#define kRollInShower 18
#define kHandicapParking 19
#define kRoomAccesibility 20
#define kDeafEquipment 21
#define kBraille 22
#define kIndoorPool 23
#define kOutdoorPool 24
#define kFreeAirportShuttle 25
#define kExtendedParking 26
#define kFreeParking 27