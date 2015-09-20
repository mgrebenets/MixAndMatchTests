//
//  ModelTests.swift
//  MixAndMatchTests
//
//  Created by Maksym Grebenets on 20/09/2015.
//  Copyright (c) 2015 Maksym Grebenets. All rights reserved.
//

import UIKit
import XCTest

class ModelTests: XCTestCase {

    func testModel() {
        let model = Model()
        model.method()
        XCTAssert(true)
    }

    func testObjCModel() {
        let model = ObjCModel()
        model.method("objc-method")
        XCTAssert(true)        
    }
}
