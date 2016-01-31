//
//  StackArrSpec.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/29/16.
//  Copyright 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Specta.h>
#import <Expecta.h>
#import "StackArr.h"


SpecBegin(StackArr)

describe(@"StackArr", ^{
    __block StackArr *stack;
    
    beforeAll(^{
        stack = [StackArr new];
    });
    
//    beforeEach(^{
//        
//    });

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
        
        /**
         *  These three tests each pass by itself, but fails as part of the group. Why???
         */
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
        
        context(@"testing MISC methods", ^{
            
            it(@"can remove all values with removeAll()", ^{
                [stack push:111];
                [stack push:222];
                [stack push:333];
                [stack removeAll];
                expect(stack.isEmpty).to.beTruthy;
                
            });
            
            it(@"can peek at a value without altering it", ^{
                /**
                 *  TODO:
                 */
            });
        });

        
    });
    
//    afterEach(^{
//    });
//    
//    afterAll(^{
//    });
});

SpecEnd
