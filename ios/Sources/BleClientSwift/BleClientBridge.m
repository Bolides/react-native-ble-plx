//
//  BleClientSwift.m
//  BleClient-iOS
//
//  Created by Stijn on 23/01/2019.
//  Copyright © 2019 Polidea. All rights reserved.
//

#import "BleClientBridge.h"
#import <BleClient/BleClient.h>

@interface BleClientBridge ()

    // TODO: use proxy object to transfer request from swift too.
@property (nonatomic, strong) BleClient * module;

@end

@implementation BleClientBridge

- (NSArray<NSString *> *)supportedEvents {
    return self.module.supportedEvents;
}

@end
