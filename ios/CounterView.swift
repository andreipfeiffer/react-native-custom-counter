//
//  CounterView.swift
//  CounterApp
//
//  Created by Andrei Pfeiffer on 3/29/18.
//

import UIKit

class CounterView: UIView {

  var count = 0 {
    didSet {
      button.setTitle(String(describing: count), for: .normal)
    }
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    self.addSubview(button)
    increment()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  lazy var button: UIButton = {
    let b = UIButton.init(type: UIButtonType.system)
    b.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    b.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    b.addTarget(
      self,
      action: #selector(increment),
      for: .touchUpInside
    )
    return b
  }()

  func increment() {
    count += 1
  }

}
