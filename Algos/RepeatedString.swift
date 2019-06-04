//
//  RepeatedString.swift
//  HackerRank
//
//  Created by Gene Dahilig on 6/3/19.
//  Copyright © 2019 Gene Dahilig. All rights reserved.
//

import Foundation

class RepeatedString : BaseTest, TestProtocol {
    
    override init() {
        super.init()
        testName = "RepeatedString"
    }
    
    func repeatedString(s: String, n: Int) -> Int {
        var count = 0
        var partial : Int = 0
        let factor : Int = n/s.count
        let partialSize : Int = n % s.count
        for i in 0..<s.count {
            let index = s.index(s.startIndex, offsetBy: i)
            let ch : Character = s[index]
            if (ch == "a") {
                count+=1
                if i < partialSize  {
                    partial += 1
                }
            }
        }
        
        return factor * count + partial
    }
    
    override func test() -> Bool{
        var expected : Int
        var pass : Bool = false
        
        expected = 7
        pass = self.repeatedString(s: "aba", n: 10) == expected
        if !pass {
            return false
        }
        
        expected = 1000000000000
        pass = self.repeatedString(s: "a", n: 1000000000000) == expected
        if !pass {
            return false
        }

        return pass
    }
}

