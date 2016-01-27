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
    
//    beforeAll(^{
//    });
    
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

    it(@"adding a value to the FRONT of an empty list creates a node that becomes the head and tail of the list", ^{
        if (linkedList.isEmpty) {
            [linkedList addToFront:@(6)];
        }
        expect(linkedList.head.value).to.equal(@(6));
        expect(linkedList.head).to.beIdenticalTo(linkedList.tail);
    });
    
    it(@"adding a value to the BACK of an empty list creates a node that becomes the head and tail of the list", ^{
        if (linkedList.isEmpty) {
            [linkedList addToBack:@(7)];
        }
        expect(linkedList.head.value).to.equal(7);
        expect(linkedList.head).to.beIdenticalTo(linkedList.tail);
    });
    
//    it(@"removeFromBack will remove the last item, and decrement the count", ^{
    it(@"removeFromBack will remove the last item", ^{
        [linkedList addToFront:@(7)];
        [linkedList addToFront:@(5)];
        [linkedList addToFront:@(3)];
        
        [linkedList removeFromBack];
        [linkedList printList];
        expect(linkedList.tail.value).to.equal(@(5));
    });
    
    it(@"will be empty after RemoveAll is called", ^{
        [linkedList addToFront:@(6)];
        [linkedList addToFront:@(4)];
        [linkedList addToFront:@(2)];
        [linkedList removeAll];
        expect(linkedList.isEmpty).to.beTruthy;
    });
    
    afterEach(^{
        linkedList = nil;
    });
    
//    afterAll(^{
//
//    });
});

SpecEnd
