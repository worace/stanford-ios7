//
//  Card.m
//  CardGame
//
//  Created by Horace Williams on 3/17/14.
//  Copyright (c) 2014 StanfordiOSClasses. All rights reserved.
//

#import "Card.h"


@interface Card()
@end

@implementation Card

- (int)match:(NSArray *)otherCards;
{
    int score = 0;
    for (Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents]) {
            score += 1;
        }
    }
    return score;
}
@end