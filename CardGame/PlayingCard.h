//
//  PlayingCard.h
//  CardGame
//
//  Created by Horace Williams on 3/19/14.
//  Copyright (c) 2014 StanfordiOSClasses. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSArray *)rankStrings;
+ (NSUInteger)maxRank;

@end
