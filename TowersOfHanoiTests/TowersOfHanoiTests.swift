//
//  TowersOfHanoiTests.swift
//  TowersOfHanoiTests
//
//  Created by Emil Vaklinov on 23/04/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import XCTest
@testable import TowersOfHanoi

class TowersOfHanoiTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func checkTower(dest: Stack<Int>, numberOfDisks: Int) -> Bool {
        var match = true
        var index = 1
        while match && dest.size() > 0 && index <= numberOfDisks {
            match = dest.pop() == index
            index += 1
        }
        return match
    }
    
    func testRecursiveTowerOfHanoi() {
//        let numberOfDisks = 4
//        let destStack:Stack<Int> = Stack<Int>()
//
//        tower(numberOfDisks, source:.Tower1, dest:.Tower3 , temp:.Tower2, finalDest:.Tower3, destStack)
//        XCTAssert(checkTower(dest: destStack, numberOfDisks: numberOfDisks), "Pass")
    }
    
    func testInteractiveTowerOfHanoi() {
//        let towerStacks: [Tower: Stack<Int>] = [.Tower1: Stack<Int>(), .Tower2: Stack<Int>(), .Tower3: Stack<Int>()]
//
//        let numberOfDisks = 4
//        for var index = numberOfDisks; index > 0; index -= 1 {
//            towerStacks[.Tower1]?.push(index)
        }
        
//        towerInteractive(numberOfDisks, towerStacks) //results in tower 2 as the destination
//        XCTAssert(checkTower(towerStacks[.Tower2]!, numberOfDisks: numberOfDisks), "Pass")
//    }
}
