//
//  nothotdogTests.m
//  nothotdogTests
//
//  Created by Denis Lemire on 2025-01-11.
//

#import <XCTest/XCTest.h>
#import "nothotdog.h"

@interface NotHotDogTests : XCTestCase
@property (nonatomic, strong) NotHotDog *detector;
@end

@implementation NotHotDogTests

- (void)setUp {
    [super setUp];
    self.detector = [[NotHotDog alloc] init];
}

- (void)tearDown {
    self.detector = nil;
    [super tearDown];
}

- (void)testIsHotDog_WithHotDogEmoji {
    NSString *input = @"🌭";
    XCTAssertTrue([self.detector isHotDog:input], @"The detector should recognize 🌭 as a hotdog.");
}

- (void)testIsHotDog_WithNonHotDogEmoji {
    NSString *input = @"🍕";
    XCTAssertFalse([self.detector isHotDog:input], @"The detector should not recognize 🍕 as a hotdog.");
}

- (void)testIsHotDog_WithEmptyString {
    NSString *input = @"";
    XCTAssertFalse([self.detector isHotDog:input], @"The detector should not recognize an empty string as a hotdog.");
}

- (void)testIsHotDog_WithMultipleHotDogEmojis {
    NSString *input = @"🌭🌭";
    XCTAssertFalse([self.detector isHotDog:input], @"The detector should not recognize multiple 🌭 as a single hotdog.");
}

- (void)testIsHotDog_WithRandomText {
    NSString *input = @"hotdog";
    XCTAssertFalse([self.detector isHotDog:input], @"The detector should not recognize 'hotdog' as a hotdog.");
}

@end
