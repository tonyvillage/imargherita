//
//  Helper.m
//  iMargherita
//
//  Created by Sebastiano Ronzulli on 23/01/13.
//  Copyright (c) 2013 Sebastiano Ronzulli. All rights reserved.
//

#import "Helper.h"

@implementation Helper

+(BOOL)isRetinaDisplay
{
    return ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] &&
            ([UIScreen mainScreen].scale == 2.0))?1:0;
}

@end
