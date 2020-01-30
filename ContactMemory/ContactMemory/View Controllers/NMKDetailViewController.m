//
//  ViewController.m
//  ContactMemory
//
//  Created by Niranjan Kumar on 1/29/20.
//  Copyright © 2020 Nar Kumar. All rights reserved.
//

#import "NMKDetailViewController.h"
#import "NMKContact.h"
#import "NMKContactController.h"

@interface NMKDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;

@end

@implementation NMKDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if (self.contact) {
        self.title = self.contact.name;
        self.nameTextField.text = self.contact.name;
        self.phoneTextField.text = self.contact.phone;
        self.emailTextField.text = self.contact.email;
    } else {
        self.title = @"Add New Contact";
    }
}

- (IBAction)saveTapped:(UIBarButtonItem *)sender {
    NSString *name = self.nameTextField.text;
    NSString *phone = self.phoneTextField.text;
    NSString *email = self.emailTextField.text;
    [self.controller createContactWithName:name phone:phone email:email];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    [_nameTextField release];
    _nameTextField = nil;
    [_phoneTextField release];
    _phoneTextField = nil;
    [_emailTextField release];
    _emailTextField = nil;
    [_contact release];
    [_controller release];
    [super dealloc];
}




@end
