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
        expect([stack containsValue:3]).to.beTruthy;
    });

    
    it(@"can push multiple values onto the stack", ^{
        [stack push:5];
        [stack push:7];
        [stack printStack];
        expect([stack containsValue:5] && [stack containsValue:7]).to.beTruthy;
    });
    
    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
