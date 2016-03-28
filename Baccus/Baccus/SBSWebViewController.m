//
//  SBSWebViewController.m
//  Baccus
//
//  Created by Sandra on 13/3/16.
//  Copyright © 2016 Sandra. All rights reserved.
//

#import "SBSWebViewController.h"


@implementation SBSWebViewController

-(id)initWithModel: (SBSWineModel*) aModel {
    if (self = [super initWithNibName:nil
                              bundle:nil]) {
        self.model = aModel;
    }
    return self;
}


-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self displayURL:self.model.wineCompanyWeb];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebViewDelegate

-(void) webViewDidFinishLoad:(UIWebView *)webView {
    [self.activityView stopAnimating];
    self.activityView.hidden = YES;
}


#pragma mark - Utils

-(void) displayURL: (NSURL*) aURL {
    self.browser.delegate = self;
    self.activityView.hidden = NO;
    [self.activityView startAnimating];
    [self.browser loadRequest:[NSURLRequest requestWithURL:aURL]];
}

@end
