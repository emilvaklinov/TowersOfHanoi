//
//  Disk.swift
//  TowersOfHanoi
//
//  Created by Emil Vaklinov on 24/04/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import Foundation

class Disk: NSObject {
  static var height = UIConstant.maximumDiskHeight
  var width: Double
  var onPole: PoleType?
  init(width: Double) {
    self.width = width
  }
}
