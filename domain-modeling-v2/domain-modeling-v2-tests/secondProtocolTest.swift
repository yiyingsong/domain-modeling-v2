//
//  secondProtocolTest.swift
//  domain-modeling-v2
//
//  Created by apple on 4/16/16.
//  Copyright © 2016 Sophie. All rights reserved.
//

import XCTest
import domain_modeling_v2


class secondProtocolTest: XCTestCase {

    let sevenUSD = Money(amount: 7, currency: "USD")
    let fourGBP = Money(amount: 4, currency: "GBP")

    
    
    func testAddUSDtoUSD() {
        let total = sevenUSD.add(sevenUSD)
        XCTAssert(total.description == "USD14.0")
    }
    
    func testAddUSDtoGBP() {
        let total = sevenUSD.add(fourGBP)
        XCTAssert(total.description == "GBP7.0")
    }
    
    func testSubtractUSDfromUSD() {
        let total = sevenUSD.subtract(sevenUSD)
        XCTAssert(total.description == "USD0.0")
    }
    
    func testSubtractGBPfromUSD() {
        let result = sevenUSD.subtract(fourGBP)
        print("\(result.amount)");
        XCTAssert(result.description == "GBP1.0")
    }

}
