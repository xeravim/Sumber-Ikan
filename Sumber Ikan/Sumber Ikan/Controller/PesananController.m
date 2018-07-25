//
//  PesananController.m
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/29/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import "PesananController.h"

@interface PesananController ()

@end

@implementation PesananController

- (void)viewWillAppear:(BOOL)animated{
    NSString *pesanan = [[NSUserDefaults standardUserDefaults]
                            stringForKey:@"pesanan"];
    self.pesanan.text=pesanan;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[SIConfig MediumDark]];
    [self.pesanan setUserInteractionEnabled:YES];
    self.navigationItem.rightBarButtonItem =
    [[UIBarButtonItem alloc]
      initWithBarButtonSystemItem:UIBarButtonSystemItemDone
      target:self
      action:@selector(done:)];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification object:nil];
}

- (void)done:(id)sender{
    NSString *pesanan = self.pesanan.text;
    [[NSUserDefaults standardUserDefaults] setObject:pesanan forKey:@"pesanan"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [self.pesanan resignFirstResponder];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UITextViewDelegate

- (void)textViewDidChange:(UITextView *)textView {
    [self _showTextViewCaretPosition:textView];
}

- (void)textViewDidChangeSelection:(UITextView *)textView {
    [self _showTextViewCaretPosition:textView];
}


- (void)_showTextViewCaretPosition:(UITextView *)textView {
    CGRect caretRect = [textView caretRectForPosition:self.pesanan.selectedTextRange.end];
    [textView scrollRectToVisible:caretRect animated:NO];
}


#pragma mark - Keyboard notifications

- (void)keyboardWillShow:(NSNotification *)notification {
    CGRect keyboardFrame = [[notification.userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    NSTimeInterval animationDuration = [[notification.userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    
    BOOL isPortrait = UIDeviceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation);
    CGFloat keyboardHeight = isPortrait ? keyboardFrame.size.height : keyboardFrame.size.width;
    
    UIEdgeInsets contentInset = self.pesanan.contentInset;
    contentInset.bottom = keyboardHeight;
    
    
    UIEdgeInsets scrollIndicatorInsets = self.pesanan.scrollIndicatorInsets;
    scrollIndicatorInsets.bottom = keyboardHeight;
    
    [UIView animateWithDuration:animationDuration animations:^{
        self.pesanan.contentInset = contentInset;
        self.pesanan.scrollIndicatorInsets = scrollIndicatorInsets;
    }];
}

- (void)keyboardWillHide:(NSNotification *)notification {
    NSTimeInterval animationDuration = [[notification.userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    
    UIEdgeInsets contentInset = self.pesanan.contentInset;
    contentInset.bottom = 0;
    
    UIEdgeInsets scrollIndicatorInsets = self.pesanan.scrollIndicatorInsets;
    scrollIndicatorInsets.bottom = 0;
    
    [UIView animateWithDuration:animationDuration animations:^{
        self.pesanan.contentInset = contentInset;
        self.pesanan.scrollIndicatorInsets = scrollIndicatorInsets;
    }];
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
