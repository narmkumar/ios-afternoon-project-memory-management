//
//  NMKContactController.m
//  ContactMemory
//
//  Created by Niranjan Kumar on 1/29/20.
//  Copyright © 2020 Nar Kumar. All rights reserved.
//

#import "NMKContact.h"
#import "NMKContactController.h"

@interface NMKContactController() {}

@property (nonatomic, retain) NSMutableArray *internalContacts;

@end

@implementation NMKContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalContacts = [[[[NSMutableArray alloc] init] retain] autorelease];
    }
    return self;
}

- (void)createContactWithName:(NSString *)name
                                phone:(NSString *)phone
                                email:(NSString *)email {
    NMKContact *contact = [[[NMKContact alloc] initWithName:name phone:phone email:email] autorelease];
    [self.internalContacts addObject:contact];
}

- (NSArray *)contacts {
    return [[self.internalContacts copy] autorelease];
}

- (void)dealloc {
    [_internalContacts release];
    [_contacts release];

    [super dealloc];

}

@end
