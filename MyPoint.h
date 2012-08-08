//
//  LatLon.h
//  test
//
//  Created by Victor Grigoriev on 8/8/12.
//  Copyright (c) 2012 Victor Grigoriev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyPoint : NSObject
@property (copy) NSNumber* x;
@property (copy) NSNumber* y;

+ (MyPoint*) fromStringValue:(NSString*)stringArg;

@end
