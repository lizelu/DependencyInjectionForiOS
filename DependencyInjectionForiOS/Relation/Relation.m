//
//  Relation.m
//  DependencyInjectionForiOS
//
//  Created by ZeluLi on 2017/2/11.
//  Copyright © 2017年 zeluli. All rights reserved.
//

#import "Relation.h"
#define ClassNameKey @"ClassName"
#define RelationClassNameKey @"RelationClassName"
#define RelationPropertyKey @"RelationProperty"
@interface Relation()
@property (nonatomic, strong) NSDictionary *infoPlist;
@end

@implementation Relation
- (instancetype)initWithPlistFileName: (NSString *) plistFileName
{
    self = [super init];
    if (self) {
        [self loadInfoPlistData:plistFileName];
    }
    return self;
}

- (void)loadInfoPlistData:(NSString *) plistFileName{
    NSString *path = [[NSBundle mainBundle] pathForResource:plistFileName ofType:@".plist"];
    self.infoPlist = [NSDictionary dictionaryWithContentsOfFile:path];
    NSLog(@"%@", self.infoPlist);
}

- (NSObject *)getObjWithClassName:(NSString *) className {
    if (self.infoPlist == nil) {
        return nil;
    }
    
    NSDictionary *classInfo = [_infoPlist objectForKey:className];
    if (classInfo == nil) {
        return nil;
    }
    
    NSString *targetClassName = [classInfo objectForKey:ClassNameKey];
    NSString *relationClassName = [classInfo objectForKey:RelationClassNameKey];
    NSString *relationPropertyName = [classInfo objectForKey:RelationPropertyKey];
    if (targetClassName == nil || relationClassName == nil || relationPropertyName == nil) {
        return nil;
    }
    
    Class TagetClass = NSClassFromString(targetClassName);
    Class RelationClass = NSClassFromString(relationClassName);
    
    NSObject *targetObj = [[TagetClass alloc] init];
    NSObject *relationObj = [[RelationClass alloc] init];
    if (targetObj == nil || relationObj == nil) {
        return nil;
    }
    
    NSString *setSelectorString = [NSString stringWithFormat:@"set%@:", relationPropertyName.capitalizedString];
    SEL setSelector = NSSelectorFromString(setSelectorString);
    
    if ([targetObj respondsToSelector:setSelector]) {
        [targetObj performSelectorInBackground:setSelector withObject:relationObj];
    }
    
    
    return nil;
}
@end
