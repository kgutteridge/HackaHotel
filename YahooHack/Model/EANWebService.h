//
//  EANWebService.h
//  YahooHack
//
//  Created by Kieran Gutteridge on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import <AFNetworking/AFHTTPRequestOperation.h>
#import <AFNetworking/AFJSONRequestOperation.h>

#import "EANAPIManager.h"

@interface EANWebService : AFHTTPRequestOperation

+(void)hotelDetailsForSearchTerm:(NSString *)searchTerm
                     withSuccess:(void (^)(NSURLRequest *request, NSURLResponse *response, id JSON))success
                      andFailure:(void (^)(NSURLRequest *request, NSURLResponse *response, NSError *error, id JSON))failure;

@end
