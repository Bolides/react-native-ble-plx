//
//  BleClientSwift.h
//  BleClient-iOS
//
//  Created by Stijn on 23/01/2019.
//  Copyright © 2019 Polidea. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BleClientBridge : NSObject

- (NSArray<NSString *> *)supportedEvents;

    // TODO: expose anything you like to swift

@end

NS_ASSUME_NONNULL_END
