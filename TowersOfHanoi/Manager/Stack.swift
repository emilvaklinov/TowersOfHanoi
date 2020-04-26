//
//  Stack.swift
//  TowersOfHanoi
//
//  Created by Emil Vaklinov on 23/04/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import Foundation

class Node<T> {
    var key: T? = nil
    var next: Node? = nil
}

public class Stack<T> {
    private var N:Int = 0
    private var top: Node<T>! = nil
    
    public func size() -> Int {
        return N
    }
    
    public func isEmty() -> Bool {
        return top === nil
    }
    
    public func peek() -> T? {
        return top.key
    }
    
    public func push(key:T) {
        let current:Node<T>! = top
        top = Node<T>()
        top.key = key
        top.next = current
        N += 1
    }
    
    public func pop() -> T? {
        let item:T? = top.key
        top = top.next
        N -= 1
        return item
    }
}
