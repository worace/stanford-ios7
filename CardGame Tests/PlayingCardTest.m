//
//  PlayingCardTest.m
//  CardGame
//
//  Created by Horace Williams on 3/19/14.
//  Copyright (c) 2014 StanfordiOSClasses. All rights reserved.
//


#import <XCTest/XCTest.h>
#import "PlayingCard.h"

@interface PlayingCardTest : XCTestCase

@end

@implementation PlayingCardTest

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

- (void) testFetchesSuit
{
    PlayingCard *testPlayingCard = [[PlayingCard alloc] init];
    testPlayingCard.suit = @"♠";
    XCTAssertEqual(testPlayingCard.suit, @"♠");
}

- (void) testFetchesRank
{
    PlayingCard *testPlayingCard = [[PlayingCard alloc] init];
    testPlayingCard.rank = 4;
    XCTAssertEqual(testPlayingCard.rank, 4);
}

- (void)testContentsReturnsSuitAndRank
{
    PlayingCard *testPlayingCard = [[PlayingCard alloc] init];
    testPlayingCard.suit = @"♠";
    testPlayingCard.rank = 4;
    XCTAssertEqualObjects(testPlayingCard.contents, @"4♠", @"Should Combine Suit and Rank to create Contents");
    
}

- (void)testRankOverTenGivesRoyalCard
{
    PlayingCard *testPlayingCard = [[PlayingCard alloc] init];
    testPlayingCard.suit = @"♠";
    testPlayingCard.rank = 11;
    XCTAssertEqualObjects(testPlayingCard.contents, @"J♠", @"Should Combine Suit and Rank to create Contents");
    
}

- (void)testUndefinedSuitOutputsQuestionMark
{
    PlayingCard *testPlayingCard = [[PlayingCard alloc] init];
    testPlayingCard.rank = 2;
    XCTAssertEqualObjects(testPlayingCard.contents, @"2?", @"Should Combine Suit and Rank to create Contents");
    
    
}

- (void)testUndefinedRankOutputsQuestionMark
{
    PlayingCard *testPlayingCard = [[PlayingCard alloc] init];
    testPlayingCard.suit = @"♠";
    XCTAssertEqualObjects(testPlayingCard.contents, @"?♠", @"Should Combine Suit and Rank to create Contents");
}

- (void)testSettingInvalidSuitRemainsUndefined
{
    PlayingCard *testPlayingCard = [[PlayingCard alloc] init];
    testPlayingCard.suit = @"PIZZA";
    XCTAssertEqualObjects(testPlayingCard.suit, @"?");

}

- (void)testSettingExcessiveRankRemainsUndefined
{
    PlayingCard *testPlayingCard = [[PlayingCard alloc] init];
    testPlayingCard.rank = 24;
    XCTAssertEqual(0, testPlayingCard.rank, @"Should Combine Suit and Rank to create Contents");
    
}

- (void)testSettingNegativeRankRemainsUndefined
{
    PlayingCard *testPlayingCard = [[PlayingCard alloc] init];
    testPlayingCard.rank = -24;
    XCTAssertEqual(0, testPlayingCard.rank, @"Should Combine Suit and Rank to create Contents");
}

@end
