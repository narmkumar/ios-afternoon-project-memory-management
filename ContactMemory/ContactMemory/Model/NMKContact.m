//
//  NMKContact.m
//  ContactMemory
//
//  Created by Niranjan Kumar on 1/29/20.
//  Copyright © 2020 Nar Kumar. All rights reserved.
//

#import "NMKContact.h"

@implementation NMKContact

- (instancetype)initWithName:(NSString *)name
                       phone:(NSString *)phone
                       email:(NSString *)email {
    self = [super init];
    if (self) {
        _name = [name retain];
        _phone = [phone retain];
        _email = [email retain];
    }
    return self;
}

- (void)dealloc {
    [_name release];
    [_phone release];
    [_email release];
    [super dealloc];
}

@end
