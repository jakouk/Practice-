//
//  SingTon.h
//  containerPractice
//
//  Created by unbTech on 2017. 6. 30..
//  Copyright © 2017년 unbTech. All rights reserved.
//

#import "ViewController.h"

@interface SingTon : NSObject

+ (instancetype)sharedSingleTon;

@property UIViewController *currentController;

@end
