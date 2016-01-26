//
//  LinkedListSpec.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/26/16.
//  Copyright 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Specta.h>
#import <Expecta.h>
#import "LinkedList.h"


SpecBegin(LinkedList)

describe(@"LinkedList", ^{
    __block LinkedList *linkedList;
    
    beforeAll(^{
        NSInteger firstValue = 3;
        NSInteger secondValue = 5;
        NSInteger thirdValue = 7;


    });
    
    beforeEach(^{
        linkedList = [LinkedList new];
    });
    
    it(@"can be created", ^{
        expect(linkedList).toNot.beNil();
    });

    
    it(@"has a head property of type Node", ^{
        linkedList.head = [Node new];
        expect([linkedList.head class]).to.equal(NSClassFromString(@"Node"));
    });  

    it(@"has a tail property of type Node", ^{
        linkedList.tail = [Node new];
        expect([linkedList.tail class]).to.equal(NSClassFromString(@"Node"));
    });

    it(@"adding a value to an empty list creates a node that becomes the head and tail of the list", ^{
        if (linkedList.isEmpty) {
            [linkedList addToFront:6];
        }
        expect(linkedList.head.value).to.equal(6);
        expect(linkedList.head).to.beIdenticalTo(linkedList.tail);
    });
    
    afterEach(^{
        linkedList = nil;
    });
    
    afterAll(^{

    });
});

SpecEnd
