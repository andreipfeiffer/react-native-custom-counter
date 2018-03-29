//
//  Counter.swift
//  CounterApp
//
//  Created by Andrei Pfeiffer on 3/29/18.
//

import Foundation

@objc(Counter)
class Counter: NSObject {
  
  private var count = 0

  func increment() {
    count += 1
    print("count is \(count)")
  }
  
  func constantsToExport() -> [AnyHashable : Any]! {
    return ["initialCount": count]
  }
  
  static func requiresMainQueueSetup() -> Bool {
    return true
  }

}
