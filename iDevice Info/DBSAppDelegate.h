//
//  DBSAppDelegate.h
//  iDevice Info
//
//  Created by Patrick Mcconnell on 1/9/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DeviceController.h"

@interface DBSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) DeviceController *deviceController;

+(DBSAppDelegate *)sharedAppDelegate;

@end
