//
//  KKNavigationControl.h
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/12/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KKNavigationControl : NSObject

+(void)removeAllViewFromView:(UIViewController *)view;
+(void)removeViewAtIndex:(int)index FromView:(UIViewController *)view;

@end
