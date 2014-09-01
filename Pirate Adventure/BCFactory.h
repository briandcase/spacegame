//
//  BCFactory.h
//  Pirate Adventure
//
//  Created by Brian on 8/31/14.
//  Copyright (c) 2014 Code Coalition. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BCCharacter.h"
#import "BCBoss.h"

@interface BCFactory : NSObject

-(NSArray *)tiles;
-(BCCharacter *)character;
-(BCBoss *)boss;

@end
