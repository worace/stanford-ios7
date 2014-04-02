//
//  CardTest.m
//  CardGame
//
//  Created by Horace Williams on 3/17/14.
//  Copyright (c) 2014 StanfordiOSClasses. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Card.h"

@interface CardTest : XCTestCase

@end

@implementation CardTest

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCardHasContentsSetterAndGetter
{
    Card *card1 = [[Card alloc] init];
    card1.contents = @"one";
    XCTAssertEqual(card1.contents, @"one", @"Should set the contents");
}

- (void)testMatchReturns1ForAContentsMatch
{
    Card *testCard = [[Card alloc] init];
    testCard.contents = @"one";
    Card *matchCard = [[Card alloc] init];
    matchCard.contents = testCard.contents;

    NSArray *cardsToMatch = @[matchCard];
    
    XCTAssertEqual([testCard match:cardsToMatch], 1, @"Should set the contents");

}

- (void)testMatchReturnsMinus1ForNoMatch
{
    Card *testCard = [[Card alloc] init];
    testCard.contents = @"one";
    Card *matchCard = [[Card alloc] init];
    matchCard.contents = @"bogus";
    
    NSArray *cardsToMatch = @[matchCard];
    
    XCTAssertEqual([testCard match:cardsToMatch], -1, @"Should be negative for no match");
    
}


@end
