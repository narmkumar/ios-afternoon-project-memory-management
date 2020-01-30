//
//  NMKDetailViewController.h
//  ContactMemory
//
//  Created by Niranjan Kumar on 1/29/20.
//  Copyright © 2020 Nar Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

// Forward class declarations:
@class NMKContact;
@class NMKContactController;

@interface NMKDetailViewController : UIViewController

@property (nonatomic, retain) NMKContact *contact;
@property (nonatomic, retain) NMKContactController *controller;

@end

