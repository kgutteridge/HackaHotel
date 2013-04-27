//
//  EANAPIManager.h
//  YahooHack
//
//  Created by Kieran Gutteridge on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import "AFHTTPClient.h"

@interface EANAPIManager : AFHTTPClient

+ (EANAPIManager *)sharedManager;

+ (NSString *)generateAPISignatureWithKey:(NSString  *)_APIKey withSecret:(NSString *)_APISecret;

@end
