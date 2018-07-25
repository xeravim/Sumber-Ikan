//
//  HomeController.m
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/28/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import "HomeController.h"
#import "UIFont+FlatUI.h"
#import "UIColor+FlatUI.h"
#import "SIConfig.h"
@interface HomeController ()

@end

@implementation HomeController

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
    _daftarButton.buttonColor = [SIConfig Green];
    _daftarButton.shadowColor = [SIConfig DarkGreen];
    _daftarButton.shadowHeight = 3.0f;
    _daftarButton.cornerRadius = 6.0f;
    _daftarButton.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [_daftarButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [_daftarButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    _tambahButton.buttonColor = [SIConfig Green];
    _tambahButton.shadowColor = [SIConfig DarkGreen];
    _tambahButton.shadowHeight = 3.0f;
    _tambahButton.cornerRadius = 6.0f;
    _tambahButton.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [_tambahButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [_tambahButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    _tentangButton.buttonColor = [SIConfig Green];
    _tentangButton.shadowColor = [SIConfig DarkGreen];
    _tentangButton.shadowHeight = 3.0f;
    _tentangButton.cornerRadius = 6.0f;
    _tentangButton.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [_tentangButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [_tentangButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
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
