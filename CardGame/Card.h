//
//  Card.h
//  CardGame
//
//  Created by Horace Williams on 3/17/14.
//  Copyright (c) 2014 StanfordiOSClasses. All rights reserved.
//

@import Foundation;

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;
@end