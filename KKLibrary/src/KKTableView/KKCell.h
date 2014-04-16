//
//  KKCell.h
//  Locaze
//
//  Created by KaZeKiM Macbook Pro on 1/12/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KKCell : UITableViewCell{
    
}

- (id)initWithOwner:(id)owner;
- (NSString *)reuseIdentifier;
- (void)initLayout;

+ (NSString *)reuseIdentifier;
+ (UINib*)nib;
+ (KKCell *)loadCell:(UITableView *)_tableView;
+ (KKCell *)loadUnreuseableCell:(UITableView *)_tableView;

@end