//
//  KKContactData.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/13/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "KKContactData.h"

@implementation KKContactData

-(id)init{

    self = [super init];
    if(self){
        _telArray = [[NSMutableArray alloc]init];
        _emailArray = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
