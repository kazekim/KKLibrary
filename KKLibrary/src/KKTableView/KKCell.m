//
//  KKCell.m
//  Locaze
//
//  Created by KaZeKiM Macbook Pro on 1/12/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "KKCell.h"

@implementation KKCell

+ (UINib*)nib
{
    // singleton implementation to get a UINib object
    //static dispatch_once_t pred = 0;
    __strong static UINib* _sharedNibObject = nil;
    //dispatch_once(&pred, ^{
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        _sharedNibObject = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:nil];
    }
    else if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
    {
        _sharedNibObject = [UINib nibWithNibName:[NSStringFromClass([self class]) stringByAppendingString:@"_iPad"] bundle:nil];
    }
    
    // });
    return _sharedNibObject;
}

+ (KKCell *)loadCell:(UITableView *)_tableView{

    KKCell *cell = [_tableView dequeueReusableCellWithIdentifier:[[self class] reuseIdentifier]];
    if (cell == nil) {
        cell = [[[self class] alloc] initWithOwner:self];
    }
    
    [cell initLayout];
    return cell;
}

+ (KKCell *)loadUnreuseableCell:(UITableView *)_tableView{

    KKCell *cell = [[[self class] alloc] initWithOwner:self];
    
    [cell initLayout];
    return cell;
}

- (NSString *)reuseIdentifier
{

    return [[self class] reuseIdentifier];
}

+ (NSString *)reuseIdentifier
{

    // return any identifier you like, in this case the class name
    return NSStringFromClass([self class]);
}

- (id)initWithOwner:(id)owner
{
    
    return [[[[self class] nib] instantiateWithOwner:owner options:nil] objectAtIndex:0];
}

- (void)initLayout{
    
}


@end
