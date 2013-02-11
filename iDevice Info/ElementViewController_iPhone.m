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

@end

@implementation ElementViewController_iPhone


#pragma mark - Table view data source

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (UIDeviceOrientationIsLandscape([[UIDevice currentDevice]orientation])) {
    return 211.0;
  } else {
    return 301.0 ;
  }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *cellIdentifier = nil;
  
  if (UIDeviceOrientationIsLandscape([[UIDevice currentDevice]orientation])) {
    cellIdentifier = @"elementCellLandscape";
  } else {
    cellIdentifier = @"elementCell";
  }
  
  ElementCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
  
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


@end
