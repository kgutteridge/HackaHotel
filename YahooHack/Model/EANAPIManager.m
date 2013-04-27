//
//  EANAPIManager.m
//  YahooHack
//
//  Created by Kieran Gutteridge on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import "EANAPIManager.h"
#import "AFNetworking/AFJSONRequestOperation.h"
#import "AFNetworking/AFNetworkActivityIndicatorManager.h"

@implementation EANAPIManager


- (id)initWithBaseURL:(NSURL *)url
{
    self = [super initWithBaseURL:url];
    if(!self)
        return nil;
    
    //  [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    //  [self setDefaultHeader:@"Accept" value:@"application/json"];
    // [self setParameterEncoding:AFJSONParameterEncoding];
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];
    
    return self;
}

#pragma mark - Singleton Methods

+ (EANAPIManager *)sharedManager
{
    static dispatch_once_t pred;
    static EANAPIManager *_sharedManager = nil;
    
    dispatch_once(&pred, ^{
        NSString *url = @"someURL";
        _sharedManager = [[self alloc] initWithBaseURL:[NSURL URLWithString:url]];
    }); 
    return _sharedManager;
}



@end
