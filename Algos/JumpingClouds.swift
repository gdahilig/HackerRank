//
//  JumpingClouds.swift
//  HackerRank
//
//  Created by Gene Dahilig on 6/1/19.
//  Copyright © 2019 Gene Dahilig. All rights reserved.
//
// https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup


import Foundation

class JumpingClouds : BaseTest, TestProtocol {
    
    override init() {
        super.init()
        testName = "JumpingClouds"
    }
    
    // Complete the jumpingOnClouds function below.
    func jumpingOnClouds(c: [Int]) -> Int {
        return 0
    }

    override func test() -> Bool{
        var expected : Int
        var pass : Bool

        expected = 4
        pass = self.jumpingOnClouds(c: [0, 0, 1, 0, 0, 1, 0,]) == expected
        if !pass {
            return false
        }
        
        expected = 3
        pass = self.jumpingOnClouds(c: [0, 0, 0, 0, 1, 0]) == expected
        if !pass {
            return false
        }
        
        return true
    }
}
