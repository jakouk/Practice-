//
//  CountainViewController.m
//  containerPractice
//
//  Created by unbTech on 2017. 6. 30..
//  Copyright © 2017년 unbTech. All rights reserved.
//

#import "CountainViewController.h"
#import "SingTon.h"
#import "ViewController.h"
#import "CollectionContainerView.h"

@interface CountainViewController ()

@end

@implementation CountainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [button addTarget:self action:@selector(touchUpInsideView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchUpInsideView:(UIButton *)sender {
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"CountainerViewTwo" bundle:nil];
    CollectionContainerView *collectionView = [storyBoard instantiateInitialViewController];
    [[SingTon sharedSingleTon].currentController addChildViewController:collectionView];
    collectionView.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    [[SingTon sharedSingleTon].currentController.view addSubview:collectionView.view];
    
    NSInteger screenSize = self.view.frame.size.height;
    CGFloat constraint;
    
    if ( screenSize == 325) {
        constraint = 20;
    } else if ( screenSize == 375 ) {
        constraint = 30;
    } else {
        constraint = 40;
    }
    
    [NSLayoutConstraint activateConstraints:@[
                                              [collectionView.view.leadingAnchor constraintEqualToAnchor:[SingTon sharedSingleTon].currentController.view.leadingAnchor constant:constraint],
                                              [collectionView.view.trailingAnchor constraintEqualToAnchor:[SingTon sharedSingleTon].currentController.view.trailingAnchor constant:-constraint],
                                              [collectionView.view.topAnchor constraintEqualToAnchor:[SingTon sharedSingleTon].currentController.view.topAnchor constant:constraint+20],
                                              [collectionView.view.bottomAnchor constraintEqualToAnchor:[SingTon sharedSingleTon].currentController.view.bottomAnchor constant:-constraint-2]
                                              ]];
    
    [collectionView didMoveToParentViewController:[SingTon sharedSingleTon].currentController];

    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
