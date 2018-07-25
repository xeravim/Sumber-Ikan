//
//  CategoryController.m
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/28/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import "CategoryController.h"
#import "SIConfig.h"
@interface CategoryController ()

@end

@implementation CategoryController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAppearance];
}
- (void)initAppearance{
    UIImage *image = [UIImage imageNamed: @"logo.png"];
    UIImageView *imageview = [[UIImageView alloc] initWithImage: image];
    
    // set the text view to the image view
    self.navigationItem.titleView = imageview;
    [self.view setBackgroundColor:[SIConfig Dark]];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    _hidupButton.buttonColor = [SIConfig Green];
    _hidupButton.shadowColor = [SIConfig DarkGreen];
    _hidupButton.shadowHeight = 3.0f;
    _hidupButton.cornerRadius = 6.0f;
    _hidupButton.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [_hidupButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [_hidupButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    _matiButton.buttonColor = [SIConfig Green];
    _matiButton.shadowColor = [SIConfig DarkGreen];
    _matiButton.shadowHeight = 3.0f;
    _matiButton.cornerRadius = 6.0f;
    _matiButton.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    
}
- (IBAction)next:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
