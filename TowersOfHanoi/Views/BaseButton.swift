//
//  BaseButton.swift
//  TowersOfHanoi
//
//  Created by Emil Vaklinov on 26/04/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit

class BaseButton: UIButton {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
  
    
  private func setup() {
    
//     setup drop shadow
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    self.applyDropShadow(cornerRadius: self.cornerRadius)
  }
}
