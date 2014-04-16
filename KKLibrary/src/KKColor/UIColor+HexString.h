//
//  UIColor+HexString.h
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 1/10/14.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "UIColor+HexString.h"
#import <UIKit/UIKit.h>

@interface UIColor(HexString)

+ (UIColor *) colorWithHexString: (NSString *) hexString;
+ (CGFloat) colorComponentFrom: (NSString *) string start: (NSUInteger) start length: (NSUInteger) length ;

@end

