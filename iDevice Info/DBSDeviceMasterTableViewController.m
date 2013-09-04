//
//  DBSDeviceMasterTableViewController.m
//  iDevice Info
//
//  Created by Patrick McConnell on 9/4/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import "DBSDeviceMasterTableViewController.h"
#import "DBSAppDelegate.h"
#import "Device.h"
#import "DeviceController.h"
#import "DBSDeviceDetailViewController.h"

@interface DBSDeviceMasterTableViewController ()
  @property (strong, nonatomic) DeviceController *deviceController;
  @property (strong, nonatomic) DBSDeviceDetailViewController *detailViewController;
@end

@implementation DBSDeviceMasterTableViewController


- (void)viewDidLoad
{
  [super viewDidLoad];
  _deviceController = [[DBSAppDelegate sharedAppDelegate]deviceController];
  
  UISplitViewController *splitVC = (UISplitViewController *)self.navigationController.parentViewController;
  UINavigationController *detailNavControlller = splitVC.viewControllers[1];
  _detailViewController = detailNavControlller.childViewControllers[0];
  
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return self.deviceController.devices.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"deviceCell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
  
  Device *currentDevice = self.deviceController.devices[indexPath.row];
  cell.textLabel.text = currentDevice.name;
  cell.imageView.image = [UIImage imageNamed:currentDevice.imageName];
  
  return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  Device *device = [[[DBSAppDelegate sharedAppDelegate]deviceController]devices][indexPath.row];
  [self.detailViewController initializeWithDevice:device];

}

@end
