//
//  KKSystem.h
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/11/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SFHFKeychainUtils.h"

@interface KKSystem : NSObject

+(NSString *)getScreenHeight;
+(NSString *)getScreenWidth;
+(NSString *)getLocale;
+(NSString *)getDeviceType;
+ (NSString *)getDeviceID;
+(NSString *)getAppVersion;

@end
