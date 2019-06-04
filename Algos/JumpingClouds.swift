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
        var jumps = 0
        var pos = 0
        while pos != c.count-1 {
            if pos+2 < c.count {
                pos = c[pos+2] == 1 ? pos+1 : pos+2
                jumps = jumps+1
            }
            else {
                if pos+1 < c.count {
                    jumps = jumps+1
                }
                pos = pos+1
            }
        }
        return jumps
    }
    
    override func test() -> Bool{
        var expected : Int
        var pass : Bool

        expected = 3
        pass = self.jumpingOnClouds(c: [0, 0, 0, 1, 0, 0]) == expected
        if !pass {
            return false
        }

        expected = 3
        pass = self.jumpingOnClouds(c: [0, 1, 0, 0, 0, 1, 0]) == expected
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
