//
//  KKKeyboardControl.h
//  HotelQuickly
//
//  Created by KaZeKiM Macbook Pro on 1/7/13.
//  Copyright (c) 2014 hotelquickly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KKKeyboardControl : NSObject{
    
}

@property int viewMovedPosY;
@property BOOL displayKeyboard;
@property BOOL isMoveViewForKeyboard;
@property (retain,nonatomic) UITextField *editedTextField;

-(id)initWithMovedView:(UIView *)view controller:(id)controller;
-(void) moveViewForKeyboard:(NSNotification*)aNotification distance:(int)distance up: (BOOL)up;
-(void)setKeyboardNotificationCenter;
-(void)removeKeyboardNotificationCenter;
-(void) keyboardDidShow: (NSNotification *)notif;
-(void) keyboardDidHide: (NSNotification *)notif;
-(void)enableTabGestureHideKeyboard;

@end
