//
//  Character.h
//  DependencyInjectionForiOS
//
//  Created by ZeluLi on 2017/2/11.
//  Copyright © 2017年 zeluli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeaponType.h"
@interface Character : NSObject
@property (nonatomic, strong) WeaponType *weapon;
- (void)fire;
@end
