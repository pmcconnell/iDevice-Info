//
//  IconViewController_iPhone.m
//  iDevice Info
//
//  Created by Patrick Mcconnell on 1/9/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import "IconViewController_iPhone.h"
#import "DBSAppDelegate.h"
#import "DeviceController.h"
#import "IconCell.h"
#import "Device.h"


@interface IconViewController_iPhone ()

@end

@implementation IconViewController_iPhone


#pragma mark - Table view data source

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (UIDeviceOrientationIsLandscape([[UIDevice currentDevice]orientation])) {
    return 241.0;
  } else {
    return 391.0;
  }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *cellIdentifier = nil;
  
  if (UIDeviceOrientationIsLandscape([[UIDevice currentDevice]orientation])) {
    cellIdentifier = @"iconCellLandscape";
  } else {
    cellIdentifier = @"iconCell";
  }

  
  IconCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
  
  
  Device *currentDevice = [self.deviceController.devices objectAtIndex:indexPath.row];
  
  // Configure the cell...
  
  cell.deviceImageView.image = [UIImage imageNamed:currentDevice.imageName];
  
  cell.deviceNameLabel.text =  currentDevice.name;
  cell.deviceInfoLabel.text = currentDevice.info;
  
  cell.appIconPixelsLabel.text  = currentDevice.appIconPixels;
  cell.appIconRadiusLabel.text  = currentDevice.appIconRadius;
  
  cell.appStoreIconPixelsLabel.text  = currentDevice.appstoreIconPixels;
  cell.appStoreIconRadiusLabel.text  = currentDevice.appstoreIconRadius;
  
  cell.spotlightIconPixelsLabel.text  = currentDevice.spotlightIconPixels;
  cell.spotlightIconRadiusLabel.text  = currentDevice.spotlightIconRadius;
  
  cell.documentIconPixelsLabel.text  = currentDevice.documentIconPixels;

  cell.tabBarIconPixelsLabel.text  = currentDevice.tabBarIconPixels;
    
  return cell;
}



@end
