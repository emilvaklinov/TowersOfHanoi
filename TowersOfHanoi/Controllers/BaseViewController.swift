//
//  BaseViewController.swift
//  TowersOfHanoi
//
//  Created by Emil Vaklinov on 26/04/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var contentView: MenuContentView = {
      var mcv = MenuContentView()

      return mcv
    }()
    
    var contentViewWidthConstraint: NSLayoutConstraint!
    
    // MARK: - View controller life cycle
    override func loadView() {
      let view = UIView()
      self.view = view
      self.view.addSubview(contentView)
     
    }

}
