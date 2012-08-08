//
//  LatLon.m
//  test
//
//  Created by Victor Grigoriev on 8/8/12.
//  Copyright (c) 2012 Victor Grigoriev. All rights reserved.
//

#import "MyPoint.h"

@implementation MyPoint {
  @protected
    NSNumber* _x;
    NSNumber* _y;
}

@synthesize x;
@synthesize y;

+ (MyPoint*) fromStringValue:(NSString*)stringArg
{
    MyPoint* latlon = [[[MyPoint alloc] init] autorelease];
    NSCharacterSet* sep = [NSCharacterSet characterSetWithCharactersInString:@","];
    NSCharacterSet* trim = [NSCharacterSet characterSetWithCharactersInString:@"()"];
    
    NSArray* parts = [[stringArg stringByTrimmingCharactersInSet:trim] componentsSeparatedByCharactersInSet:sep];
    
    if ([parts count] != 2) {
        @throw @"Wrong (x,y) pair";
    }
    
    latlon.x = [NSNumber numberWithInt:[[parts objectAtIndex:0] intValue]];
    latlon.y = [NSNumber numberWithInt:[[parts objectAtIndex:1] intValue]];
    
    return latlon;
}

@end
