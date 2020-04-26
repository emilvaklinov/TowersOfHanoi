//
//  MenuButton.swift
//  TowersOfHanoi
//
//  Created by Emil Vaklinov on 26/04/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit

class MenuButton: BaseButton {

  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
  
  private func setup() {
    self.layer.cornerRadius = CGFloat(UIConstant.buttonCornerRadius)
    // set width/height constraints
    self.translatesAutoresizingMaskIntoConstraints = false
    let widthConstraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil,
                                             attribute: .width, multiplier: 0, constant: CGFloat(UIConstant.buttonWidth))
    // relatively lower priority (default is 1000). If the superview adds some constraints that affect the
    // button's width, then let them affect.
    widthConstraint.priority = UILayoutPriority(rawValue: 999)
    self.addConstraint(widthConstraint)
    let heightConstraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil,
                                              attribute: .height, multiplier: 0, constant: CGFloat(UIConstant.buttonHeight))
    self.addConstraint(heightConstraint)
  }

}
