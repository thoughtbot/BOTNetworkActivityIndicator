@import XCTest;
#import "BOTNetworkActivityIndicator.h"

@interface BOTNetworkActivityIndicator ()

@property (nonatomic) NSInteger networkActivityCounter;

@end

@interface BOTNetworkActivityIndicatorTests : XCTestCase

@end

@implementation BOTNetworkActivityIndicatorTests

- (void)setUp
{
    [super setUp];
    [[BOTNetworkActivityIndicator sharedIndicator] setNetworkActivityCounter:0];
}

- (void)testPoppingAnEmptyQueue
{
    [[BOTNetworkActivityIndicator sharedIndicator] popNetworkActivity];
    NSInteger count = [[BOTNetworkActivityIndicator sharedIndicator] networkActivityCounter];
    XCTAssertEqual(count, (long)0);
}

@end
