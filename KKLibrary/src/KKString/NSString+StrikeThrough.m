//
//  NSString+StrikeThrough.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 1/20/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "NSString+StrikeThrough.h"

@implementation NSString(StrikeThrough)

- (NSAttributedString *)strikeThrough{

    NSMutableAttributedString *as = [[NSMutableAttributedString alloc] initWithString:self];
    [as addAttribute:NSStrikethroughStyleAttributeName value:(NSNumber *)kCFBooleanTrue range:NSMakeRange(0, [as length])];
    
    return as;
}


@end
