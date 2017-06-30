//
//  CollectionContainerView.m
//  containerPractice
//
//  Created by unbTech on 2017. 6. 30..
//  Copyright © 2017년 unbTech. All rights reserved.
//

#import "CollectionContainerView.h"
#import "DetailTableViewCell.h"
#import "SingTon.h"

@interface CollectionContainerView () < UITableViewDelegate, UITableViewDataSource >

@property (weak, nonatomic) IBOutlet UITableView *oneTable;
@property (weak, nonatomic) IBOutlet UITableView *twoTable;


@end

@implementation CollectionContainerView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.oneTable.delegate = self;
//    self.oneTable.dataSource = self;
//    
//    self.twoTable.delegate = self;
//    self.twoTable.dataSource = self;
    [self.oneTable registerClass:[DetailTableViewCell self] forCellReuseIdentifier:@"Cell"];
    [self.twoTable registerClass:[DetailTableViewCell self] forCellReuseIdentifier:@"Cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"Cell";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    cell.textLabel.text = [[NSString alloc] initWithFormat:@"%ld",indexPath.row];
    return cell;
}

@end
