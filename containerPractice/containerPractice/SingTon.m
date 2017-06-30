//
//  SingTon.m
//  containerPractice
//
//  Created by unbTech on 2017. 6. 30..
//  Copyright © 2017년 unbTech. All rights reserved.
//

#import "SingTon.h"


@interface SingTon ()

@end

@implementation SingTon

+ (instancetype)sharedSingleTon {
    
    static SingTon *data = nil;
    static dispatch_once_t oneceToken;
    
    dispatch_once(&oneceToken, ^{
        
        if (data == nil) {
            data = [[SingTon alloc] init];
        }
    });
    return data;
    
}

@end
