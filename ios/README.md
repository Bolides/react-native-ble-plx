#  BleClient-Resolved

Because dependencies in iOS can be a mess the BleClient-Resolve manages this mess for you. It provides

1. Framework build in derived data folder per target and architecture. You do not need to strip the unwanted simulator architecture when submitting to the AppStore
2. BleClient linked to frameworks with the correct architecture if you are building for simulator, device or mac (linux ...)
3. Unit tests for the respective targets
4. Static library of BleClient or dynamic Framework
5. Swift 4.2 or earliar compliant build

## Resolve dependencies

``` bash
# --use-submodules is optional, no build is needed because we do not use the carthage builds.
carthage update --use-submodules --no-build
```

