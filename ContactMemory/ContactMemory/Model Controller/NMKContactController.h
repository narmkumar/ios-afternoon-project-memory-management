//
//  NMKContactController.h
//  ContactMemory
//
//  Created by Niranjan Kumar on 1/29/20.
//  Copyright © 2020 Nar Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NMKContactController : NSObject

@property (nonatomic, retain) NSMutableArray *contacts;

- (void)createContactWithName:(NSString *)name
                                phone:(NSString *)phone
                                email:(NSString *)email;


@end
