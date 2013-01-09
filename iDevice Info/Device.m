//
//  Device.m
//  iDevice Info
//
//  Created by Patrick Mcconnell on 1/9/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import "Device.h"

@implementation Device


+(Device *)deviceFromDictionary:(NSDictionary *)dict
{
  Device *device = [[Device alloc]init];
  
  NSEnumerator *enumerator = [dict keyEnumerator];
  NSString *key;
  
  while ((key = [enumerator nextObject])) {    
    [device setValuesForKeysWithDictionary:dict];
  }
  return device;
}


@end
