//
//  IconCell.h
//  iDevice Info
//
//  Created by Patrick Mcconnell on 1/9/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IconCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *deviceImageView;
@property (weak, nonatomic) IBOutlet UILabel *deviceNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *deviceInfoLabel;
@property (weak, nonatomic) IBOutlet UILabel *appIconPixelsLabel;
@property (weak, nonatomic) IBOutlet UILabel *appIconRadiusLabel;
@property (weak, nonatomic) IBOutlet UILabel *appStoreIconPixelsLabel;
@property (weak, nonatomic) IBOutlet UILabel *appStoreIconRadiusLabel;
@property (weak, nonatomic) IBOutlet UILabel *spotlightIconPixelsLabel;
@property (weak, nonatomic) IBOutlet UILabel *spotlightIconRadiusLabel;
@property (weak, nonatomic) IBOutlet UILabel *documentIconPixelsLabel;
@property (weak, nonatomic) IBOutlet UILabel *tabBarIconPixelsLabel;

@end
