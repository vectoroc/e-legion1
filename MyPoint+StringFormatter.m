//
//  LatLon+StringFormatter.m
//  test
//
//  Created by Victor Grigoriev on 8/8/12.
//  Copyright (c) 2012 Victor Grigoriev. All rights reserved.
//

#import "MyPoint+StringFormatter.h"

@implementation MyPoint (StringFormatter)
-(NSString*)toString
{
    return [NSString stringWithFormat:@"(%@,%@)", self.x, self.y];
}
@end
