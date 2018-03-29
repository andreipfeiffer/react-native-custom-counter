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
  
  func getCount(_ callback: RCTResponseSenderBlock) {
    callback([count])
  }
  
  func decrement(_ resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) -> Void {
    if (count == 0) {
      let error = NSError(domain: "", code: 200, userInfo: nil)
      reject("E_COUNT", "count cannot be negative", error)
    } else {
      count -= 1
      resolve("count was decremented")
    }
  }
  
  func constantsToExport() -> [AnyHashable : Any]! {
    return ["initialCount": count]
  }
  
  static func requiresMainQueueSetup() -> Bool {
    return true
  }

}
