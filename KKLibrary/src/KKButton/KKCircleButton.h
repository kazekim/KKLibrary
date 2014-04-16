//
//  KKCircleButton.h
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 3/6/14.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KKCircleButton : UIButton

@property (nonatomic, strong) UIColor *lineColor;
@property (nonatomic, strong) UIColor *highlightLineColor;
@property (nonatomic, strong) UIColor *fillColor;
@property (nonatomic, strong) UIColor *highlightFillColor;
@property (nonatomic, strong) UIColor *fontColor;
@property (nonatomic, strong) UIColor *highlightFontColor;

- (void)drawCircleButton;

@end
