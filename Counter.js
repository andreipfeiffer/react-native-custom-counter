import { NativeModules, NativeEventEmitter } from "react-native";

// OPTION 1
class Counter extends NativeEventEmitter {
  constructor(nativeModule) {
    super(nativeModule);

    // explicitly set our custom methods and properties
    this.initialCount = nativeModule.initialCount;
    this.getCount = nativeModule.getCount;
    this.increment = nativeModule.increment;
    this.decrement = async function() {
      try {
        const res = await nativeModule.decrement();
        console.log(res);
      } catch (e) {
        console.log(e.message, e.code);
      }
    };
  }
}

/*
// OPTION 2

// pros:
// - less boilerplate
// - no need to update this component when new native methods are added

// cons:
// - no IntelliSense in editors, because properties are dynamically set

class Counter extends NativeEventEmitter {
  constructor(nativeModule) {
    super(nativeModule);

    // exclude event emitter's methods because the shadow
    // the prototype implementations
    const keys = Object.keys(nativeModule).filter(
      prop => !["addListener", "removeListeners"].includes(prop)
    );

    // dynamicaly set our custom methods and properties
    keys.forEach(prop => this[prop] = nativeModule[prop])
  }
}
*/


export default new Counter(NativeModules.Counter);
