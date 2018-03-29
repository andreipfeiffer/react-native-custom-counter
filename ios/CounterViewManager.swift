//
//  CounterViewManager.swift
//  CounterApp
//
//  Created by Andrei Pfeiffer on 3/29/18.
//

import Foundation

@objc(CounterViewManager)
class CounterViewManager: RCTViewManager {
  override func view() -> UIView! {
    return CounterView()
  }
  
  // this is required since RN 0.49+
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
}
