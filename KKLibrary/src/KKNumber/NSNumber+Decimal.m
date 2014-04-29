//
//  NSNumber+Decimal.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/12/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "NSNumber+Decimal.h"

@implementation NSNumber(Decimal)

-(NSString *)decimal{
    
    NSNumberFormatter *formatter = [NSNumberFormatter new];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    
    NSString *formatted = [formatter stringFromNumber:[NSNumber numberWithInteger:[self intValue]]];
    formatted = [formatted stringByReplacingOccurrencesOfString:@","
                                                     withString:@"."];
    return formatted;
}

@end
