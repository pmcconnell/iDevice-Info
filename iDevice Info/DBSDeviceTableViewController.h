//
//  DBSDeviceTableViewController.h
//  iDevice Info
//
//  Created by Patrick McConnell on 2/11/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DeviceController.h"

@interface DBSDeviceTableViewController : UITableViewController

@property (strong, nonatomic) DeviceController *deviceController;

@end
