//
//  NSDictionary+Helper.m
//  YahooHack
//
//  Created by Kieran Gutteridge on 28/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import "NSDictionary+Helper.h"

@implementation NSDictionary (Helper)

- (id)objectForKeyNotNull:(NSString *)key {
    id object = [self objectForKey:key];
    if ((NSNull *)object == [NSNull null] || (__bridge CFNullRef)object == kCFNull)
        return nil;
    
    return object;
}

@end
