//
//  CookieControllerTests.swift
//  TDDTests
//
//  Created by MACBOOK on 14/02/20.
//  Copyright © 2020 Saini. All rights reserved.
//

import XCTest
@testable import TDD

class CookieControllerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

}

//MARK: Initializer tests
extension CookieControllerTests{
    func testInit_GingerbreadCookieArray_IsNotNil() {
        let cookieJar = CookieController()
        XCTAssertNotNil(cookieJar.gingerbreadCookies)
    }
    func testInit_ShortbreadCookieArray_IsNotNil() {
        let cookieJar = CookieController()
        XCTAssertNotNil(cookieJar.shortbreadCookies)
    }
    func testInit_ChocolateChipCookieArray_IsNotNil() {
        let cookieJar = CookieController()
        XCTAssertNotNil(cookieJar.shortbreadCookies)
    }
    
    func testInit_GingerbreadCookieCount_IsZero() {
        let cookieJar = CookieController()
        XCTAssertEqual(cookieJar.gingerbreadCookies!.count, 0)
    }
    func testInit_ShortbreadCookieCount_IsZero() {
        let cookieJar = CookieController()
        XCTAssertEqual(cookieJar.shortbreadCookies!.count, 0)
    }
    func testInit_ChocolateChipCookieCount_IsZero() {
        let cookieJar = CookieController()
        XCTAssertEqual(cookieJar.chocolateChipCookies!.count, 0)
    }

}

//MARK: add Gingerbread Cookie Test
extension CookieControllerTests {
    func testAddGingerbreadCookie_Increments_NumberOfGingerbreadCookies_ByOne() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.gingerbreadCookies!.count
        cookieJar.addGingerbreadCookie()
        let expectedNumberOfCookies = numberOfCookies + 1
        XCTAssertEqual(cookieJar.gingerbreadCookies!.count, expectedNumberOfCookies)
        
        func testAddGingerbreadCookie_DoesNotIncrement_NumberOfShortbreadCookies() {
            let cookieJar = CookieController()
            let numberOfCookies = cookieJar.shortbreadCookies!.count
            cookieJar.addGingerbreadCookie()
            XCTAssertEqual(cookieJar.shortbreadCookies!.count, numberOfCookies) }
        func testAddGingerbreadCookie_DoesNotIncrement_NumberOfChocolateChipCookies() { let cookieJar = CookieController()
            let numberOfCookies = cookieJar.chocolateChipCookies!.count
            cookieJar.addGingerbreadCookie()
            XCTAssertEqual(cookieJar.chocolateChipCookies!.count, numberOfCookies)
            
        }
}
}

//MARK: add shortbread Cookie Test
extension CookieControllerTests {
    func testAddShortbreadCookie_Increments_NumberOfShortbreadCookies_ByOne() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.shortbreadCookies!.count
        cookieJar.addShortbreadCookie()
        let expectedNumberOfCookies = numberOfCookies + 1
        XCTAssertEqual(cookieJar.shortbreadCookies!.count, expectedNumberOfCookies)
        
    }
    func testAddShortbreadCookie_DoesNotIncrement_NumberOfGingerbreadCookies() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.gingerbreadCookies!.count
        cookieJar.addShortbreadCookie()
        XCTAssertEqual(cookieJar.gingerbreadCookies!.count, numberOfCookies)
        
    }
    
    func testAddShortbreadCookie_DoesNotIncrement_NumberOfChocolateChipCookies() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.chocolateChipCookies!.count
        cookieJar.addShortbreadCookie()
        XCTAssertEqual(cookieJar.chocolateChipCookies!.count, numberOfCookies)
        }
}

//MARK: Chocolate cookie test
extension CookieControllerTests{
    func testAddChocolateChipCookie_Increments_NumberOfChocolateChipCookies_ByOne() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.chocolateChipCookies!.count
        cookieJar.addChocolateChipCookie()
        let expectedNumberOfCookies = numberOfCookies + 1
        XCTAssertEqual(cookieJar.chocolateChipCookies!.count, expectedNumberOfCookies)
        
    }
    func testAddChocolateChipCookie_DoesNotIncrement_NumberOfShortbreadCookies() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.shortbreadCookies!.count
        cookieJar.addChocolateChipCookie()
        XCTAssertEqual(cookieJar.shortbreadCookies!.count, numberOfCookies)
        
    }
    func testAddChocolateChipCookie_DoesNotIncrement_NumberOfGingerbreadCookies() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.gingerbreadCookies!.count
        cookieJar.addChocolateChipCookie()
        XCTAssertEqual(cookieJar.gingerbreadCookies!.count, numberOfCookies)
        
    }
}

//MARK: Reset tests
extension CookieControllerTests{
    func testReset_GingerbreadCookieArray_WithZeroElements_RemainsEmpty() {
        let cookieJar = CookieController()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.gingerbreadCookies!.count, 0)
    }
    func testReset_ShortbreadCookieArray_WithZeroElements_RemainsEmpty() {
        let cookieJar = CookieController()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.shortbreadCookies!.count, 0)
    }
    func testReset_ChocolateChipCookieArray_WithZeroElements_RemainsEmpty() {
        let cookieJar = CookieController()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.chocolateChipCookies!.count, 0)
    }
    

    func testReset_GingerbreadCookieArray_WithElements_BecomesEmpty() {
        let cookieJar = CookieController()
        
        cookieJar.addGingerbreadCookie()
        cookieJar.reset()
        
        XCTAssertEqual(cookieJar.gingerbreadCookies!.count, 0)
        
    }
    func testReset_ShortbreadCookieArray_WithElements_BecomesEmpty() {
        let cookieJar = CookieController()
        cookieJar.addShortbreadCookie()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.shortbreadCookies!.count, 0) }
    func testReset_ChocolateChipCookieArray_WithElements_BecomesEmpty() {
        let cookieJar = CookieController()
        cookieJar.addChocolateChipCookie()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.chocolateChipCookies!.count, 0) }
}




