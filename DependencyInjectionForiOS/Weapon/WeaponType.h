//
//  WeaponType.h
//  DependencyInjectionForiOS
//
//  Created by ZeluLi on 2017/2/11.
//  Copyright © 2017年 zeluli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeaponProtocol.h"
@interface WeaponType : NSObject<WeaponProtocol>
-(void)useWeapon;
@end
