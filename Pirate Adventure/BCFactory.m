//
//  BCFactory.m
//  Pirate Adventure
//
//  Created by Brian on 8/31/14.
//  Copyright (c) 2014 Code Coalition. All rights reserved.
//

#import "BCFactory.h"
#import "BCTile.h"

@implementation BCFactory

-(NSArray *)tiles
{
    BCTile *tile1 = [[BCTile alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertake a voyage.  You just stop the evil Romulan Boss. Would you like a phaser to get started ?";
    tile1.backgroundImage = [UIImage imageNamed:@"mapstart.jpg"];
    BCWeapon *bluntedSword = [[BCWeapon alloc] init];
    bluntedSword.name = @"Stun phasers";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take stun phasers";
    
    BCTile *tile2 = [[BCTile alloc] init];
    tile2.story = @"You have come across Data. Would you like to upgrade your knowledge ?";
    tile2.backgroundImage = [UIImage imageNamed:@"startrekblacksmith.jpg"];
    BCArmor *steelArmor = [[BCArmor alloc] init];
    steelArmor.name = @"Data";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take Data";
    
    BCTile *tile3 = [[BCTile alloc] init];
    tile3.story = @"A mysterious ship appears in sector 3.  Should we stop and initiate communication ?";
    tile3.backgroundImage = [UIImage imageNamed:@"startrekfriendlydock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at ship";
    
    NSMutableArray *firstColumn  = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    BCTile *tile4 = [[BCTile alloc] init];
    tile4.story = @"You have found Worf.  He can be used as security enforcement.  Klingons are fiercly loyal to the captain.";
    tile4.backgroundImage = [UIImage imageNamed:@"startrekparrot.jpg"];
    BCArmor *parrotArmor = [[BCArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Worf";
    tile4.actionButtonName = @"Adopt Worf";
    
    BCTile *tile5 = [[BCTile alloc] init];
    tile5.story = @"You have stumbled upon a cache of phasers.  Would you like to upgrade to advanced phasers ?";
    tile5.backgroundImage = [UIImage imageNamed:@"rifles.jpg"];
    BCWeapon *pistolWeapon = [[BCWeapon alloc] init];
    pistolWeapon.name = @"Phasers";
    pistolWeapon.damage = 17;
    tile5.actionButtonName = @"Use phasers";
    
    BCTile *tile6 = [[BCTile alloc] init];
    tile6.story = @"You have been captured by romulans and you are ordered to walk the plank !";
    tile6.backgroundImage = [UIImage imageNamed:@"startrekplank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear!";
    
    NSMutableArray *secondColumn  = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    BCTile *tile7 = [[BCTile alloc] init];
    tile7.story = @"You have sighted an intense battle in sector 5. Should we intervene ?";
    tile7.backgroundImage = [UIImage imageNamed:@"shipbattle.jpg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight those scum!";
    
    BCTile *tile8 = [[BCTile alloc] init];
    tile8.story = @"The Romulans have appeared in full force sir!";
    tile8.backgroundImage = [UIImage imageNamed:@"romulanshipattack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon ship";
    
    BCTile *tile9 = [[BCTile alloc] init];
    tile9.story = @"You have stumbled upon Wesley Crusher!";
    tile9.backgroundImage = [UIImage imageNamed:@"wesleycrusher.jpg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take wesley";
    
    NSMutableArray *thirdColumn  = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    BCTile *tile10 = [[BCTile alloc] init];
    tile10.story = @"A group of hostiles have tried to board the U.S.S Enterprise";
    tile10.backgroundImage = [UIImage imageNamed:@"startrekattack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders";
    
    BCTile *tile11 = [[BCTile alloc] init];
    tile11.story = @"In the depths of space, anything is possible.  Will we find Wesley or hostiles ?";
    tile11.backgroundImage = [UIImage imageNamed:@"wesleycrusher_2.jpg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Engage Warp 5";
    
    BCTile *tile12 = [[BCTile alloc] init];
    tile12.story = @"Your final faceoff with the fearsome Romulan boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"startrekboss.jpg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight";
    
    NSMutableArray *fourthColumn  = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(BCCharacter *)character
{
    BCCharacter *character = [[BCCharacter alloc] init];
    character.health = 100;
    BCArmor *armor = [[BCArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    BCWeapon *weapon = [[BCWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}

-(BCBoss *)boss
{
    BCBoss *boss = [[BCBoss alloc] init];
    boss.health = 65;
    return boss;
}
@end
