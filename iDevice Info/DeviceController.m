//
//  DeviceController.m
//  iDevice Info
//
//  Created by Patrick Mcconnell on 1/9/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import "DeviceController.h"
#import "Device.h"

@implementation DeviceController

- (id)init
{
  if (self = [super init]) {
    [self loadDeviceArray];
  }
  
//  for (Device *d in _devices) {
//    NSLog(@"Device Loaded: %@", d.name);
//  }
  
  return self;
}

- (void)loadDeviceArray
{
  NSString *path = [[NSBundle mainBundle] pathForResource:@"devices" ofType:@"plist"];
  
  // root object in plist is a dictionary so grab it
  NSArray *rootArray = [NSArray arrayWithContentsOfFile:path];
  
  NSMutableArray *tempArray = [NSMutableArray arrayWithCapacity:rootArray.count];
  
  for (NSDictionary *d in rootArray) {
    [tempArray addObject:[Device deviceFromDictionary:d]];
  }
  
  _devices = [NSArray arrayWithArray:tempArray];
  
}

@end
