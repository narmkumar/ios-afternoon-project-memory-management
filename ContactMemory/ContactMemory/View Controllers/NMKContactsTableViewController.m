//
//  NMKContactsTableViewController.m
//  ContactMemory
//
//  Created by Niranjan Kumar on 1/29/20.
//  Copyright © 2020 Nar Kumar. All rights reserved.
//

#import "NMKContactsTableViewController.h"
#import "NMKContact.h"
#import "NMKContactController.h"
#import "NMKDetailViewController.h"


@interface NMKContactsTableViewController ()

@end

@implementation NMKContactsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _controller = [[[[NMKContactController alloc] init] retain] autorelease];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self testContacts];
    [self.tableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)testContacts {
    [self.controller createContactWithName:@"Nar Kumar" phone:@"(714) 390-9928" email:@"njn.kumar@gmail.com"];
    [self.controller createContactWithName:@"Nidhi Sheth" phone:@"(909) 267-8328" email:@"nidhishethp@gmail.com"];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.controller.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[[tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath] retain] autorelease];
    
    NMKContact *contact = [[self.controller.contacts[indexPath.row] retain] autorelease];
    
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.phone;
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"DetailSegue"]) {
        NMKDetailViewController *destinationVC = (NMKDetailViewController *)[segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NMKContact *contact = self.controller.contacts[indexPath.row];
        destinationVC.contact = contact;
        destinationVC.controller = self.controller;
    } else if ([segue.identifier isEqualToString:@"AddSegue"]) {
        NMKDetailViewController *destinationVC = (NMKDetailViewController *)[segue destinationViewController];
        destinationVC.controller = self.controller;
    }
}

#pragma mark - Controller Released
- (void)dealloc {
    [_controller release];
    [super dealloc];
}

@end
