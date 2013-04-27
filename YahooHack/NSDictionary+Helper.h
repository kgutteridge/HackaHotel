//
//  NSDictionary+Helper.h
//  YahooHack
//
//  Created by Kieran Gutteridge on 28/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Helper)

- (id)objectForKeyNotNull:(NSString *)key;

@end
