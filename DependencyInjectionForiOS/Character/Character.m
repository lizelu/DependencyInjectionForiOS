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
    if (self.weapon != nil) {
        [self.weapon useWeapon];
    }
}
@end
