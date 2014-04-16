//
//  KKNavigationControl.m
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/12/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "KKNavigationControl.h"

@implementation KKNavigationControl

+(void)removeAllViewFromView:(UIViewController *)view{

    NSMutableArray *navigationArray = [[NSMutableArray alloc] initWithArray: view.navigationController.viewControllers];
    
    [navigationArray removeAllObjects];
    view.navigationController.viewControllers = navigationArray;

}

+(void)removeViewAtIndex:(int)index FromView:(UIViewController *)view{

    NSMutableArray *navigationArray = [[NSMutableArray alloc] initWithArray: view.navigationController.viewControllers];
    
    [navigationArray removeObjectAtIndex:index];
    view.navigationController.viewControllers = navigationArray;
    
}

@end
