//
//  NSArray+JSONString.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/12/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "NSArray+JSONString.h"

@implementation NSArray(JSONString)

-(NSString*) jsonString{

    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:0
                                                         error:&error];
    
    if (! jsonData) {
        NSLog(@"KKJSONString Error: %@", error.localizedDescription);
        return @"[]";
    } else {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
}

-(NSString*) jsonStringPrettyFormat{

    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    
    if (! jsonData) {
        NSLog(@"KKJSONString Error: %@", error.localizedDescription);
        return @"[]";
    } else {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
}

@end
