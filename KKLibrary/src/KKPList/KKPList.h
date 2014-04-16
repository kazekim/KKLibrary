//
//  KKPList.h
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/13/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KKPList : NSObject

@property (strong,nonatomic) NSString *plistName;
@property (strong,nonatomic) NSMutableDictionary *plistDictionary;

-(id)init;
-(id)initWithPListName:(NSString *)plistName;
-(void)saveToPListByDictionary:(NSMutableDictionary *)dictionary;
-(NSMutableDictionary *)dictionary;

-(void)setString:(NSString *)value forKey:(NSString *)key;
-(void)setNumber:(NSNumber *)value forKey:(NSString *)key;
-(NSString *)getStringFromKey:(NSString *)key;
-(NSNumber *)getNumberFromKey:(NSString *)key;

@end
