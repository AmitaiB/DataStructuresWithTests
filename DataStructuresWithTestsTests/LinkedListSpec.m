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

    
    it(@"", ^{

    });  
    
    afterEach(^{
        linkedList = nil;
    });
    
    afterAll(^{

    });
});

SpecEnd
