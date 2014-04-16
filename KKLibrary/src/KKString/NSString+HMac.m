//
//  NSString+HMac.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 12/30/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "NSString+HMac.h"

@implementation NSString(HMac)

-(NSString *)HmacSHA256WithKey:(NSString *)key{

    const char *cKey  = [key cStringUsingEncoding:NSASCIIStringEncoding];
    const char *cData = [self cStringUsingEncoding:NSASCIIStringEncoding];
    unsigned char cHMAC[CC_SHA256_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA256, cKey, strlen(cKey), cData, strlen(cData), cHMAC);
    
    NSData *data = [[NSData alloc] initWithBytes:cHMAC length:sizeof(cHMAC)];
    const unsigned char *buffer = (const unsigned char *)[data bytes];
    
    NSString *hmacString = [NSMutableString stringWithCapacity:data.length * 2];
    
    for (int i = 0; i < data.length; ++i)
        hmacString = [hmacString stringByAppendingFormat:@"%02lx", (unsigned long)buffer[i]];
    return hmacString;
}

-(NSString *)HmacSHA512WithKey:(NSString *)key{

    const char *cKey  = [key cStringUsingEncoding:NSASCIIStringEncoding];
    const char *cData = [self cStringUsingEncoding:NSASCIIStringEncoding];
    unsigned char cHMAC[CC_SHA512_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA512, cKey, strlen(cKey), cData, strlen(cData), cHMAC);
    
    NSData *data = [[NSData alloc] initWithBytes:cHMAC length:sizeof(cHMAC)];
    const unsigned char *buffer = (const unsigned char *)[data bytes];
    
    NSString *hmacString = [NSMutableString stringWithCapacity:data.length * 2];
    
    for (int i = 0; i < data.length; ++i)
        hmacString = [hmacString stringByAppendingFormat:@"%02lx", (unsigned long)buffer[i]];
    return hmacString;
}
@end
