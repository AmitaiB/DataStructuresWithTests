//
//  Node.m
//  DataStructures
//
//  Created by Amitai Blickstein on 1/25/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import "Node.h"

@implementation Node

-(instancetype)initWithValue:(id)value {
    if (!(self = [super init])) return  nil;
    _value = value;
    return  self;
}

@end
