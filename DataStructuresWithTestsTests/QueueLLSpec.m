    //
    //  QueueLLSpec.m
    //  DataStructuresWithTests
    //
    //  Created by Amitai Blickstein on 1/28/16.
    //  Copyright 2016 Amitai Blickstein, LLC. All rights reserved.
    //

#import <Specta.h>
#import <Expecta.h>
#import "QueueLL.h"


SpecBegin(QueueLL)

describe(@"QueueLL", ^{
    __block QueueLL *queue;
    
    beforeAll(^{
        queue = [QueueLL new];
    });
    
    beforeEach(^{
        
    });
    context(@"initialization", ^{
        
        it(@"can be created", ^{
            expect(queue).toNot.beNil;
        });
        
    });
    
    context(@"testing en/dequeue methods", ^{
        
        it(@"can enqueue a value", ^{
            [queue enqueue:3];
            expect([queue containsValue:3]).to.beTruthy;
        });
        
        it(@"can enqueue multiple values", ^{
            [queue enqueue:5];
            [queue enqueue:7];
            [queue printQueue];
            expect([queue containsValue:5] && [queue containsValue:7]).to.beTruthy;
        });
        
        it(@"dequeue will follow FIFO order", ^{
            [queue enqueue:4];
            [queue enqueue:6];
            expect([queue containsValue:6] && [queue peek] == 4).to.beTruthy;
        });
                
    });
    
    context(@"testing MISC methods", ^{
        
        it(@"can remove all values with removeAll()", ^{
            [queue enqueue:111];
            [queue enqueue:222];
            [queue enqueue:333];
            [queue removeAll];
            expect(queue.isEmpty).to.beTruthy;
            
        });
        
        it(@"can peek at a value without altering it", ^{
            
        });
    });
    
    
    
    afterEach(^{
        
    });
    
    afterAll(^{
        
    });
});

SpecEnd
