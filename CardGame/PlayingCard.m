//
//  PlayingCard.m
//  CardGame
//
//  Created by Horace Williams on 3/19/14.
//  Copyright (c) 2014 StanfordiOSClasses. All rights reserved.
//

#import "PlayingCard.h"


@implementation PlayingCard

static const int MISMATCH_PENALTY = -2;
static const int MATCH_BONUS = 4;

+ (NSArray *)validSuits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank { return [[self rankStrings] count] - 1; }

- (NSString *)contents
{
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}

@synthesize suit=_suit;
- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

- (int)match:(NSArray *)otherCards
{
    NSInteger score = 0;
    for (PlayingCard *cardToMatch in otherCards) {
        if (cardToMatch.rank == self.rank) {
            score += 4 * MATCH_BONUS;
        } else if ([cardToMatch.suit isEqualToString:self.suit]) {
            score += 1 * MATCH_BONUS;
        } else {
            score += MISMATCH_PENALTY;
        }
    }
    return score;
}
@end
