//
//  RCTCalendarModule.m
//  NativeModuleExample
//
//  Created by Fabian Finalé Franqui on 2022-01-04.
//

#import <Foundation/Foundation.h>
#import <React/RCTLog.h>
#import "RCTCalendarModule.h"

@implementation RCTCalendarModule

//Exports a module named RCTCalendarModule
RCT_EXPORT_MODULE();

//Exports a constant
- (NSDictionary *)constantsToExport
{
 return @{ @"DEFAULT_EVENT_NAME": @"New Event" };
}

//When overriding constantsToExport() then you should also implement + requiresMainQueueSetup to let React Native know if your module needs to be initialized on the main thread, before any JavaScript code executes.
+ (BOOL)requiresMainQueueSetup
{
  return YES;
}

//Exports a method called createCalendarEvent
RCT_EXPORT_METHOD(createCalendarEvent:(NSString *)name
                  location:(NSString *)location
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
  NSInteger eventId = 748;
  if (eventId) {
    resolve(@(eventId));
  } else {
    reject(@"event_failure", @"no event id returned", nil);
  }
  
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

@end

