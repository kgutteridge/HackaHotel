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
                       startDate:(NSDate *)startDate
                         endDate:(NSDate *)endDate
                     withSuccess:(void (^)(NSURLRequest *request, NSURLResponse *response, id JSON))successBlock
                      andFailure:(void (^)(NSURLRequest *request, NSURLResponse *response, NSError *error, id JSON))failureBlock;

+(void)hotelDetailsForCity:(NSString *)city
         stateProvinceCode:(NSString *)province
               countryCode:(NSString *)countyCode
                 startDate:(NSDate *)startDate
                   endDate:(NSDate *)endDate
               withSuccess:(void (^)(NSURLRequest *request, NSURLResponse *response, id JSON))successBlock
                andFailure:(void (^)(NSURLRequest *request, NSURLResponse *response, NSError *error, id JSON))failureBlock;

@end
