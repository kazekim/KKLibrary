//
//  NSData+ToString.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/13/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "NSData+ToString.h"

@implementation NSData(ToString)

-(NSString *)toString{

    return [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}

-(NSString *)deviceTokenToString{
   return [[[[self description]
                                stringByReplacingOccurrencesOfString: @"<" withString: @""]
                               stringByReplacingOccurrencesOfString: @">" withString: @""]
                              stringByReplacingOccurrencesOfString: @" " withString: @""];

}

@end
