//
//  DisplayTableViewController_iPhone.m
//  iDevice Info
//
//  Created by Patrick Mcconnell on 1/9/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import "DisplayTableViewController_iPhone.h"
#import "DBSAppDelegate.h"
#import "DeviceController.h"
#import "DisplayCell.h"
#import "Device.h"


@implementation DisplayTableViewController_iPhone



#pragma mark - Table view data source

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (UIDeviceOrientationIsLandscape([[UIDevice currentDevice]orientation])) {
    return 180.0;
  } else {
    return 241.0;
  }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *cellIdentifier = nil;
  
  if (UIDeviceOrientationIsLandscape([[UIDevice currentDevice]orientation])) {
      NSLog(@"Landscape");
    cellIdentifier = @"displayCellLandscape";
  } else {
      NSLog(@"Portrait");      
    cellIdentifier = @"displayCell";
  }
  
  DisplayCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
  
  Device *currentDevice = [self.deviceController.devices objectAtIndex:indexPath.row];
  
  // Configure the cell...
  cell.deviceImageView.image = [UIImage imageNamed:currentDevice.imageName];
  
  cell.deviceNameLabel.text =  currentDevice.name;
  cell.deviceInfoLabel.text = currentDevice.info;
  
  cell.portraitLabel.text   = currentDevice.portraitResolution;
  cell.landscapeLabel.text  = currentDevice.landscapeResolution;
  
  cell.ppiLabel.text  = currentDevice.ppi;
  cell.modeLabel.text = currentDevice.colorMode;
  cell.tempLabel.text = currentDevice.colorTemperature;
  
  return cell;
}





@end
