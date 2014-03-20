//
//  PlayingCardDeckTest.m
//  CardGame
//
//  Created by Horace Williams on 3/19/14.
//  Copyright (c) 2014 StanfordiOSClasses. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PlayingCardDeck.h"

@interface PlayingCardDeckTest : XCTestCase

@end

@implementation PlayingCardDeckTest

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

- (void)testPlayingCardDeckInitsWithFullDeck
{
    PlayingCardDeck *testPlayingCardDeck = [[PlayingCardDeck alloc] init];
    XCTAssertEqual(52, [[testPlayingCardDeck cards] count]);
}



@end
