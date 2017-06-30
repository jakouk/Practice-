//
//  ViewController.m
//  realmPractice
//
//  Created by unbTech on 2017. 6. 5..
//  Copyright © 2017년 unbTech. All rights reserved.
//

#import "ViewController.h"
#import <Realm/Realm.h>
#import "BleHealthData.h"

@interface ViewController ()

@end

@implementation ViewController

RLMRealm *realm;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initData];
}

- (void) initData {
 
    realm = [RLMRealm defaultRealm];
    
    [self insertBleData];
    
    RLMResults<BleHealthData *> *bleList = [self getBleList];
    NSLog(@"bleList = %@",bleList);
    
}

/// bleData 반환
- (RLMResults<BleHealthData *> *) getBleList {
    RLMResults<BleHealthData *> *bleList = [BleHealthData allObjects];
    return bleList;
    
}

/// bleData 저장
- (void)insertBleData {
    
    BleHealthData *ble = [[BleHealthData alloc] init];
    ble.name = @"hello";
    ble.date = [NSDate new];
    
    [realm beginWriteTransaction];
    [realm addObject:ble];
    [realm commitWriteTransaction];
    
}

/// ble 삭제
- (void)deleteBleData {
    [realm beginWriteTransaction];
    RLMResults<BleHealthData *> *bleList = [BleHealthData allObjects];
    [realm deleteObject:[bleList objectAtIndex:0]];
    [realm commitWriteTransaction];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
