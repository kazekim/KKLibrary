//
//  KKCircleButton.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 3/6/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "KKCircleButton.h"

@interface KKCircleButton ()

@property (nonatomic, strong) CAShapeLayer *circleLayer;

@end

@implementation KKCircleButton

- (void)drawCircleButton
{
    
    if(self.circleLayer != nil){
        [self.circleLayer removeFromSuperlayer];
    }
    
    [self setTitleColor:self.fontColor forState:UIControlStateNormal];
    
    if([self bounds].size.height > 0 && [self bounds].size.width > 0){
        
        
        self.circleLayer = [CAShapeLayer layer];
        
        [self.circleLayer setBounds:CGRectMake(0.0f, 0.0f, [self bounds].size.width,
                                               [self bounds].size.height)];
        [self.circleLayer setPosition:CGPointMake(CGRectGetMidX([self bounds]),CGRectGetMidY([self bounds]))];
        
        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
        
        [self.circleLayer setPath:[path CGPath]];
        
        [self.circleLayer setStrokeColor:[self.lineColor CGColor]];
        
        [self.circleLayer setLineWidth:2.0f];
        [self.circleLayer setFillColor:[self.fillColor CGColor]];
        
        [[self layer] addSublayer:self.circleLayer];
        [self bringSubviewToFront:self.titleLabel];
    }}

-(UIColor *)fillColor
{
    if(_fillColor == Nil){
        return [UIColor clearColor];
    }
    return _fillColor;
}

-(UIColor *)highlightFillColor
{
    if(_highlightFillColor == Nil){
        return self.fillColor;
    }
    return _highlightFillColor;
}

-(UIColor *)lineColor
{
    if(_lineColor == Nil){
        return [UIColor clearColor];
    }
    return _lineColor;
}

-(UIColor *)highlightLineColor
{
    if(_highlightLineColor == Nil){
        return self.lineColor;
    }
    return _highlightLineColor;
}

-(UIColor *)fontColor
{
    if(_fontColor == Nil){
        return [UIColor blackColor];
    }
    return _fontColor;
}

-(UIColor *)highlightFontColor
{
    if(_highlightFontColor == Nil){
        return self.fontColor;
    }
    return _highlightFontColor;
}

- (void)setHighlighted:(BOOL)highlighted
{
    if (highlighted)
    {
        self.titleLabel.textColor = self.highlightFontColor;
        [self.circleLayer setStrokeColor:[self.highlightLineColor CGColor]];
        [self.circleLayer setFillColor:[self.highlightFillColor CGColor]];
        
    }
    else
    {
        self.titleLabel.textColor = self.fontColor;
        [self.circleLayer setStrokeColor:[self.lineColor CGColor]];
        [self.circleLayer setFillColor:[self.fillColor CGColor]];
    }
    [self bringSubviewToFront:self.titleLabel];
}

@end
