//
//  Character.m
//  DependencyInjectionForiOS
//
//  Created by ZeluLi on 2017/2/11.
//  Copyright © 2017年 zeluli. All rights reserved.
//

#import "Character.h"

@interface Character()
@end

@implementation Character
- (void)fire {
    if (_weapon != nil) {
        [_weapon useWeapon];
    }
}
-(void)setWeapon:(WeaponType *)weapon{
    _weapon = weapon;
}
@end
