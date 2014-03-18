//
//  Deck.h
//  CardGame
//
//  Created by Horace Williams on 3/17/14.
//  Copyright (c) 2014 StanfordiOSClasses. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;
@end
