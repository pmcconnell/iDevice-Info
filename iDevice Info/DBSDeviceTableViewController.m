//
//  DBSDeviceTableViewController.m
//  iDevice Info
//
//  Created by Patrick McConnell on 2/11/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import "DBSDeviceTableViewController.h"

#import "DBSAppDelegate.h"

@interface DBSDeviceTableViewController ()

@end

@implementation DBSDeviceTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    _deviceController = [[DBSAppDelegate sharedAppDelegate]deviceController];
}

-(void)viewWillAppear:(BOOL)animated
{
    [self reloadSections];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [[self.deviceController devices]count];
}


- (void)reloadSections
{
    NSLog(@"Reload Sections");
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationAutomatic];
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [self reloadSections];
}
//
//-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
//{
//    [self reloadSections];
//}


-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}


@end