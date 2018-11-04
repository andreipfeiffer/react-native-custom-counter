//
//  CounterViewManager.m
//  CounterApp
//
//  Created by Andrei Pfeiffer on 3/29/18.
//

#import "React/RCTViewManager.h"

// the component will be exposed as "CounterView"
// if the name ends with "Manager" it will be stripped by React Native
@interface RCT_EXTERN_MODULE(CounterViewManager, RCTViewManager)
// or, we could also rename it ourselves
//@interface RCT_EXTERN_REMAP_MODULE(CounterView, CounterViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(count, NSNumber)

// the type could also be "RCTBubblingEventBlock", but the difference is not explained anywhere
// the name must begin with lowercase "on"
RCT_EXPORT_VIEW_PROPERTY(onUpdate, RCTDirectEventBlock)

// all NSNumber arguments are required to be marked as "nonnull"
RCT_EXTERN_METHOD(updateFromManager:(nonnull NSNumber *)node count:(nonnull NSNumber *)count)

@end
