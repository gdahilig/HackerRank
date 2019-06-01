//
//  BaseTest.swift
//  HackerRank
//
//  Created by Gene Dahilig on 6/1/19.
//  Copyright © 2019 Gene Dahilig. All rights reserved.
//

import Foundation

class BaseTest {
    var testName : String
    init() {
        testName = "NoName Test"
    }
    
    func runTests() {
        var pass : Bool
        
        pass = self.test()
        if pass {
            print("Test: \(self.testName) PASSED!")
        } else {
            print("Test: \(self.testName) FAILED!")
        }

        return
    }
    
    
    func test() -> Bool{
        print("MUST OVERRIDE TEST METHOD!")
        return false
    }
}
