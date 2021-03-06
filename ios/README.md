#  BleClient-Resolved

Because dependencies in iOS can be a mess the BleClient-Resolve manages this mess for you. It provides

1. Framework build in derived data folder per target and architecture. You do not need to strip the unwanted simulator architecture when submitting to the AppStore
2. BleClient linked to frameworks with the correct architecture if you are building for simulator, device or mac (linux ...)
3. Unit tests for the respective targets
4. Static library of BleClient or dynamic Framework
5. Swift 4.2 or earliar compliant build
6. Paralized builds are allowed

## Resolve iOS dependencies

``` bash
cd ..
npm install
cd ios
popd Sources/BleClientManager

# --use-submodules is optional, no build is needed because we do not use the carthage builds.
carthage update --use-submodules --no-build
popd
```
# Build BleClient iOS

``` bash
xcodebuild --scheme BleClient-resolved-iOS -sdk iphonesimulator11.4 | xcpretty
```

You can repeat this for any SDK.

Build output can be found in derived data folder. If you open xcode and run the project folders are printed.
