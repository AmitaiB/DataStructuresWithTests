//
//  StackLLSpec.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/28/16.
//  Copyright 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Specta.h>
#import <Expecta.h>
#import "StackLL.h"


SpecBegin(StackLL)

describe(@"StackLL", ^{
    __block StackLL *stack;
    
    beforeAll(^{
        stack = [StackLL new];
    });
    
    beforeEach(^{

    });
    
    it(@"can be created", ^{
        expect(stack).toNot.beNil;
    });
    
    it(@"can push a value onto the stack", ^{
        [stack push:3];
        expect().to.contain(@"3");
    });
    
    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
