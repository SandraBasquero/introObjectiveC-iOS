//
//  SBSWineViewController.m
//  Baccus
//
//  Created by Sandra on 7/3/16.
//  Copyright (c) 2016 Sandra. All rights reserved.
//

#import "SBSWineViewController.h"


@implementation SBSWineViewController

-(id) initWithModel: (SBSWineModel*) aModel{
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        self.model = aModel;
    }
    return self;
}


// Sincronizamos modelo y vista
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
