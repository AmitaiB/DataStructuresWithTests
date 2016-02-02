//
//  BinarySearchTreeSpec.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 2/2/16.
//  Copyright 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Specta.h>
#import <Expecta.h>
#import "BinarySearchTree.h"


SpecBegin(BinarySearchTree)

describe(@"BinarySearchTree", ^{
    __block BinarySearchTree *tree;
    
    beforeAll(^{
        tree = [BinarySearchTree new];
    });
    
    beforeEach(^{

    });
    
    context(@"CREATION", ^{
       it(@"can be created", ^{
           expect(tree).toNot.beNil;
       });
        
        it(@"should be created empty", ^{
            expect([tree isEmpty]).to.beTruthy;
        });
    });
    
    context(@"ADDING and FINDING", ^{
        it(@"can add a value", ^{
            [tree addValue:4];
            expect([tree isEmpty]).to.beFalsy;
        });
        
        it(@"can find that value", ^{
            expect([tree containsValue:4]).to.beTruthy;
        });
        
        it(@"cannot find un-added values", ^{
            expect([tree containsValue:613]).to.beFalsy;
        });
        
        it(@"can add multiple values", ^{
            [tree addValue:2];
            [tree addValue:6];
            [tree addValue:0];
            [tree addValue:8];
            expect([tree containsValue:0] && [tree containsValue:2] && [tree containsValue:4] && [tree containsValue:6] && [tree containsValue:8]).to.beTruthy;
        });
    });
    
    
    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
