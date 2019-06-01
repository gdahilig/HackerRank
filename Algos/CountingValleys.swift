//
//  CountingValleys.swift
//  HackerRank
//
//  Created by Gene Dahilig on 6/1/19.
//  Copyright © 2019 Gene Dahilig. All rights reserved.
//

import Foundation

class CountingValleys : BaseTest, TestProtocol {

    override init() {
        super.init()
        testName = "CountingValleys"
    }
    // Complete the countingValleys function below.
    func countingValleys(n: Int, s: String) -> Int {
        var valleyCount = 0
        var elevation = 0
        for ch in s {
            if ch == "U" {
                if elevation + 1 == 0 {
                    valleyCount = valleyCount + 1
                }
                elevation = elevation + 1
            }
            else if ch == "D" {
                elevation = elevation - 1
            }
        }
        return valleyCount
    }
    
    override func test() -> Bool{
        let expected = 1
        let result = self.countingValleys(n:8, s: "UDDDUDUU") == expected
        
        return result
    }
}
