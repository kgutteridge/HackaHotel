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




