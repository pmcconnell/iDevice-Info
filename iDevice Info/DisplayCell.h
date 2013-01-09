//
//  DisplayCell.h
//  iDevice Info
//
//  Created by Patrick Mcconnell on 1/9/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DisplayCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *deviceImageView;
@property (weak, nonatomic) IBOutlet UILabel *deviceNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *deviceInfoLabel;
@property (weak, nonatomic) IBOutlet UILabel *portraitLabel;
@property (weak, nonatomic) IBOutlet UILabel *landscapeLabel;
@property (weak, nonatomic) IBOutlet UILabel *ppiLabel;
@property (weak, nonatomic) IBOutlet UILabel *modeLabel;
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;

@end
