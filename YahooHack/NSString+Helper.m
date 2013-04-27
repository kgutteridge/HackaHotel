//
//  NSString+Helper.m
//  YahooHack
//
//  Created by Kieran Gutteridge on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import "NSString+Helper.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Helper)

- (NSString *)urlencode {
    
    NSMutableString *output = [NSMutableString string];
    const unsigned char *source = (const unsigned char *)[self UTF8String];
    int sourceLen = strlen((const char *)source);
    for (int i = 0; i < sourceLen; ++i) {
        const unsigned char thisChar = source[i];
        if (thisChar == ' '){
            [output appendString:@"+"];
        } else if (thisChar == '.' || thisChar == '-' || thisChar == '_' || thisChar == '~' ||
                   (thisChar >= 'a' && thisChar <= 'z') ||
                   (thisChar >= 'A' && thisChar <= 'Z') ||
                   (thisChar >= '0' && thisChar <= '9')) {
            [output appendFormat:@"%c", thisChar];
        } else {
            [output appendFormat:@"%%%02X", thisChar];
        }
    }
    return output;
    
}

- (NSString*)md5
{
	const char* string = [self UTF8String];
	unsigned char result[16];
	CC_MD5(string, strlen(string), result);
	NSString* hash = [NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
                      result[0], result[1], result[2], result[3], result[4], result[5], result[6], result[7],
                      result[8], result[9], result[10], result[11], result[12], result[13], result[14], result[15]];
    
	return [hash lowercaseString];
}


-(BOOL) empty
{
	return ([[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]length] == 0);
}

- (NSString *)subStringThatFitsWidth:(float)width ForFont:(UIFont *)font
{
    NSMutableString *retString = [NSMutableString string];
    
    NSArray *words = [self componentsSeparatedByString:@" "];
    float currentWidth = 0;
    for (NSString *word in words) {
        currentWidth += [[word stringByAppendingString:@" "] sizeWithFont:font].width;
        if (currentWidth < width) {
            [retString appendFormat:@"%@ ", word];
        } else {
            if (![retString length]) [retString appendFormat:@"%@ ", word];
            return retString;
        }
    }
    return retString;
}

@end
