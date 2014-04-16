//
//  NSString+URLDecode.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/14/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "NSString+URLDecode.h"

@implementation NSString(URLDecode)

-(NSString *)URLDecode{
    NSString *result = [(NSString *)self stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    result = [result stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    return result;
}
@end
