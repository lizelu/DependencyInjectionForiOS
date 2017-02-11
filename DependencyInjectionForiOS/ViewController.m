//
//  ViewController.m
//  DependencyInjectionForiOS
//
//  Created by ZeluLi on 2017/2/11.
//  Copyright © 2017年 zeluli. All rights reserved.
//

#import "ViewController.h"
#import "Relation.h"
#import "Character.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)tapButton:(id)sender {
    Relation *context = [[Relation alloc] initWithPlistFileName:@"character"];
    Character *lieutenant = (Character *)[context getObjWithClassName:@"Lieutenant"];
    if (lieutenant != nil) {
        [lieutenant fire];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
