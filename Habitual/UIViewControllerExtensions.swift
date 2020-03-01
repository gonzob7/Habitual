//
//  UIViewControllerExtensions.swift
//  Habitual
//
//  Created by Gonzalo Birrueta on 2/29/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

extension UIViewController {
  static func instantiate() -> Self {
    return self.init(nibName: String(describing: self), bundle: nil)
  }
}
