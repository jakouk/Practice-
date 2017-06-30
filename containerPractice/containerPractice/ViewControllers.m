//
//  ViewControllers.m
//  containerPractice
//
//  Created by unbTech on 2017. 6. 30..
//  Copyright © 2017년 unbTech. All rights reserved.
//

#import "ViewControllers.h"
#import "SingTon.h"

@interface ViewControllers ()

@end

@implementation ViewControllers

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [SingTon sharedSingleTon].currentController = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
