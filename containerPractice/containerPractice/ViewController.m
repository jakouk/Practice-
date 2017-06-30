//
//  ViewController.m
//  containerPractice
//
//  Created by unbTech on 2017. 6. 30..
//  Copyright © 2017년 unbTech. All rights reserved.
//

#import "ViewController.h"
#import "CollectionContainerView.h"
#import "SingTon.h"

@interface ViewController ()

@property UIView *addView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.addView = [[UIView alloc] init];
    
    [SingTon sharedSingleTon].currentController = self;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)touchUpInsideAddButton:(UIBarButtonItem *)sender {
    
    NSLog(@"touchUpInsideAddButton");
    self.addView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.addView];
    [NSLayoutConstraint activateConstraints:@[
        [self.addView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
        [self.addView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20],
        [self.addView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20],
        [self.addView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20]
                                              
    ]];
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"CountainerViewTwo" bundle:nil];
    CollectionContainerView *collectionView = [storyBoard instantiateInitialViewController];
    [self addChildViewController:collectionView];
    collectionView.view.translatesAutoresizingMaskIntoConstraints = NO;

    [self.addView addSubview:collectionView.view];
    [NSLayoutConstraint activateConstraints:@[
        [collectionView.view.leadingAnchor constraintEqualToAnchor:self.addView.leadingAnchor],
        [collectionView.view.trailingAnchor constraintEqualToAnchor:self.addView.trailingAnchor],
        [collectionView.view.topAnchor constraintEqualToAnchor:self.addView.topAnchor],
        [collectionView.view.bottomAnchor constraintEqualToAnchor:self.addView.bottomAnchor]
    ]];
    
    [collectionView didMoveToParentViewController:self];
    
}


@end
