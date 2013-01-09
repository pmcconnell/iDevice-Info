//
//  ElementCell.h
//  iDevice Info
//
//  Created by Patrick Mcconnell on 1/9/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ElementCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *deviceImageView;
@property (weak, nonatomic) IBOutlet UILabel *deviceNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *deviceInfoLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusBarHeightLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleBarHeightLabel;
@property (weak, nonatomic) IBOutlet UILabel *tabBarHeightLabel;
@property (weak, nonatomic) IBOutlet UILabel *groupedTableWidthPortraitLabel;
@property (weak, nonatomic) IBOutlet UILabel *groupedTableWidthLandscapeLabel;

@end
