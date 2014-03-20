//
//  DeckTest.m
//  CardGame
//
//  Created by Horace Williams on 3/17/14.
//  Copyright (c) 2014 StanfordiOSClasses. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Deck.h"
#import "Card.h"

@interface DeckTest : XCTestCase

@end

@implementation DeckTest

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

- (void)testEmptyDeckGivesNilRandomCard
{
    Deck *testDeck = [[Deck alloc] init];
    XCTAssertNil([testDeck drawRandomCard]);
}

- (void)testCardsInitsToEmptyArray
{
    Deck *testDeck = [[Deck alloc] init];
    XCTAssertEqualObjects([testDeck cards], @[]);
}

- (void)addCardAddsToCards
{
    Deck *testDeck = [[Deck alloc] init];
    XCTAssertEqual([[testDeck cards] count], 0);
    [testDeck addCard: [[Card alloc] init]];
    XCTAssertEqual([[testDeck cards] count], 1);
    [testDeck addCard: [[Card alloc] init]];
    XCTAssertEqual([[testDeck cards] count], 2);
}

- (void)testDeckWithSingleCardGivesThatCardAsRandomCard
{
    Deck *testDeck = [[Deck alloc] init];
    Card *testCard = [[Card alloc] init];
    testCard.contents = @"test card";
    [testDeck addCard:testCard];
    XCTAssertEqual([testDeck drawRandomCard].contents, @"test card", @"Should set the contents");
}

- (void)testDrawRandomCardRemovesCardFromTheDeck
{
    Deck *testDeck = [[Deck alloc] init];
    Card *testCard = [[Card alloc] init];
    testCard.contents = @"test card";
    [testDeck addCard:testCard];
    [testDeck drawRandomCard];
    XCTAssertNil([testDeck drawRandomCard]);
}

@end
