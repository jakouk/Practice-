//
//  BleHealthData.h
//  realmPractice
//
//  Created by unbTech on 2017. 6. 5..
//  Copyright © 2017년 unbTech. All rights reserved.
//

#import <Realm/Realm.h>

@interface BleHealthData : RLMObject

@property NSString *name;
@property NSDate *date;

@end
