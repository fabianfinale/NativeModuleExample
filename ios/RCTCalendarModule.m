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

//Exports a method called createCalendarEvent
RCT_EXPORT_METHOD(createCalendarEvent:(NSString *)name location:(NSString *)location)
{
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

@end

