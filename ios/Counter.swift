//
//  Counter.swift
//  CounterApp
//
//  Created by Andrei Pfeiffer on 3/29/18.
//

import Foundation

@objc(Counter)
class Counter: RCTEventEmitter {
  
  private var count = 0

  @objc
  func increment() {
    count += 1
    print("count is \(count)")
    
    // send our event with some data
    // body can be anything: int, string, array, object
    sendEvent(withName: "onIncrement", body: ["count": count])
  }
  
  @objc
  func getCount(_ callback: RCTResponseSenderBlock) {
    callback([count])
  }
  
  @objc
  func decrement(_ resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) -> Void {
    if (count == 0) {
      let error = NSError(domain: "", code: 200, userInfo: nil)
      reject("E_COUNT", "count cannot be negative", error)
    } else {
      count -= 1
      resolve("count was decremented")
    }
  }
  
  // we need to override this method and
  // return an array of event names that we can listen to
  override func supportedEvents() -> [String]! {
    return ["onIncrement"]
  }
  
  override func constantsToExport() -> [AnyHashable : Any]! {
    return ["initialCount": count]
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }

}
