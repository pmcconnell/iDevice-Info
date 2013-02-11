//
//  DBSNavigationController.m
//  iDevice Info
//
//  Created by Patrick McConnell on 2/11/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import "DBSNavigationController.h"

@interface DBSNavigationController ()

@end

@implementation DBSNavigationController

-(id)init
{
    if (self = [super init]) {
        NSLog(@"Init...");
    }
    return self;
}

-(BOOL)shouldAutorotate
{
    return YES;
}

-(NSUInteger)supportedInterfaceOrientations{
    NSLog(@"Super What Orientation");
    return self.topViewController.supportedInterfaceOrientations;
}

@end
