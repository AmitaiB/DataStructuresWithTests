//
//  TreeSpec.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/31/16.
//  Copyright 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Specta.h>
#import <Expecta.h>
#import "Tree.h"


SpecBegin(Tree)

describe(@"Tree", ^{
    __block Tree *tree;
    beforeAll(^{
    });
    
    beforeEach(^{
        tree = [Tree new];
    });
    
    context(@"BASICS", ^{
        
        it(@"can be created", ^{
            expect(tree).toNot.beNil;
        });
    });
    
    context(@"IDENTITY", ^{
       it(@"has a root node", ^{
           SEL rootSEL = @selector(root);
           expect(tree).to.respondTo(rootSEL);
       });
        
        
        it(@"returns YES for isEmpty for new trees", ^{
            expect([tree isEmpty]).to.beTruthy;
        });
        
        it(@"returns NO for isEmpty for trees with a value", ^{
            [tree addValue:5];
            expect([tree isEmpty]).to.beFalsy;
        });

    });
    
    
    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
