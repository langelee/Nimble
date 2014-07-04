#import <XCTest/XCTest.h>
#import <Kick/Kick.h>


@interface CompatibilityTest : XCTestCase

@end

@implementation CompatibilityTest

- (void)testBeAnInstanceOf {
    expect([NSNull null]).to(beAnInstanceOf([NSNull class]));
    expect(@1).toNot(beAnInstanceOf([NSNull class]));
    expect(nil).toNot(beAnInstanceOf([NSNull class]));
}
- (void)testBeASubclassOf {
    expect([NSMutableArray array]).to(beASubclassOf([NSArray class]));
    expect(@1).toNot(beASubclassOf([NSNull class]));
    expect(nil).toNot(beASubclassOf([NSNull class]));
}

- (void)testBeCloseTo {
    expect(@1.2).to(beCloseTo(@1.2001));
    expect(@1.2).to(beCloseTo(@2).within(10));
    expect(nil).toNot(beCloseTo(@0));
}

- (void)testBeginWith {
    expect(@"hello world!").to(beginWith(@"hello"));
    expect(@"hello world!").toNot(beginWith(@"world"));
    expect(@[@1, @2]).to(beginWith(@1));
    expect(@[@1, @2]).toNot(beginWith(@2));
    expect(nil).toNot(beginWith(@1));
}

- (void)testBeGreaterThan {
    expect(@2).to(beGreaterThan(@1));
    expect(@2).toNot(beGreaterThan(@2));
    expect(nil).toNot(beGreaterThan(@(-1)));
}

- (void)testBeGreaterThanOrEqualTo {
    expect(@2).to(beGreaterThanOrEqualTo(@2));
    expect(@2).toNot(beGreaterThanOrEqualTo(@3));
    expect(nil).toNot(beGreaterThanOrEqualTo(@(-1)));
}

- (void)testBeIdenticalTo {
    expect([NSNull null]).to(beIdenticalTo([NSNull null]));
    expect(@2).toNot(beIdenticalTo(@3));
    expect(nil).toNot(beIdenticalTo(nil));
    expect(nil).toNot(beIdenticalTo(@1));
}

- (void)testBeLessThan {
    expect(@2).to(beLessThan(@3));
    expect(@2).toNot(beLessThan(@2));
    expect(nil).toNot(beLessThan(@1));
}

- (void)testBeLessThanOrEqualTo {
    expect(@2).to(beLessThanOrEqualTo(@2));
    expect(@2).toNot(beLessThanOrEqualTo(@1));
    expect(nil).toNot(beLessThan(@2));
}

- (void)testBeTruthy {
    expect(@YES).to(beTruthy());
    expect(@NO).toNot(beTruthy());
    expect(nil).toNot(beTruthy());
}

- (void)testBeFalsy {
    expect(@NO).to(beFalsy());
    expect(@YES).toNot(beFalsy());
    expect(nil).to(beFalsy());
}

- (void)testBeNil {
    expect(nil).to(beNil());
    expect(@NO).toNot(beNil());
}

- (void)testContain {
    expect(@[@1, @2]).to(contain(@1));
    expect(@[@1, @2]).toNot(contain(@"HI"));
    expect(nil).toNot(contain(@"hi"));
}

- (void)testEndWith {
    expect(@"hello world!").to(endWith(@"world!"));
    expect(@"hello world!").toNot(endWith(@"hello"));
    expect(@[@1, @2]).to(endWith(@2));
    expect(@[@1, @2]).toNot(endWith(@1));
    expect(nil).toNot(endWith(@1));
}

- (void)testEqual {
    expect(@1).to(equal(@1));
    expect(@1).toNot(equal(@2));
    expect(@1).notTo(equal(@2));
    expect(@"hello").to(equal(@"hello"));
    expect(nil).toNot(equal(nil));
}

//- (void)testOneOf {
//    expect(@1).to(beOneOf(@1));
//    expect(@1).toNot(equal(@2));
//    expect(@1).notTo(equal(@2));
//    expect(@"hello").to(equal(@"hello"));
//}

@end