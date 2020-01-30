//
//  NMKContact.h
//  ContactMemory
//
//  Created by Niranjan Kumar on 1/29/20.
//  Copyright © 2020 Nar Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NMKContact : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *phone;
@property (nonatomic, retain) NSString *email;

- (instancetype)initWithName:(NSString *)name
                       phone:(NSString *)phone
                       email:(NSString *)email;

@end
