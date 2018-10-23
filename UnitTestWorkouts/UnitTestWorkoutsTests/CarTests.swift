//
//  CarTests.swift
//  UnitTestWorkoutsTests
//
//  Created by CSS on 24/10/18.
//  Copyright © 2018 CSS. All rights reserved.
//

import XCTest
@testable import UnitTestWorkouts


class CarTests: XCTestCase {

    var ferrari:Car!
    var jeep:Car!
    var honda:Car!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        ferrari = nil
        jeep = nil
        honda = nil
        
    }

    func testSportFasterThanJeep() {
        let minutes = 60
        //1 start ferrari
        ferrari.start(minutes: minutes)
        //2 start jeep
        jeep.start(minutes: minutes)
        //Test it
        XCTAssertTrue(ferrari.miles > jeep.miles)
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
