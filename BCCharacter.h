//
//  BCCharacter.h
//  Pirate Adventure
//
//  Created by Brian on 9/1/14.
//  Copyright (c) 2014 Code Coalition. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BCArmor.h"
#import "BCWeapon.h"

@interface BCCharacter : NSObject

@property (strong, nonatomic) BCArmor *armor;
@property (nonatomic) int damage;
@property (nonatomic) int health;
@property (strong, nonatomic) BCWeapon *weapon;

@end
