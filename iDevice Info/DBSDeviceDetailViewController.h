//
//  DBSDeviceDetailViewController.h
//  iDevice Info
//
//  Created by Patrick McConnell on 9/4/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Device.h"

@interface DBSDeviceDetailViewController : UIViewController <UISplitViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *deviceImageView;
@property (weak, nonatomic) IBOutlet UILabel *deviceNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *deviceInfoLabel;
@property (weak, nonatomic) IBOutlet UILabel *displayPortraitLabel;
@property (weak, nonatomic) IBOutlet UILabel *displayLandscapeLabel;
@property (weak, nonatomic) IBOutlet UILabel *displayPPILabel;
@property (weak, nonatomic) IBOutlet UILabel *displayColorModeLabel;
@property (weak, nonatomic) IBOutlet UILabel *displayColorTempLabel;
@property (weak, nonatomic) IBOutlet UILabel *appIconPixelsLabel;
@property (weak, nonatomic) IBOutlet UILabel *appIconRadiusLabel;
@property (weak, nonatomic) IBOutlet UILabel *documentPixelsLabel;
@property (weak, nonatomic) IBOutlet UILabel *tabBarPixelLabel;
@property (weak, nonatomic) IBOutlet UILabel *appStorePixelsLabel;
@property (weak, nonatomic) IBOutlet UILabel *appStoreRadiusLabel;
@property (weak, nonatomic) IBOutlet UILabel *spotlightPixelsLabel;
@property (weak, nonatomic) IBOutlet UILabel *spotlightRadiusLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightStatusBarLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightTitleBarLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightTabBarLabel;
@property (weak, nonatomic) IBOutlet UILabel *widthTablePortraitLabel;
@property (weak, nonatomic) IBOutlet UILabel *widthTableLandscapeLabel;

- (void)initializeWithDevice:(Device *)device;

@end
