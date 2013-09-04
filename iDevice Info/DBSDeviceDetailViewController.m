//
//  DBSDeviceDetailViewController.m
//  iDevice Info
//
//  Created by Patrick McConnell on 9/4/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import "DBSDeviceDetailViewController.h"
#import "DBSAppDelegate.h"

@interface DBSDeviceDetailViewController ()
  @property (strong, nonatomic) UIPopoverController *popover;
  @property (strong, nonatomic) Device *device;
@end

@implementation DBSDeviceDetailViewController


- (void)viewDidLoad
{
  [super viewDidLoad];
  if (!_device) {
    _device = [[[DBSAppDelegate sharedAppDelegate]deviceController]devices][0];
  }
  [self initializeWithDevice:_device];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)initializeWithDevice:(Device *)device {
  
  self.device = device;
  
  self.deviceImageView.image        = [UIImage imageNamed:self.device.imageName];
  self.deviceNameLabel.text          = self.device.name;
  self.deviceInfoLabel.text          = self.device.info;
  self.displayPortraitLabel.text     = self.device.portraitResolution;
  self.displayLandscapeLabel.text    = self.device.landscapeResolution;
  self.displayPPILabel.text          = self.device.ppi;
  self.displayColorModeLabel.text    = self.device.colorMode;
  self.displayColorTempLabel.text    = self.device.colorTemperature;
  self.appIconPixelsLabel.text       = self.device.appIconPixels;
  self.appIconRadiusLabel.text       = self.device.appIconRadius;
  self.documentPixelsLabel.text      = self.device.documentIconPixels;
  self.tabBarPixelLabel.text         = self.device.tabBarIconPixels;
  self.appStorePixelsLabel.text      = self.device.appstoreIconPixels;
  self.appStoreRadiusLabel.text      = self.device.appstoreIconRadius;
  self.spotlightPixelsLabel.text     = self.device.spotlightIconPixels;
  self.spotlightRadiusLabel.text     = self.device.spotlightIconRadius;
  self.heightStatusBarLabel.text     = self.device.statusBarHeight;
  self.heightTitleBarLabel.text      = self.device.titleBarHeight;
  self.heightTabBarLabel.text        = self.device.tabBarHeight;
  self.widthTablePortraitLabel.text  = self.device.tableWidthPortrait;
  self.widthTableLandscapeLabel.text = self.device.tableWidthLandscape;
  
  self.title = [NSString stringWithFormat:@"Device Info - %@", self.device.name];
}


#pragma mark - Split View Delegates

- (void)splitViewController: (UISplitViewController*)svc
     willHideViewController:(UIViewController *)aViewController
          withBarButtonItem:(UIBarButtonItem*)barButtonItem
       forPopoverController: (UIPopoverController*)pc {
  
  barButtonItem.title = @"Devices";
  [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
  self.popover = pc;
}

- (void)splitViewController: (UISplitViewController*)svc
     willShowViewController:(UIViewController *)aViewController
  invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem {
  
  [self.navigationItem setLeftBarButtonItem:nil animated:YES];
  self.popover = nil;
}

@end
