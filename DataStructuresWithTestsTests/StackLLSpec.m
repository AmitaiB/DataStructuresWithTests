//
//  StackLLSpec.m
//  DataStructuresWithTests
//
<<<<<<< HEAD
//  Created by Amitai Blickstein on 1/27/16.
=======
//  Created by Amitai Blickstein on 1/28/16.
>>>>>>> nsinteger-branch
//  Copyright 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Specta.h>
#import <Expecta.h>
#import "StackLL.h"


SpecBegin(StackLL)

describe(@"StackLL", ^{
    __block StackLL *stack;
    
<<<<<<< HEAD
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
=======
    beforeAll(^{
        stack = [StackLL new];
    });
    
    beforeEach(^{

    });
    context(@"initialization", ^{
        
        it(@"can be created", ^{
            expect(stack).toNot.beNil;
        });

    });
    
    context(@"testing push/pop methods", ^{
        
        it(@"can push a value onto the stack", ^{
            [stack push:3];
            expect([stack containsValue:3]).to.beTruthy;
        });
        
        it(@"can pop a value from the stack", ^{
            [stack push:4];
            expect([stack pop]).to.equal(4);
        });
        
        it(@"can push multiple values onto the stack", ^{
            [stack push:5];
            [stack push:7];
            [stack printStack];
            expect([stack containsValue:5] && [stack containsValue:7]).to.beTruthy;
        });
        
        it(@"pushes new values onto the top of the stack", ^{
            [stack push:11];
            [stack push:13];
            [stack push:15];
            expect([stack pop]).to.equal(15);
        });
        
    });
        
    
>>>>>>> nsinteger-branch
    
    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
