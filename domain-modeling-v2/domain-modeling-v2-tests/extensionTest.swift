//
//  extensionTest.swift
//  domain-modeling-v2
//
//  Created by apple on 4/16/16.
//  Copyright © 2016 Sophie. All rights reserved.
//

import XCTest
import domain_modeling_v2


class extensionTest: XCTestCase {
    
    let num: Double = 5.0;
    
    func checkExtension() {
        let result : Money = num.USD
        XCTAssert(result.amount == 5)
        XCTAssert(result.currency == "USD")
        let result2 : Money = num.GBP
        XCTAssert(result2.amount == 10)
        XCTAssert(result2.currency == "USD")
        let result3 : Money = num.CAN
        XCTAssert(result3.amount == 4)
        XCTAssert(result3.currency == "USD")
    }
    
    
}
