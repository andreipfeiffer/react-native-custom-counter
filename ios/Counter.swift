//
//  Counter.swift
//  CounterApp
//
//  Created by Andrei Pfeiffer on 3/29/18.
//

import Foundation

@objc(Counter)
class Counter: NSObject {
  
  func constantsToExport() -> [AnyHashable : Any]! {
    return ["initialCount": 0]
  }
  
  static func requiresMainQueueSetup() -> Bool {
    return true
  }

}
