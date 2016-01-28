//
//  StackLLSpec.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/27/16.
//  Copyright 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Specta.h>
#import <Expecta.h>
#import "StackLL.h"


SpecBegin(StackLL)

describe(@"StackLL", ^{
    __block StackLL *stack;
    
    beforeEach(^{
        stack = [StackLL new];
    });
    
    it(@"can be created", ^{
        expect(stack).toNot.beNil;
    });  
    
    it(@"can push NSNumber values onto the stack", ^{
        NSNumber *num = @3;
        [stack push:num];
//        [stack push:[NSArray array]];
//        [stack printAndEmpty];
        id returnedValue = [stack pop];
        expect(returnedValue).to.equal(num);
    });
    
    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
