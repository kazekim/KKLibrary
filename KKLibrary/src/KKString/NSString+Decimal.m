//
//  NSString+Decimal.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 1/20/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "NSString+Decimal.h"

@implementation NSString(Decimal)

-(NSString *)decimal{

    NSNumberFormatter *formatter = [NSNumberFormatter new];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    
    NSString *formatted = [formatter stringFromNumber:[NSNumber numberWithInteger:[self intValue]]];
    return formatted;
}

@end
