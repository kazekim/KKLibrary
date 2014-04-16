//
//  NSString+HMac.h
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 12/30/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonHMAC.h>
#import <CommonCrypto/CommonCryptor.h>

@interface NSString(HMac)

-(NSString *)HmacSHA256WithKey:(NSString *)key;
-(NSString *)HmacSHA512WithKey:(NSString *)key;

@end
