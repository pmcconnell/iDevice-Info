//
//  ElementViewController_iPhone.m
//  iDevice Info
//
//  Created by Patrick Mcconnell on 1/9/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import "ElementViewController_iPhone.h"
#import "DBSAppDelegate.h"
#import "DeviceController.h"
#import "ElementCell.h"
#import "Device.h"


@interface ElementViewController_iPhone ()
@property (strong, nonatomic) DeviceController *deviceController;
@end

@implementation ElementViewController_iPhone


- (void)viewDidLoad
{
  [super viewDidLoad];
  
  _deviceController = [[DBSAppDelegate sharedAppDelegate]deviceController];
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

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"elementCell";
  ElementCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
  
  Device *currentDevice = [self.deviceController.devices objectAtIndex:indexPath.row];
  
  // Configure the cell...
  
  cell.deviceImageView.image = [UIImage imageNamed:currentDevice.imageName];
  
  cell.deviceNameLabel.text =  currentDevice.name;
  cell.deviceInfoLabel.text = currentDevice.info;

  cell.statusBarHeightLabel.text  = currentDevice.statusBarHeight;
  cell.titleBarHeightLabel.text   = currentDevice.titleBarHeight;
  cell.tabBarHeightLabel.text     = currentDevice.tabBarHeight;
  
  cell.groupedTableWidthPortraitLabel.text   = currentDevice.tableWidthPortrait;
  cell.groupedTableWidthLandscapeLabel.text  = currentDevice.tableWidthLandscape;
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
  // Navigation logic may go here. Create and push another view controller.
  /*
   <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
   // ...
   // Pass the selected object to the new view controller.
   [self.navigationController pushViewController:detailViewController animated:YES];
   */
}

@end
