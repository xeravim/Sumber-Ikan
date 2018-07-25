//
//  DaftarIkanController.h
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/28/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIRefreshControl+AFNetworking.h"
#import "UIAlertView+AFNetworking.h"
#import "UIImageView+AFNetworking.h"
#import "SINavigationMenuView.h"
#import "GlobalFunction.h"
@interface DaftarIkanController : UITableViewController<SINavigationMenuDelegate,UIAlertViewDelegate>
@property (strong, nonatomic) NSArray *tokoTypes;
@property (assign, nonatomic) NSInteger currentTokoTypeIndex;
@property (strong, nonatomic) UIButton *categoryButton;
@property (strong, nonatomic) UITableView *menuTableView;

@end
