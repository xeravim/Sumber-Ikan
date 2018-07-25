//
//  HomeController.h
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/28/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FUIButton.h"

@interface HomeController : UIViewController
@property (strong, nonatomic) IBOutlet FUIButton *daftarButton;
@property (strong, nonatomic) IBOutlet FUIButton *tambahButton;
@property (strong, nonatomic) IBOutlet FUIButton *tentangButton;

@end
