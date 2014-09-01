//
//  BCTile.h
//  Pirate Adventure
//
//  Created by Brian on 8/31/14.
//  Copyright (c) 2014 Code Coalition. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BCWeapon.h"
#import "BCArmor.h"

@interface BCTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) BCWeapon *weapon;
@property (strong, nonatomic) BCArmor *armor;
@property (nonatomic) int healthEffect;

@end
