//
//  SFHFKeychainUtils.h
//  HotelQuicklyWebService
//
//  Created by Jirawat Harnsiriwatanakit on 12/25/13.
//  Copyright (c) 2014 KaZeKiM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SFHFKeychainUtils : NSObject
+ (NSString *) getPasswordForUsername: (NSString *) username andServiceName: (NSString *) serviceName error: (NSError **) error;
+ (BOOL) storeUsername: (NSString *) username andPassword: (NSString *) password forServiceName: (NSString *) serviceName updateExisting: (BOOL) updateExisting error: (NSError **) error;
+ (BOOL) deleteItemForUsername: (NSString *) username andServiceName: (NSString *) serviceName error: (NSError **) error;

@end
