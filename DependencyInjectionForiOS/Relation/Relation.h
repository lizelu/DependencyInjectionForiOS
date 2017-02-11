//
//  Relation.h
//  DependencyInjectionForiOS
//
//  Created by ZeluLi on 2017/2/11.
//  Copyright © 2017年 zeluli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Relation : NSObject
- (instancetype)initWithPlistFileName: (NSString *) plistFileName;
- (NSObject *)getObjWithClassName:(NSString *) className;
@end
