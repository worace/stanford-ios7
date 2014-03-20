//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by Horace Williams on 3/19/14.
//  Copyright (c) 2014 StanfordiOSClasses. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init
{
    self = [super init];
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank ++) {
                PlayingCard *newCard = [[PlayingCard alloc] init];
                newCard.suit = suit;
                newCard.rank = rank;
                [self addCard:newCard];
            }
        }
    
    }
   return self;
}

@end
