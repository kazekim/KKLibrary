//
//  KKKeyboardControl.m
//  HotelQuickly
//
//  Created by KaZeKiM Macbook Pro on 1/7/13.
//  Copyright (c) 2014 hotelquickly. All rights reserved.
//

#import "KKKeyboardControl.h"

@interface KKKeyboardControl(){
    UIView *movedView;
    id viewController;
}

@end

@implementation KKKeyboardControl
@synthesize viewMovedPosY,displayKeyboard,editedTextField,isMoveViewForKeyboard;

-(id)init{

    if(self == [super init]){
        
    }
    return self;
}
-(id)initWithMovedView:(UIView *)view controller:(id)controller{

    self = [super init];
    if (self) {
        movedView = view;
        isMoveViewForKeyboard = TRUE;
        viewController = controller;
        
        [self enableTabGestureHideKeyboard];
    }
    return self;
}

-(void)enableTabGestureHideKeyboard{
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    // prevents the scroll view from swallowing up the touch event of child buttons
    tapGesture.cancelsTouchesInView = NO;
    
    [movedView addGestureRecognizer:tapGesture];
    
}

-(void)setKeyboardNotificationCenter{

    [[NSNotificationCenter defaultCenter] addObserver:viewController selector:@selector (keyboardDidShow:) name: UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:viewController selector:@selector (keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];

    displayKeyboard = NO;
}

-(void)removeKeyboardNotificationCenter{
    [[NSNotificationCenter defaultCenter] removeObserver:viewController name:UIKeyboardDidHideNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] removeObserver:viewController name:UIKeyboardWillShowNotification object:nil];
}


-(void) moveViewForKeyboard:(NSNotification*)aNotification distance:(int)_distance up: (BOOL) up{
    if(isMoveViewForKeyboard){
        NSDictionary* userInfo = [aNotification userInfo];

        // Get animation info from userInfo
        NSTimeInterval animationDuration;
        UIViewAnimationCurve animationCurve;

        CGRect keyboardEndFrame;
        
        [[userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey] getValue:&animationCurve];
        [[userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey] getValue:&animationDuration];

        
        [[userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] getValue:&keyboardEndFrame];

        
        // Animate up or down
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:animationDuration];
        [UIView setAnimationCurve:animationCurve];

        CGRect newFrame = movedView.frame;
        CGRect keyboardFrame = [movedView convertRect:keyboardEndFrame toView:nil];
        
        newFrame.origin.y -= (keyboardFrame.size.height -_distance) * (up? 1 : -1);
        movedView.frame = newFrame;

        [UIView commitAnimations];

    }

}

-(void) keyboardDidShow: (NSNotification *)notif {
    if (displayKeyboard) {
        return;
    }
    [self moveViewForKeyboard:notif distance:self.viewMovedPosY up:YES];
    displayKeyboard = YES;
    
    
}

-(void) keyboardDidHide: (NSNotification *)notif {
    if (!displayKeyboard) {
        return;
    }
    [self moveViewForKeyboard:notif distance:self.viewMovedPosY up:NO];
    displayKeyboard = NO;
    
}

-(void)hideKeyboard{
    if(editedTextField){
        [editedTextField resignFirstResponder];
        editedTextField=Nil;
    }
}

@end
