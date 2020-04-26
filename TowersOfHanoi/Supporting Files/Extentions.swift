//
//  Extentions.swift
//  TowersOfHanoi
//
//  Created by Emil Vaklinov on 26/04/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit

extension UIView {
  @IBInspectable var cornerRadius: CGFloat {
    get {
      return layer.cornerRadius
    }
    set {
      layer.cornerRadius = newValue
      layer.masksToBounds = newValue > 0
    }
  }
  @IBInspectable var borderWidth: CGFloat {
    get {
      return layer.borderWidth
    }
    set {
      layer.borderWidth = newValue
    }
  }
  @IBInspectable var borderColor: UIColor? {
    get {
        return UIColor(cgColor: layer.borderColor!)
    }
    set {
        layer.borderColor = newValue?.cgColor
    }
  }
}

extension UIView {
    class func viewFromNib(nib: String?) -> UIView? {
      let views = Bundle.main.loadNibNamed((nib)!, owner: nil, options: nil)
      return views?.first as? UIView
    }
    
    class func viewFromNib(nib: String?, owner: AnyObject?) -> UIView? {
      let views = Bundle.main.loadNibNamed((nib)!, owner: owner, options: nil)
      return views?.first as? UIView
    }
    
func applyDropShadow(cornerRadius radius:CGFloat = 0) {
  self.layer.masksToBounds = false
  self.layer.shadowColor = UIColor(white: 0.2, alpha: 1.0).cgColor
  self.layer.shadowOffset = CGSize(width: 0, height: 1)
  self.layer.shadowOpacity = 0.5
  self.layer.shadowRadius = 1.5
  self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: radius).cgPath
}
}

extension UIColor {
    class func color(hexValue: UInt, alpha: CGFloat) -> UIColor {
    return UIColor(red: CGFloat((hexValue & 0xFF0000) >> 16) / 255.0, green: CGFloat((hexValue & 0xFF00) >> 8) / 255.0,
      blue: CGFloat((hexValue & 0xFF)) / 255.0, alpha: alpha)
  }
  
    class func color(r: UInt, g: UInt, b: UInt, a: CGFloat) -> UIColor {
    return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: a)
  }
}
