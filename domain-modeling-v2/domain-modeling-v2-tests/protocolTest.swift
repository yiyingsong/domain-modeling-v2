//
//  protocolTest.swift
//  domain-modeling-v2
//
//  Created by apple on 4/16/16.
//  Copyright © 2016 Sophie. All rights reserved.
//

import XCTest
import domain_modeling_v2

class protocolTest: XCTestCase {

    func testMoney() {
        let tenUSD = Money(amount: 10, currency: "USD")
        XCTAssert(tenUSD.description == "USD10.0")
    }
    
    func testPerson() {
        let Sophie = Person(firstName: "Sophie", lastName: "Song", age: 21)

        XCTAssert(Sophie.description == "Information about Sophie Song: age: 21, job:nil, spouse:nil.")
    }
    
    func testJob() {
        let job = Job(title: "Mobile Designer", type: Job.JobType.Salary(85000))
        print("\(job.description)")
        XCTAssert(job.description == "The Mobile Designer job has a Salary(85000) of 85000 dollars.")
    }
    
    func testAnotherJob() {
        let anotherJob = Job(title: "Mobile Developer", type: Job.JobType.Hourly(30))
        print("\(anotherJob.description)");
        XCTAssert(anotherJob.description == "The Mobile Developer job has a Hourly(30.0) payment of 30.0 dollars.")
    }
    
    func testFamlity() {
        let Jack = Person(firstName: "Jack", lastName: "Dawson", age: 27)
        Jack.job = Job(title: "Teacher", type: Job.JobType.Salary(7000))
        let Rose = Person(firstName: "Rose", lastName: "Bukter", age: 26)
        let family = Family(spouse1: Jack, spouse2: Rose)
        print("\(family.description)");
        XCTAssert(family.description == " Information about Jack Dawson: age: 27, job:Teacher, spouse:Rose.Information about Rose Bukter: age: 26, job:nil, spouse:Jack.")
    }
}
