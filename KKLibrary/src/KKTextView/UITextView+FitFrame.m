//
//  UITextView+FitFrame.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/28/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "UITextView+FitFrame.h"

@implementation UITextView(FitFrame)

-(void)fitFrameWithWidth:(int)width
{
    CGFloat fixedWidth = self.frame.size.width;
    CGSize newSize = [self sizeThatFits:CGSizeMake(fixedWidth, MAXFLOAT)];
    CGRect newFrame = self.frame;
    newFrame.size = CGSizeMake(fmaxf(newSize.width, fixedWidth), newSize.height);
    self.frame = newFrame;
}

-(void)fitFrame
{
    [self fitFrameWithWidth:self.frame.size.width];
}
@end
