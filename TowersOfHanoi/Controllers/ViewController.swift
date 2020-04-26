//
//  ViewController.swift
//  TowersOfHanoi
//
//  Created by Emil Vaklinov on 23/04/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit


protocol ViewControllerDelegate: class {
  func startButtonPressed()
  func settingsButtonPressed()
}

class ViewController: BaseViewController {

  var startButton: MenuButton!
  var settingsButton: MenuButton!
  weak var delegate: ViewControllerDelegate?
  
  // MARK: - View controller life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    startButton = MenuButton(type: .custom)
    startButton.setTitle("Start", for: .normal)
    contentView.addSubview(startButton)
    startButton.addTarget(self, action: Selector(("startPressed")), for: .touchUpInside)
    settingsButton = MenuButton(type: .custom)
    settingsButton.setTitle("", for: .normal)
    contentView.addSubview(settingsButton)
    settingsButton.addTarget(self, action: Selector(("")), for: .touchUpInside)
  }
  
  // MARK: - IBActions
  @objc private func startPressed() {
    delegate?.startButtonPressed()
  }
  
  @objc private func settingsPressed() {
    delegate?.settingsButtonPressed()
  }

}
