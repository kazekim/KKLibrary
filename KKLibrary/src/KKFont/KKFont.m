//
//  KKFont.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 3/6/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "KKFont.h"

@implementation KKFont

+(void)printAllFont
{

    for (NSString *familyName in [UIFont familyNames]) {
        NSLog(@"Font Family : %@", familyName);
        for (NSString *fontName in [UIFont fontNamesForFamilyName:familyName]) {
            NSLog(@"Font Name : %@", fontName);
        }
    }
}
@end
