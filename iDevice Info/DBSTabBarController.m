//
//  DBSTabBarController.m
//  iDevice Info
//
//  Created by Patrick McConnell on 2/11/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import "DBSTabBarController.h"

@interface DBSTabBarController ()

@end

@implementation DBSTabBarController

-(BOOL)shouldAutorotate
{
    return YES;
}

-(NSUInteger)supportedInterfaceOrientations{
    NSLog(@"Super What Orientation");
    return self.selectedViewController.supportedInterfaceOrientations;
}


@end
