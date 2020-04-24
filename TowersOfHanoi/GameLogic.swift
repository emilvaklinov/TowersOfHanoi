//
//  GameLogic.swift
//  TowersOfHanoi
//
//  Created by Emil Vaklinov on 24/04/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import Foundation

enum PoleType : Int {
  case OriginalPole
  case BufferPole
  case DestinationPole
  var description: String {
    switch self {
    case .OriginalPole:
      return "OriginalPole"
    case .BufferPole:
      return "BufferPole"
    case .DestinationPole:
      return "DestinationPole"
    }
  }
}

enum GameState: Hashable, Equatable {
  case Empty
  case Prepared
  case Started
  case Resumed
  case Paused
  case Ended(hasWon: Bool)
  var description: String {
    switch self {
    case .Empty: // The initial state, no semantic meaning
      return "Empty"
    case .Prepared:
      return "Prepared"
    case .Started:
      return "Started"
    case .Resumed:
      return "Resumed"
    case .Paused:
      return "Paused"
    case let .Ended(hasWon):
      if hasWon {
        return "Won"
      } else {
        return "Lost"
      }
    }
  }
  var hashValue: Int {
    get {
      return self.description.hashValue
    }
  }
}
func ==(lhs:GameState, rhs:GameState) -> Bool {
  return lhs.description == rhs.description
}

enum GameMode: Int {
  case Casual
  case Challenge
  var description: String {
    switch self {
    case .Casual:
      return "Casual"
    case .Challenge:
      return "Challenge"
    }
  }
}

