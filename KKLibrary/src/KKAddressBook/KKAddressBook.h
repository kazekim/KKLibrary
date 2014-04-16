//
//  KKAddressBook.h
//  KKLibrary
//
//  Created by KaZeKiM Macbook Pro on 2/13/13.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AddressBook/AddressBook.h>
#import "KKContactData.h"

@interface KKAddressBook : NSObject

+(void)loadAddressBookContacts:(void (^)(NSArray *contacts))returnContacts error:(void (^)(NSString *error))returnError;

@end
