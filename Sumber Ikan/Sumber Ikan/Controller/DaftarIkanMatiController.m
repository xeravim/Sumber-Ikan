//
//  DaftarIkanMatiController.m
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/29/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import "DaftarIkanMatiController.h"
#import "Item.h"
#import "ItemCategory.h"
@interface DaftarIkanMatiController (){
    SINavigationMenuView *menu;
}
@property (readwrite, nonatomic, strong) NSArray *items;
@property (strong, nonatomic) NSMutableDictionary *categorySections;
@property (strong, nonatomic) NSMutableArray *mutableCategories;
@property (strong, nonatomic) Item *selectedItem;
@end

@implementation DaftarIkanMatiController

- (void)reload:(__unused id)sender {
    
    NSURLSessionTask *task = [ItemCategory listCategoryWithBlock:^(NSArray *categories, NSError *error) {
        if (!error) {
            
        }
    }];
    task = [Item listDeadItemsWithBlock:^(NSArray *items, NSError *error) {
        if (!error) {
            [self populateData];
        }
        else{
            NSLog(@"%@",error);
        }
    }];
    
    [UIAlertView showAlertViewForTaskWithErrorOnCompletion:task delegate:nil];
    [self.refreshControl setRefreshingWithStateOfTask:task];
}
- (void)reloadItems{

    NSURLSessionTask *task = [Item listDeadItemsWithBlock:^(NSArray *items, NSError *error) {
        if (!error) {
            [self populateData];
        }
        else{
            NSLog(@"%@",error);
        }
    }];
    [UIAlertView showAlertViewForTaskWithErrorOnCompletion:task delegate:nil];
    [self.refreshControl setRefreshingWithStateOfTask:task];
}
//- (void)login:(id)sender{
//    NSURLSessionTask *task = [Credential Login:[SIConfig USERNAME] withPassword:[SIConfig PASSWORD] withBlock:^(Credential *credential, NSError *error){
//        [self reload:nil];
//    }];
//    [UIAlertView showAlertViewForTaskWithErrorOnCompletion:task delegate:nil];
//    [self.refreshControl setRefreshingWithStateOfTask:task];
//    
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initAppearance];
    
}
- (void)populateData{
    self.categorySections = [NSMutableDictionary dictionary];
    NSArray *categoriesFromResponse = [JsonManager getSavedJsonData:@"categories"];
    self.mutableCategories = [NSMutableArray arrayWithCapacity:[categoriesFromResponse count]];
    
    for (NSDictionary *attributes in categoriesFromResponse) {
        ItemCategory *category=[[ItemCategory alloc]initWithDictionary:attributes error:nil];
        [self.mutableCategories addObject:category];
        
    }
    
    NSArray *itemsFromResponse = [JsonManager getSavedJsonData:@"deadItems"];
    NSMutableArray *mutableItems = [NSMutableArray arrayWithCapacity:[itemsFromResponse count]];
    for (NSDictionary *attributes in itemsFromResponse) {
        Item *item=[[Item alloc]initWithDictionary:attributes error:nil];
        [mutableItems addObject:item];
    }
    
    
    for (ItemCategory *category in self.mutableCategories) {
        NSMutableArray *items = [self.categorySections objectForKey:category.name];
        if (items==nil) {
            items=[NSMutableArray new];
            [self.categorySections setObject:items forKey:category.name];
        }
        for (Item *item in mutableItems) {
            if ([item.categoryId isEqualToString:category.id]) {
                [items addObject:item];
            }
        }
    }
    [self.tableView reloadData];
    
}
- (void)initAppearance{

    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    [self.tableView setBackgroundColor:[SIConfig MediumDark]];
    CGRect frame = CGRectMake(0.0, 0.0, 200.0, self.navigationController.navigationBar.bounds.size.height);
    menu = [[SINavigationMenuView alloc] initWithFrame:frame title:@"Sumber Ikan"];
    [menu displayMenuInView:self.navigationController.view];
    menu.items = @[@"Sumber Ikan", @"Anfish"];
    menu.delegate = self;
    self.navigationItem.titleView = menu;
    self.refreshControl = [[UIRefreshControl alloc] init];
    self.refreshControl.tintColor=[UIColor whiteColor];
    self.tableView.contentOffset = CGPointMake(0, -self.refreshControl.frame.size.height);
    [self.refreshControl addTarget:self action:@selector(reloadItems) forControlEvents:UIControlEventValueChanged];
    NSDictionary* credential=[JsonManager getSavedJsonData:@"credential"];
    NSArray* items=[JsonManager getSavedJsonData:@"deadItems"];
    NSArray* categories=[JsonManager getSavedJsonData:@"categories"];
    if (credential[@"id"] && !items) {
        [self reload:nil];
    }
    else if (credential[@"id"] && items && categories){
        [self populateData];
    }
    else{
        
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)didSelectItemAtIndex:(NSUInteger)index
{
    [menu.menuButton.title setText:[menu.items objectAtIndex:index]];
}

- (void)setCurrentCategoryIndex:(NSInteger)currentCategoryTypeIndex
{
    _currentTokoTypeIndex = currentCategoryTypeIndex;
    switch (_currentTokoTypeIndex) {
        case 0:
            
            break;
        case 1:
            
            break;
        case 2:
            
            break;
        default:
            break;
    }
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.categorySections.count;
}

- (void)tableView:(UITableView *)tableView
  willDisplayCell:(UITableViewCell *)cell
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [cell setBackgroundColor:[SIConfig MediumDark]];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    ItemCategory *category=[self.mutableCategories objectAtIndex:section];
    NSMutableArray *items = [self.categorySections objectForKey:category.name];
    return items.count;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    ItemCategory *category=[self.mutableCategories objectAtIndex:indexPath.section];
    NSMutableArray *items = [self.categorySections objectForKey:category.name];
    Item *item=[Item new];
    item=[items objectAtIndex:indexPath.row];
    cell.textLabel.textColor = [UIColor whiteColor];
    [cell.textLabel setText:item.name];
    cell.detailTextLabel.textColor = [UIColor whiteColor];
    [cell.detailTextLabel setText:[NSString stringWithFormat:@"Rp. %@",[GlobalFunction changeCurrency:item.price]]];
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    ItemCategory *category=[self.mutableCategories objectAtIndex:section];
    return category.name;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ItemCategory *category=[self.mutableCategories objectAtIndex:indexPath.section];
    NSMutableArray *items = [self.categorySections objectForKey:category.name];
    Item *item=[Item new];
    item=[items objectAtIndex:indexPath.row];
    self.selectedItem=[Item new];
    self.selectedItem=item;
    UIAlertView *alertView=[[UIAlertView alloc]initWithTitle:[NSString stringWithFormat:@"Ubah Harga %@",item.name] message:[NSString stringWithFormat:@"Mohon input perubahan harga %@ dalam text yang tersedia",item.name] delegate:self cancelButtonTitle:@"Batal" otherButtonTitles:@"Ubah",nil];
    alertView.delegate=self;
    
    alertView.alertViewStyle=UIAlertViewStylePlainTextInput;
    UITextField *textField = [alertView textFieldAtIndex:0];
    textField.keyboardType = UIKeyboardTypeNumberPad;
    textField.placeholder=@"misal: 10000";
    [alertView show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex==1) {
        NSString *price = [[alertView textFieldAtIndex:0] text];
        [self updateItemPrice:price];
    }
    else{
        
    }
}

- (void)updateItemPrice :(NSString*)price{
    self.selectedItem.price=[price integerValue];
    [Item updateItem:self.selectedItem withID:self.selectedItem.id withBlock:^(Item *item, NSError *error){
        if (error) {
            NSLog(@"error");
        }
        else{
            [self reloadItems];
        }
    }];
}

@end
