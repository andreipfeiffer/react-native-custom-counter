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

@end
