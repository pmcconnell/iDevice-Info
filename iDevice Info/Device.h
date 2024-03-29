//
//  Device.h
//  iDevice Info
//
//  Created by Patrick Mcconnell on 1/9/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Device : NSObject


@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *info;
@property (strong, nonatomic) NSString *imageName;

@property (strong, nonatomic) NSString *portraitResolution;
@property (strong, nonatomic) NSString *landscapeResolution;

@property (strong, nonatomic) NSString *ppi;
@property (strong, nonatomic) NSString *colorMode;
@property (strong, nonatomic) NSString *colorTemperature;

@property (strong, nonatomic) NSString *appIconPixels;
@property (strong, nonatomic) NSString *appIconRadius;
@property (strong, nonatomic) NSString *appstoreIconPixels;
@property (strong, nonatomic) NSString *appstoreIconRadius;
@property (strong, nonatomic) NSString *spotlightIconPixels;
@property (strong, nonatomic) NSString *spotlightIconRadius;
@property (strong, nonatomic) NSString *documentIconPixels;
@property (strong, nonatomic) NSString *tabBarIconPixels;

@property (strong, nonatomic) NSString *statusBarHeight;
@property (strong, nonatomic) NSString *titleBarHeight;
@property (strong, nonatomic) NSString *tabBarHeight;
@property (strong, nonatomic) NSString *tableWidthPortrait;
@property (strong, nonatomic) NSString *tableWidthLandscape;


+(Device *)deviceFromDictionary:(NSDictionary *)dict;

@end
