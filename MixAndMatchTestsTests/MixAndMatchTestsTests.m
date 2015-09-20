//
//  MixAndMatchTestsTests.m
//  MixAndMatchTestsTests
//
//  Created by Maksym Grebenets on 20/09/2015.
//  Copyright (c) 2015 Maksym Grebenets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "ObjCModel.h"
#import "MixAndMatchTestsTests-Swift.h"

@interface MixAndMatchTestsTests : XCTestCase

@end

@implementation MixAndMatchTestsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testSwiftModel {
    Model *model = [[Model alloc] init];
    [model method];
    XCTAssert(YES, @"Pass");
}

- (void)testObjCModel {
    ObjCModel *model = [[ObjCModel alloc] init];
    [model method:@"test-from-objc"];
    XCTAssert(YES, @"Pass");    
}

@end
