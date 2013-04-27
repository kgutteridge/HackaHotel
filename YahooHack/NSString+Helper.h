//
//  NSString+Helper.h
//  YahooHack
//
//  Created by Kieran Gutteridge on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Helper)

- (NSString *)urlencode;
- (NSString*)md5;
- (BOOL) empty;
- (NSString *)subStringThatFitsWidth:(float)width ForFont:(UIFont *)font;


@end
