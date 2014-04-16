//
//  KKSystem.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/11/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "KKSystem.h"

@implementation KKSystem


+(NSString *)getScreenHeight{

    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenHeight = screenRect.size.height;
    
    return [NSString stringWithFormat:@"%d",(int)screenHeight];
}

+(NSString *)getScreenWidth{

    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    
    return [NSString stringWithFormat:@"%d",(int)screenWidth];
}

+(NSString *)getLocale{

    NSString * language = [[NSLocale preferredLanguages] objectAtIndex:0];
    return language;
}

+(NSString *)getDeviceType{

    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        return @"iphone";
    }else{
        return @"ipad";
    }
}

+ (NSString *)getDeviceID {

    NSString *udidString;
    udidString = [self objectForKey:@"deviceID"];
    if(!udidString)
    {
        CFUUIDRef cfuuid = CFUUIDCreate(kCFAllocatorDefault);
        udidString = (NSString*)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, cfuuid));
        [self setObject:udidString forKey:@"deviceID"];
    }
    return [udidString stringByReplacingOccurrencesOfString:@"-" withString:@""];
}

+(void) setObject:(NSString*) object forKey:(NSString*) key
{
    NSString *objectString = object;
    NSError *error = nil;
    [SFHFKeychainUtils storeUsername:key
                         andPassword:objectString
                      forServiceName:@"LIB"
                      updateExisting:YES
                               error:&error];
    
    if(error)
        NSLog(@"%@", [error localizedDescription]);
}

+(NSString*) objectForKey:(NSString*) key
{
    NSError *error = nil;
    NSString *object = [SFHFKeychainUtils getPasswordForUsername:key
                                                  andServiceName:@"LIB"
                                                           error:&error];
    if(error)
        NSLog(@"%@", [error localizedDescription]);
    
    return object;
}

+(NSString *)getAppVersion{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

@end
