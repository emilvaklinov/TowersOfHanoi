//
//  Constants.swift
//  TowersOfHanoi
//
//  Created by Emil Vaklinov on 24/04/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import Foundation

struct LogicConstant {
  static let defaultLevel = 5
  static let maximumLevel = 9
  static let minimumLevel = 2
  static let gameTitle = "Tower of Hanoi"
  static let pausedTitle = "Paused"
  static let winTitle = "You Win!"
  static let loseTitle = "You Lose..."
  static let casualModeString = "Casual"
  static let challengeModeString = "Challenge"
  static let timerHourUpperBound = 99
  static let secondBase = 60
  static let minuteBase = 60
}

struct InfrastructureConstant {
  static let gameStateNotificationChannelName = "gameState"
  static let gameModeNotificationChannelName = "gameMode"
  static let gameLevelNotificationChannelName = "gameLevel"
}

struct UIConstant {

  static let maximumDiskHeight = 25.0
  static let largeSmallDiskWidthRatio = 3.0
  static let diskWidthOffset = 20.0
  static let diskHeightOffset = 12.0
  static let diskColor = 0x387A36
  static let diskBorderColor = 0x9BD29A
  static let diskCornerRadius = 4.0
  static let diskBorderWidth = 1.5

}
