//
//  KKPList.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/13/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "KKPList.h"

@implementation KKPList

//Ref : http://stackoverflow.com/questions/6697247/how-to-create-plist-files-programmatically-in-iphone

-(id)init{

    return [self initWithPListName:@"plist"];
}

-(id)initWithPListName:(NSString *)plistName{

    self = [super init];
    if(self){
        _plistName = plistName;
        _plistDictionary = [self loadPlistData];
        
    }
    return self;
}

#pragma mark plist manager

-(NSString *)getPListPathByName:(NSString *)plistName{

    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.plist",plistName]]; NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath: path])
    {
        [[[NSMutableDictionary alloc]init] writeToFile:path atomically: TRUE];
    }
    return path;
}

-(NSMutableDictionary *)loadPlistData{

    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSMutableDictionary *data;
    
    NSString *path = [self getPListPathByName:_plistName];
    if ([fileManager fileExistsAtPath: path])
    {
        data = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
    }
    else
    {
        // If the file doesn’t exist, create an empty dictionary
        data = [[NSMutableDictionary alloc] init];
    }
    return data;
}

-(void)savePlistData{

    NSString *path = [self getPListPathByName:_plistName];
    [_plistDictionary writeToFile: path atomically:YES];

}

-(void)saveToPListByDictionary:(NSMutableDictionary *)dictionary{

    _plistDictionary = dictionary;
    [self savePlistData];
}

-(NSMutableDictionary *)dictionary{

    return _plistDictionary;
}

#pragma mark root variable plist
//Can use for root variable only
-(void)setString:(NSString *)value forKey:(NSString *)key{

    [_plistDictionary setObject:value forKey:key];
    [self savePlistData];
}

-(void)setNumber:(NSNumber *)value forKey:(NSString *)key{

    [_plistDictionary setObject:value forKey:key];
    [self savePlistData];
}

-(NSString *)getStringFromKey:(NSString *)key{

    return [_plistDictionary objectForKey:key];
}

-(NSNumber *)getNumberFromKey:(NSString *)key{

    return [_plistDictionary objectForKey:key];
}

@end
