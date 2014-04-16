//
//  KKContactData.h
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/13/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KKContactData : NSObject

@property (strong,nonatomic) NSString *firstName;
@property (strong,nonatomic) NSString *lastName;
@property (strong,nonatomic) NSString *fullName;
@property (strong,nonatomic) NSArray *telArray;
@property (strong,nonatomic) NSArray *emailArray;
@property (strong,nonatomic) UIImage *image;

@end
