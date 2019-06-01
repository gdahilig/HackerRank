//
//  File.swift
//  HackerRank
//
//  Created by Gene Dahilig on 6/1/19.
//  Copyright © 2019 Gene Dahilig. All rights reserved.
//

import Foundation

class SockMerchant : BaseTest, TestProtocol {
    override init() {
        super.init()
        
        self.testName = "SockMerchant"
    }

    func sockMerchant(n: Int, ar: [Int]) -> Int {
        var socks = Dictionary<Int, Int>()
        for color in ar {
            if let val = socks[color] {
                socks[color] = val+1
            }
            else {
                socks[color] = 1
            }
        }
        
        var count = 0
        for (_, total) in socks {
            let pairs = total/2
            if pairs > 0 {
                count = count + pairs
            }
        }
        return count
    }

    override func test() -> Bool {
        
        let expected = 3
        let pairs = sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])
//        print("There are \(pairs) pairs of socks.")
        return expected == pairs
    }
}




