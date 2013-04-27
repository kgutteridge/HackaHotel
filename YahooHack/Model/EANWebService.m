//
//  EANWebService.m
//  YahooHack
//
//  Created by Kieran Gutteridge on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import "EANWebService.h"
#import "EANAPIManager.h"
#import <AFNetworking/AFHTTPRequestOperation.h>

@implementation EANWebService

+(void)hotelDetailsForSearchTerm:(NSString *)searchTerm
                       startDate:(NSDate *)startDate
                         endDate:(NSDate *)endDate
                     withSuccess:(void (^)(NSURLRequest *request, NSURLResponse *response, id JSON))successBlock
                      andFailure:(void (^)(NSURLRequest *request, NSURLResponse *response, NSError *error, id JSON))failureBlock
{
    //MM/DD/YYYY
    NSDictionary *parameters = [NSDictionary dictionaryWithObjectsAndKeys:
                  EANMinorVersion, @"minorRev",
                  APIKey, @"apiKey",
                  [EANAPIManager generateAPISignatureWithKey:APIKey withSecret:APISecret],@"sig",
                  @"en_US", @"locale",
                  @"abc", @"destinationString",
                  @"256",@"numberOfResults",
                  @"6/25/2013",@"arrivalDate",
                  @"6/27/2013",@"depatureDate",
                  @"DEFAULT",@"sort",
                  @"JSON",@"type",
                                nil];

    NSMutableURLRequest *urlRequest = [[EANAPIManager sharedManager] requestWithMethod:@"GET" path:@"list" parameters:parameters];

    
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:urlRequest
                                                                                        success:successBlock
                                                                                        failure:failureBlock
                                         ];
    [operation start];
}


+(void)hotelDetailsForCity:(NSString *)city
         stateProvinceCode:(NSString *)province
               countryCode:(NSString *)countyCode
                 startDate:(NSDate *)startDate
                         endDate:(NSDate *)endDate
                     withSuccess:(void (^)(NSURLRequest *request, NSURLResponse *response, id JSON))successBlock
                      andFailure:(void (^)(NSURLRequest *request, NSURLResponse *response, NSError *error, id JSON))failureBlock
{
    //MM/DD/YYYY
    NSDictionary *parameters = [NSDictionary dictionaryWithObjectsAndKeys:
                                EANMinorVersion, @"minorRev",
                                APIKey, @"apiKey",
                                [EANAPIManager generateAPISignatureWithKey:APIKey withSecret:APISecret],@"sig",
                                @"en_US", @"locale",
                                city, @"city",
                                province, @"province",
                                countyCode, @"countryCode",
                                @"256",@"numberOfResults",
                                @"6/25/2013",@"arrivalDate",
                                @"6/27/2013",@"depatureDate",
                                @"DEFAULT",@"sort",
                                @"JSON",@"type",
                                nil];
    
    NSMutableURLRequest *urlRequest = [[EANAPIManager sharedManager] requestWithMethod:@"GET" path:@"list" parameters:parameters];
    
    
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:urlRequest
                                                                                        success:successBlock
                                                                                        failure:failureBlock
                                         ];
    [operation start];
}

@end
