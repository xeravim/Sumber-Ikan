# betway-ios

## 1. System Architecture (Figure)

#### Please refer to the architecture diagram :
<br><img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Architecture/Betway_Architecture.png?raw=true" width = "250">
=======
#### Please refer to the architecture diagram! [Architect] (http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/Betway_Architecture.png)
>>>>>>> e5564465ee7cab4d60a5526dbd765fbdf32ab026


## 2. Description of each module
### Home
<<<<<<< HEAD
#### 1 ViewControllers
<br><img src = "https://github.com/xeravim/Sumber-Ikan/raw/branch/master/Screenshot/Welcome/Welcome.png" width = "250">
=======
#### 1 ViewControllers![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/mainpage.png)
>>>>>>> e5564465ee7cab4d60a5526dbd765fbdf32ab026
##### 1.1MainBannerCell![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/mainpage%20top.png)
##### 1.2SYTableViewCell![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/mainpage.png)
### Games Lobby
#### 2 GameHallViewController![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/GameHallViewController.png)
#### 3 Game Tab (except my favorite) GameListViewController![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/GameListViewController.png)
#### 4 My favorite tab catalogViewController ![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/catalogViewController.png)
#### 5 Show all checkAllViewController ![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/checkAllViewController.png)
#### 6 Game page gameCenterViewController ![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/gameCenterViewController.png)
##### 6.1 SideBarMenuView![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/SideBarMenuView.png)
#### 7 In-game offer GameHallDiscountListViewController![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/GameHallDiscountListViewController.png)
### Offers
#### 1 DiscountPageViewController![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/DiscountPageViewController.png)
##### 1.1 PageViewController![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/PageViewController.png)
#### 2.ApplicationGuidanceViewController ![layout](http://gitea.funpodium.net/youkoka/betway-ios-fork/src/commit/dcdb4f7027ca420232e3ed1aada5be1e1b668bf9/ReadmeResource/ApplicationGuidanceViewController.png)
#### 3.ApplicationFormViewController ![layout](http://gitea.funpodium.net/youkoka/betway-ios-fork/src/commit/dcdb4f7027ca420232e3ed1aada5be1e1b668bf9/ReadmeResource/ApplicationFormViewController.png)
<<<<<<< HEAD
### Pig Page
=======
### 小猪页
>>>>>>> e5564465ee7cab4d60a5526dbd765fbdf32ab026
#### DepositPageViewController (framework)
        • UIView *headView -> upper block
        • UIImageView *headBGImg -> Background of the upper block
        • UIButton *topCloseBtn -> close button
        • UILabel *mainAccountLab -> Master Account
        • UIButton *refreshBtn -> refresh button
        • UIView *moneyView -> RMBLab superView
        • UILabel *RMBLab -> RMB typeface
        • UILabel *moneyLab -> balance
        • UIButton *depositBtn -> deposit
        • UIButton *transferBtn -> Transfer
        • DLLRUCache *cache -> tab cache
        • DLScrollTabbarItem *item -> tab component
        • DLCustomSlideView *slideView -> Inner page of the tab
        • DLScrollTabbarView *tabbar -> tab block
#### 1. Deposit
##### 1.1 CouponView (coupon)
        • UIButton *checkBox -> Use the coupon checkmark
        • UILabel *titleLable -> Coupon Title
        • UILabel *contentLable -> coupon content
        • UITextField *couponField -> Coupon input匡
        • UILabel *tipsLable -> Coupon Tips
        • UILabel *warningLable -> Application Amount Tip
##### 1.2 LocalBankAndAlipayView (local bank)
        • UIScrollView *myScrollView -> container
        • UIButton *remindBtn -> Warm reminder
        • UILabel *dateLab -> arrival time
        • UIButton *localBankTransferInformationBtn -> Local Bank Transfer Information
        • UILabel *depositAmountLab -> deposit amount
        • UITextField *amountTF -> Deposit amount input匡
        • UIView *amountTFLine -> Enter the bottom line underneath
        • UILabel *explainLab -> deposit reminder message
        • UIView *btnView -> Quick selection amount
        • UILabel *bankTypeLab -> Transfer method
        • UITextField *bankTypeTF -> Transfer mode input匡
        • UIView *bankTypeTFLine -> Transfer mode input bottom line
        • UILabel *bankLab -> Bank Selection
        • UITextField *bankTF -> Bank Select Input匡
        • UIView *bankTFLine -> Bank selection input bottom line
        • UILabel *payerNameLab -> Payer Name
        • UITextField *payNameTF -> Payer Name Entry匡
        • UIButton *submitBtn -> submit button
        • UILabel *promptLab -> Please submit the application message after successful "deposit" or "transfer"
##### 1.3 QQPayView (QQ payment)
        • UIScrollView *myScrollView -> container
        • UIButton *remindBtn -> Warm reminder
        • UILabel *depositAmountLab -> deposit amount
        • UITextField *amountTF -> Amount input匡
        • UIView *amountTFLine -> input bottom line
        • UILabel *explainLab -> Deposit Amount Tip
        • UIView *btnView -> Quick selection amount
        • UILabel *actualAmountTitleLab -> Available Amount Title
        • UILabel *actualAmountLab -> Amount available
        • UIButton *goDepositBtn -> Deposit Now
##### 1.4 CloudFlashPaymentView (Cloud Flash Pay)
        • UIScrollView *myScrollView -> container
        • UIButton *remindBtn -> Warm reminder
        • UILabel *depositAmountLab -> deposit amount
        • UITextField *amountTF -> Amount input匡
        • UIView *amountTFLine -> input bottom line
        • UILabel *explainLab -> Deposit Amount Tip
        • UIView *btnView -> Quick selection amount
        • UILabel *actualAmountTitleLab -> Available Amount Title
        • UILabel *actualAmountLab -> Amount available
        • UIButton *goDepositBtn -> Deposit Now
##### 1.5 JDWalletView (Jingdong Wallet)
        • UIScrollView *myScrollView -> container
        • UIButton *remindBtn -> Warm reminder
        • UILabel *depositAmountLab -> deposit amount
        • UITextField *amountTF -> Amount input匡
        • UIView *amountTFLine -> input bottom line
        • UILabel *explainLab -> Deposit Amount Tip
        • UIView *btnView -> Quick selection amount
        • UILabel *actualAmountTitleLab -> Available Amount Title
        • UILabel *actualAmountLab -> Amount available
        • UIButton *goDepositBtn -> Deposit Now
##### 1.6 BetwayCardPayView (Briva Card)
        • UIScrollView *myScrollView -> container
        • UIButton *remindBtn -> Warm reminder
        • UILabel *dateLab -> arrival time
        • UILabel *cardSerialNumberLab -> BV Card Serial Number
        • UITextField *cardSerialNumberTF -> BV Card serial number input匡
        • UIView *cardSerialNumberTFLine -> BV card serial number input bottom line
        • UILabel *cardSerialNumberHintLab -> BV card serial number input 匡 prompt
        • UILabel *cardCipherLab -> BV Card Password
        • UITextField *cardCipherTF -> BV Card Password Input匡
        • UIView *cardCipherTFLine -> BV Card Password Input Bottom Line
        • UILabel *cardCipherHintLab -> BV Card Password Input Tips
        • UILabel *depositAmountLab -> deposit amount
        • UITextField *amountTF -> Amount input匡
        • UIView *amountTFLine -> input bottom line
        • UILabel *explainLab -> Deposit Amount Tip
        • UIView *btnView -> Quick selection amount
        • UIButton *goDepositBtn -> Deposit Now
#### 2. Transfer
##### 2.1 MyCouponView (exclusive coupon)
        • UILabel *contentLable -> coupon content
        • UITextField *couponField -> Coupon input匡
        • UILabel *tipsLable -> Coupon Tips
        • UILabel *warningLable -> Application Amount Tip
##### 2.2 TransferAccountsView
        • UIScrollView *myScrollView -> container
        • UIButton *remindBtn -> Warm reminder
        • UILabel *sourceAccountLab -> from account
        • UILabel *sourceAccountMoney -> from account balance
        • UITextField *sourceAccountTF -> from the target account input匡
        • UIView *sourceAccountTFLine -> Target account input bottom line
        • UILabel *targetAccountLab -> target account
        • UILabel *targetAccountMoney -> target account balance
        • UITextField *targetAccountTF -> Target account input匡
        • UIView *targetAccountTFLine -> target account bottom line
        • UILabel *amountLab -> Transfer amount
        • UITextField *amountTF -> Transfer amount input 匡
        • UIView *amountTFLine -> Transfer amount input to the bottom line
        • UILabel *lbTransferHint -> Transfer Amount Tip
        • UIButton *goDepositBtn -> Transfer Now
##### 2.3 TransferSuccessViewController
        • UIScrollView *myScrollView -> container
        • UIImageView *alertImgView -> success icon
        • UILabel *titleLab -> title
        • UILabel *alertLab -> prompt message
        • UIButton *personalCenterBtn -> Close
##### 2.4 BonusItemView
        • UIView *topView -> upper block
        • UIView *centerView -> middle block
        • UIView *bottomView -> lower block
        • UITextField *couponField -> Coupon Code Entry匡
##### 2.5 UnfinishedGameHeaderView
        • UILabel *lbPlatform -> Classification of unfinished games
##### 2.6 UnfinishedGamesPromptViewController
        • NSLayoutConstraint *FakeNavgationBarHeight -> the height of the custom day
        • UIButton *backButton -> return button
        • UITableView *tableView -> Unfinished game list
##### 2.7 UnfinishedGameCell
        • UIImageView *imgGame -> Game Preview
        • UILabel *lbGameTitle -> Game Name
###### 2.8 ReminderPageViewController
        • UIScrollView *myScrollView -> container
        • UILabel *DepositRestrictionLab -> Deposit Limit
        • UILabel *DepositRestrictionContentLab -> Deposit Limit Prompt Content
        • UILabel *RemindYouLab -> Remind you
        • UILabel *RemindYouContentLab -> Remind you of the content
##### 2.9 RealNameViewController
        • UIScrollView *myScrollView -> container
        • UIImageView *alertImgView -> prompt map
        • UILabel *alertLab -> prompt message
        • UILabel *realNameLab -> real name
        • UITextField *realNameTF -> Real Name Input匡
        • UIView *realNameTFLine -> real name input bottom line
        • UILabel *realNameWordingLab -> real name prompt
        • UIButton *sendRealNameBtn -> send out
        • UILabel *pageWordingLab -> Prompt that the real name can only be entered once
##### 2.10 RealNameSuccessViewController
        • UIScrollView *myScrollView -> container
        • UIImageView *alertImgView -> success icon
        • UILabel *titleLab -> Success Title
        • UILabel *alertLab -> success message
        • UIButton *personalCenterBtn -> Close
##### 2.11 NeedCompletedPersonalDataViewController
        • UIScrollView *myScrollView -> container
        • UIImageView *alertImgView -> prompt map
        • UILabel *alertLab -> prompt message
        • UIButton *personalCenterBtn -> Close
### Message
#### 1. MessageViewController
        • DLLRUCache *cache -> tab cache
        • DLScrollTabbarItem *item -> tab component
        • DLCustomSlideView *slideView -> Inner page of the tab
        • DLScrollTabbarView *tabbar -> tab block
        • YTDropMenu *dropMenu -> drop down menu
#### 2. MessageTableViewViewController
        • UITableView *tableView -> message list
        • UIRefreshControl *refreshControl -> pulldown refresh component
#### 3.MessageTableViewCell
        • UIView *isRead -> unread red dot
        • UILabel *typeLab -> message category
        • UILabel *dateLab -> message date
        • UILabel *titleLab -> message title
#### 4.MessageDetailsViewController
        • UIScrollView *myScrollView -> container
        • UILabel *typeLab -> message category
        • UILabel *dateLab -> message date
        • UILabel *titleLab -> message title
        • UIView *lineView -> divider
        • UILabel *contenLab -> message content
### Member Centre
#### 1. MemberCenterViewController
        • UITableView *tableView -> list
        • UIView *tabeViewHeadView -> top view
#### 2. UpdateVersionView
        • UILabel *titleLab -> prompt message
        • UIButton *btnUpdate -> update button
        • UILabel *versionLab -> version number
#### 3. NotLoginTableViewCell
        • UIView *topLine -> top divider
        • UIView *bottomLine -> bottom divider
        • UIImageView *imgView -> icon
        • UILabel *titleLab -> title
        • UIImageView *rightView -> (>) icon
        • UIView *cellLine -> cell divider
        • UISwitch *rightSwitch -> switch
        • UILabel *lbBadge -> Announcement Unread
#### 4. AlreadyLoginSectionFirstTableViewCell (first block)
        • UIImageView *moneyImgView -> icon
        • UILabel *mainBalanceLab -> Master Account Balance
        • UILabel *mainBalanceMoneyLab -> Amount of the primary account balance
        • UIButton *refreshBalancesBtn -> refresh button
        • UIView *mainBalanceLine -> separator line below the main account balance block
        • UIButton *rechargeBtn -> Recharge
        • UILabel *sportsBalanceLab -> Sports Account Balance
        • UILabel *sportsBalanceMoneyLab -> Amount of sports account balance
        • UIView *sportsBalanceLine -> Dividing line under the bottom balance of the sports account
        • UILabel *realPersonBalanceLab -> Live Account Balance
        • UILabel *realPersonBalanceMoneyLab -> Amount of live account balance
        • UIView *realPersonBalanceLine -> Divider under the real account balance
        • UILabel *gameBalanceLab -> Game Account Balance
        • UILabel *gameBalanceMoneyLab -> Amount of game account balance
        • UIView *gameBalanceLine -> separator line under the game account balance
        • UILabel *PTgameBalanceLab -> PT Game Account Balance
        • UILabel *PTgameBalanceMoneyLab -> Amount of PT game account balance
        • UIView *PTgameBalanceLine -> Divide line under the PT game account balance
#### 5.AlreadyLoginSectionSecondTableViewCell (Second Block)
        • UIView *topLine -> top line
        • UIView *bottomLine -> bottom line
        • UIImageView *imgView -> icon on the left
        • UILabel *titleLab -> title
        • UIImageView *rightView -> icon to the right
        • UIView *cellLine -> divider
        • UISwitch *rightSwitch -> switch
        • UILabel *lbBadge -> Announcement Unread
#### 6.AlreadyLoginSectionThirdTableViewCell (third block)
        • UIView *topLine -> top line
        • UIView *bottomLine -> bottom line
        • UIImageView *imgView -> icon on the left
        • UILabel *titleLab -> title
        • UIImageView *rightView -> icon to the right
        • UIView *cellLine -> divider
#### 7.AlreadyLogginHeadView
        • UIImageView *topImgView -> background image
        • UIButton *headBtn -> default avatar
        • UIView *btnView -> Edit Profile Block
        • UILabel *userLab -> User
        • UILabel *editSelfLab -> Edit Profile
        • UIButton *editBtn -> edit button
        • UIButton *arrowBtn -> (>) button
#### 8.AlreadyLogginFootView
        • UILabel *titleLab -> reminder at the bottom
        • UIButton *logoutBtn -> Exit account
        • UpdateVersionView *updateVersionView -> version information
#### 9.NotLoginHeadView
        • UIImageView *topImgView -> background image
        • UIButton *headBtn -> default avatar
        • UIView *btnView -> Login/Registered Blocks
        • UILabel *loginLab -> Login / Registration button
#### 10.PTPasswordManagementViewController
        • PTPasswordManagementView *passwordManagementView -> Game Password Management inside page
        • UIButton *registBtn -> Register or save
##### 10.1 PTPasswordManagementView
        • UIView *bgView -> background
        • UILabel *userNameLab -> PT game username
        • UILabel *prefixUserLab -> bw8_
        • UITextField *userNameTF -> Username input匡
        • UIView *userNameTFLine -> Username input bottom line
        • UILabel *ptPasswordLab -> PT game download password
        • UITextField *ptPasswordTF -> Password input匡
        • UIView *ptPasswordTFLine -> password input bottom line
        • UILabel *surePtPasswordLab -> Confirm PT game download password
        • UITextField *surePtPasswordTF -> Confirm password input匡
        • UIView *surePtPasswordTFLine -> Confirm password input bottom line
        • UILabel *noteLab -> prompt message below
        • UILabel *userNameWarnningLabel -> Account Error Reminder
        • UILabel *passwordWarnningLabel -> Password Error Reminder
        • UILabel *confirmPasswordWarnningLabel -> Confirm password error reminder
#### 11. EditPersonalDataViewController
        • EditPersonDataView *editPersonDataView -> Edit Profile Page
##### 11.1 EditPersonDataView
        • UIScrollView *myScrollView -> container
        • UIView *personDataView -> Profile Block
        • UILabel *realNameLab -> real name
        • UITextField *realNameTF -> Real Name Input匡
        • UIView *realNameTFLine -> real name input bottom line
        • UILabel *lbHintOfRealName -> Real Name Error Reminder
        • UILabel *IDNumberLab -> ID card number
        • UITextField *IDNumberTF -> ID card number input匡
        • UIView *IDNumberTFLine -> ID card number input bottom line
        • UILabel *lbHintOfIDNumber -> Identity card error notification
        • UILabel *genderLab -> Gender
        • UITextField *genderTF -> Gender input匡
        • UIView *genderTFLine -> gender input bottom line
        • UILabel *birthDateLab -> birthday
        • UITextField *birthDateTF -> Birthday input匡
        • UIView *birthDateTFLine -> birthday input bottom line
        • UIView *contactDataView -> Contact Message Block
        • UIImageView *contactDataMessageImgView -> icon for verifying mail and phone number...
        • UILabel *emailAddressLab -> email address
        • UIView *emailAddressTVView -> Email address input 匡 block
        • CMInputView *emailAddressTV -> Email address input匡
        • UILabel *lbEmailAddress -> Email address (filled in will display the user's email here)
        • UIButton *submitAddressBtn -> verification button
        • UIImageView *isAddressImgView -> Green check for email verification
        • UIView *emailAddressTVLine -> Email address input bottom line
        • UILabel *lbHintOfEmailAddress -> Email address error message
        • UILabel *areaCodeLab -> country code
        • UILabel *telNumberLab -> Contact Phone
        • UIView *telNumberView -> Contact Phone Input 匡 Block
        • UITextField *telNumberTF -> Contact Phone Input匡
        • UIImageView *telImgView -> Contact Phone Verification Successful Green Tick
        • UILabel *preferredAccountLab -> Preferred Account
        • UITextField *preferredAccountTF -> Preferred Account Entry匡
        • UIView *preferredAccountTFLine -> Preferred Account Entry Bottom Line
        • UILabel *countryLab -> Country
        • UITextField *countryTF -> Country Input匡
        • UIView *countryTFLine -> Country input bottom line
        • UILabel *addressLab -> Contact Address
        • UITextView *addressTV -> Contact Address Input匡
        • UILabel *addressTVPlaceholder -> Contact address input 提示 prompt word
        • UIView *addressTVLine -> Contact address input bottom line
        • UILabel *lbHintOfAddress -> Contact Address Error Prompt
        • UILabel *cityLab -> City
        • UITextField *cityTF -> City Input匡
        • UIView *cityTFLine -> City input bottom line
        • UILabel *lbHintOfCity -> City Error Prompt
        • UILabel *zipCodeLab -> Zip Code
        • UITextField *zipCodeTF -> Zip code input匡
        • UIView *zipCodeTFLine -> Zip code input bottom line
        • UILabel *lbHintOfZipCode -> Zip Code Error Prompt
        • UILabel *wechatAccountLab -> WeChat account
        • UITextField *wechatAccountTF -> WeChat account input匡
        • UIView *wechatAccountTFLine -> WeChat account input bottom line
        • UILabel *lbHintOfWechatAccount -> WeChat account error message
        • UIView *safetyProblemDataView -> Security Question / Answer Block
        • UILabel *safetyProblemLab -> Security Issues
        • UITextField *safetyProblemTF -> Security question input匡
        • UIView *safetyProblemTFLine -> Security question input bottom line
        • UILabel *lbHintOfSafetyQuestion -> Security Issues Error Prompt
        • UILabel *safetyAnswerLab -> Security Answer
        • UITextField *safetyAnswerTF -> Security Answer Input匡
        • UIView *safetyAnswerTFLine -> Security Answer Input Bottom Line
        • UILabel *lbHintOfSafetyAnswer -> Security Answer Error Prompt
#### 12.VerificationMailboxViewController
        • UIScrollView *myScrollView -> container
        • UILabel *mailboxLab -> Email
        • UIView *mailboxView -> Email Input Block
        • UITextView *mailboxTV -> Email Input匡
        • UILabel *mailboxTVPlaceholder -> Email Input Tips
        • UIButton *sendBtn -> send out
        • UIActivityIndicatorView *activityIndicator -> iOS native loadingView
#### 13. AboutUSViewController
        • AboutUSView *aboutUSView -> About our content
##### 13.1AboutUSView
        • UIScrollView *myScrollView -> container
        • UILabel *ourBrandLab -> Our brand
        • UIView *ourBrandLine -> divider
        • UILabel *ourBrandContent -> Our branded content
        • UIImageView *europeImgView -> betway Europe icon
        • UILabel *europeContentLab -> betway Europe Content
        • UIImageView *asiaImgView -> betway Asia icon
        • UILabel *asiaContentLab -> betway Asia Content
        • UILabel *ourProductLab -> Our products
        • UIView *ourProductLine -> Our product divider
        • UILabel *ourProductContent -> Our product content
        • UIImageView *realPeopleImgView -> betway Live icon
        • UILabel *realPeopleContentLab -> betway live content
        • UIImageView *sportsImgView -> betway Sports icon
        • UILabel *sportsContentLab -> betway Sports Content
        • UIImageView *gameImgView -> betway game icon
        • UILabel *gameContentLab -> betway game content
#### 14.PasswordManagementViewController
        • PasswordManagementView *passwordManagementView -> Modify password page
        • UIButton *saveItem -> save
        • UIButton *backItem -> return
##### 14.1 PasswordManagementView
        • UIScrollView *myScrollView -> container
        • UILabel *currentPasswordLab -> current password
        • UITextField *currentPasswordTF -> Current password input匡
        • UIView *currentPasswordTFLine -> current password input bottom line
        • UILabel *newPasswordLab -> new password
        • UITextField *newPasswordTF -> New password input匡
        • UIView *newPasswordTFLine -> New password input bottom line
        • UILabel *confirmPasswordLab -> Confirm password
        • UITextField *confirmPasswordTF -> Confirm password input匡
        • UIView *confirmPasswordTFLine -> Confirm password input bottom line
        • UILabel *passwordWarnningLabel -> New Password Error Prompt
        • UILabel *confirmPasswordWarnningLabel -> Confirm password error prompt
        • UILabel *oldPasswordWarnningLabel -> current password error message
#### 15 DrawMoneyViewController
        • UIScrollView *myScrollView -> container
        • UIImageView *headImgView -> background of the main account
        • UILabel *mainAccountLab -> Master Account
        • UIButton *refreshBtn -> refresh button
        • UILabel *RMBLab -> RMB
        • UILabel *moneyLab -> Master Account Balance
        • UIButton *remindBtn -> Warm reminder
        • UILabel *drawMoneyLab -> Withdrawal Amount
        • UITextField *drawMoneyTF -> withdrawal amount input匡
        • UIView *drawMoneyTFLine -> withdrawal amount input bottom line
        • UILabel *tipsLab -> Withdrawal Amount Tips
        • UILabel *drawAccountLab -> Withdrawal Account
        • UIButton *goDrawBtn -> Immediate withdrawal
        • UILabel *noDrawAccountLab -> No withdrawal account
        • UIButton *goSetBtn -> setting
        • UIView *bgView -> Withdrawal Account Block
        • UILabel *bankNameLab -> account name
        • UILabel *addressLab -> address
        • UILabel *branchLab -> Branch
        • UIView *lineView -> divider
        • UILabel *bankAccountLab -> account number
        • UILabel *holderNameLab -> holder
#### 16.PersonInfoShouldCompleteViewController
        • Inheriting NeedCompletedPersonalDataViewController, in order to plug different alertLab and belong to the withdrawal
#### 17.DrawMoneySuccessViewController
        • UIScrollView *myScrollView -> container
        • UIImageView *alertImgView -> success icon
        • UILabel *titleLab -> withdrawal submission successfully
        • UILabel *alertLab -> withdrawal success related information
        • UIButton *personalCenterBtn -> Close
#### 18.TransactionRecordViewController
        • DLLRUCache *cache -> tab cache
        • DLScrollTabbarItem *item -> tab component
        • DLCustomSlideView *slideView -> Inner page of the tab
        • DLScrollTabbarView *tabbar -> tab block
#### 19. TransactionRecordTableViewViewController
        • UIView *dateView -> start/end date selection block
        • UIView *dateViewLine -> Line below the block
        • UIImageView *timeImgView -> clock icon
        • UITextField *startTimeTF -> Start time input匡
        • UILabel *lineLab -> "~"
        • UITextField *endTimeTF -> End time input匡
        • UITableView *tableView -> list
##### 19.1 WithdrawalsRecordTableViewCell
        • UIView *bgView -> card background
        • UILabel *transactionTypeLab -> transaction type
        • UILabel *transactionNumberLab -> transaction number
        • UILabel *transactionAmountlab -> transaction amount
        • UILabel *transactionDetailsLab -> Transaction details
        • UILabel *transactionDetailsContentLab -> Transaction Details - Content
        • UILabel *serviceChargeLab -> Fee
        • UILabel *transactionStateLab -> transaction status
        • UILabel *transactionTimeLab -> Trading Hours
        • UIButton *cancelBtn -> Cancel / Canceled
##### 19.2 TransferRecordTableViewCell
        • UIView *bgView -> card background
        • UILabel *transactionTypeLab -> transaction type
        • UILabel *transactionNumberLab -> transaction number
        • UILabel *transactionAmountlab -> transaction amount
        • UILabel *transactionDetailsLab -> Transaction details
        • UILabel *transactionDetailsContentLab -> Transaction Details - Content
        • UILabel *serviceChargeLab -> Fee
        • UILabel *transactionStateLab -> transaction status
        • UILabel *transactionTimeLab -> Trading Hours
##### 19.3 DepositRecordTableViewCell
        • UIView *bgView -> card background
        • UILabel *transactionTypeLab -> transaction type
        • UILabel *transactionNumberLab -> transaction number
        • UILabel *transactionAmountlab -> transaction amount
        • UILabel *transactionDetailsLab -> Transaction details
        • UILabel *transactionDetailsContentLab -> Transaction Details - Content
        • UILabel *serviceChargeLab -> Fee
        • UILabel *transactionStateLab -> transaction status
        • UILabel *transactionTimeLab -> Trading Hours
#### 20 BankManagementViewController
        • UITableView *tableView -> list
#### 21 AddBankAccountViewController
        • AddBankAccountView *addBankAccountView -> Add bank data page
##### 21.1 AddBankAccountView
        • UIScrollView *myScrollView -> container
        • UILabel *holderNameLab -> account holder name
        • UITextField *holderNameTF -> Account holder name input匡
        • UIView *holderNameTFLine -> Account holder name input bottom line
        • UILabel *lbHintOFHolderName -> Account Holder Name Error Prompt
        • UILabel *bankNameLab -> Bank Name
        • UITextField *bankNameTF -> Bank Name Input匡
        • UIView *bankNameTFLine -> Bank name input bottom line
        • UILabel *lbHintOfBankName -> Bank Name Error Prompt
        • UILabel *bankNameKeyByUserLab -> bank name entered by the user
        • UITextField *bankNameKeyByUserTF -> Enter the bank name entered by the user匡
        • UIView *bankNameKeyByUserTFLine -> User input bank name input 匡 prompt
        • UILabel *lbHintOFBankKeyByUser -> User-entered bank name error message
        • UILabel *bankAccountLab -> Bank Account
        • UITextField *bankAccountTF -> Bank Account Entry匡
        • UIView *bankAccountTFLine -> Bank account entry bottom line
        • UILabel *lbHintOFBankAccount -> Bank Account Error Prompt
        • UILabel *provinceLab -> Province
        • UITextField *provinceTF -> Provincial Input匡
        • UIView *provinceTFLine -> Provincial Input Bottom Line
        • UILabel *lbHintOFProvince -> Provincial Error Prompt
        • UILabel *cityLab -> City
        • UITextField *cityTF -> City Input匡
        • UIView *cityTFLine -> City input bottom line
        • UILabel *lbHintOFCity -> City Error Prompt
        • UILabel *branchLab -> Branch
        • UITextField *branchTF -> branch input匡
        • UIView *branchTFLine -> branch input bottom line
        • UILabel *lbHintOFBanch -> Branch Error Prompt
##### 21.2 BankEmptyTableViewCell
        • UIImageView *imageview -> "+" icon
        • UILabel *titleLab -> Add bank information
        • UIImageView *arrowImageView -> ">" icon
##### 21.3 HaveBankTableViewCell
        • UIView *bgView -> background
        • UILabel *bankNameLab -> Bank Name
        • UILabel *addressLab -> address
        • UILabel *branchLab -> Branch
        • UILabel *bankAccountLab -> Bank Account
        • UILabel *holderNameLab -> holder name
#### 22. DividendDataViewController
        • UIView *topLineView -> top block
        • DividendOverviewView *dividendOverviewView -> Bonus Overview
        • QueryDividendDataView *queryDividendDataView -> Query Dividend History
        • BackwaterDiscountView *backwaterDiscountView -> Anti-water offer
##### 22.1 DividendOverviewView
        • UIView *topView -> top fast
        • UIView *lineView -> middle divider
        • UIView *bottomLineView -> bottom divider
        • UILabel *canReceiveLab -> can receive bonuses
        • UILabel *canReceiveContentLab -> can receive bonus amount
        • UILabel *unlockedLab -> Unlocked Bonus
        • UILabel *unlockedContentLab -> Unlocked Bonus
        • UILabel *soonExpireLab -> Bonus to expire
        • UITableView *tableView -> list
        • UIRefreshControl *refreshControl -> dropdown refresh
###### 22.1.1 DividendOverviewTableViewHeader
        • UILabel *dateLab -> Date
        • UILabel *moneyLab -> Amount
        • UIImageView *arrowBtn -> ">" icon
###### 22.1.2 DividendOverviewTableViewCell
        • UILabel *typeLab -> type
        • UILabel *startDateLab -> Start time
        • UILabel *contentMoneyLab -> Amount
        • UILabel *contentTitleLab -> title
        • UILabel *endDateLab -> End time
        • UILabel *endDateContentLab -> End time content
        • UILabel *progressLab -> Status
        • UIView *contentLine -> divider
        • UILabel *targetDividendLab -> Target Dividend Status
        • UILabel *flowingWaterLab -> running water
        • UIButton *receiveBtn -> Get
##### 22.2 QueryDividendDataView
        • UIView *topView -> Query block
        • UILabel *desireQueryMonthLab -> want to query the month
        • UILabel *accountSourceLab -> Account Source
        • UIView *desireQueryMonthTF -> view of the month to be queried
        • UIImageView *calendarImgView -> calendar icon
        • UILabel *monthLab -> month time
        • UIView *accountSourceTF -> Account Source Input匡
        • UIImageView *moneyImgView -> Account Icon
        • UILabel *bankLab -> Bank / Account
        • UIImageView *arrowImgView -> lower corner icon
        • UIButton *queryBtn -> search button
        • UILabel *alertLab -> Query bonus record tips
        • UITableView *tableView -> list
###### 22.2.1 BWPickerView
        • Months and picker from the account
###### 22.2.2 QueryDividendDataTableViewCell
        • UIView *bgView -> background
        • UILabel *typeLab -> type
        • UILabel *startDateLab -> Start time
        • UILabel *contentMoneyLab -> Amount
        • UILabel *contentTitleLab -> title
        • UILabel *endDateLab -> Expiration date
        • UILabel *endDateContentLab -> Expiration date and time
        • UILabel *progressLab -> Status
        • UIView *contentLine -> divider
        • UILabel *targetDividendLab -> bonus target status
        • UILabel *flowingWaterLab -> running water
        • UIButton *receiveBtn -> Get
##### 22.3 BackwaterDiscountView
        • UITableView *tableView -> list
        • UIRefreshControl *refreshControl -> dropdown refresh
###### 22.3.1 BackwaterDiscountTableViewCell
        • UIView *bgView -> background
        • UITableView *tableView -> list
###### 22.3.2 BackwaterDiscountCellTableViewCell
        • UIView *cellView -> expandable block below
        • UILabel *levelRangeLab -> level range
        • UILabel *levelRangeContentLab -> level range content
        • UIImageView *arrowImgView -> Down Arrow
        • UIView *cellLine -> divider
        • UIView *cellContentView -> upper content block
        • UILabel *effectiveBettingLab -> Effective betting
        • UILabel *effectiveBettingContentLab -> Betting Content
        • UILabel *backWaterScaleLab -> anti-water ratio
        • UILabel *backWaterScaleContentLab -> anti-water ratio content
        • UIView *cellContentViewLine1 -> first divider
        • UILabel *backWaterMoneyLab -> amount of water
        • UILabel *backWaterMoneyContentLab -> Anti-water amount content
        • UIView *cellContentViewLine2 -> second divider
#### 23. ExclusivePreferenceViewController
        • UIImageView *topImgView -> above
        • UIView *bottomView -> bottom image
        • UILabel *couponCodeLab -> coupon code
        • UITextField *couponCodeTF -> Coupon Code Entry匡
        • UILabel *couponCodeWarrningLab -> Coupon Code Error Prompt
        • UIView *couponCodeTFLine -> Coupon code input bottom line
        • UIButton *submitBtn -> Coupon Code Submission
#### 24. NoticeViewController
        • DLLRUCache *cache -> tab cache
        • DLScrollTabbarItem *item -> tab component
        • DLCustomSlideView *slideView -> Inner page of the tab
        • DLScrollTabbarView *tabbar -> tab block
##### 24.1 NoticeTableViewViewController
        • UITableView *tableView -> list
##### 24.1.1 DiscountNoticeTableViewCell
        • UIView *bgView -> card background
        • UILabel *typeLab -> Announcement Type
        • UILabel *dateLab -> Announcement Date
        • UILabel *titleLab -> announcement title
        • UIButton *lookBtn -> watch content button
        • UIButton *arrowBtn -> ">" button
        • UILabel *contentLab -> Announcement content
##### 24.1.2 NewNoticeTableViewCell
        • UIView *bgView -> card background
        • UILabel *typeLab -> Announcement Type
        • UILabel *dateLab -> Announcement Date
        • UILabel *titleLab -> announcement title
        • UIButton *lookBtn -> watch content button
        • UIButton *arrowBtn -> ">" button
        • UILabel *contentLab -> Announcement content
##### 24.1.3 EspeciallyNoticeTableViewCell
        • UIView *bgView -> card background
        • UILabel *typeLab -> Announcement Type
        • UILabel *dateLab -> Announcement Date
        • UILabel *titleLab -> announcement title
        • UIButton *lookBtn -> watch content button
        • UIButton *arrowBtn -> ">" button
        • UILabel *contentLab -> Announcement content
### Basic page

## 3. Program architecture/logic in each module
### 3.0 AppDelegate Initialization Module:

#### function didFinishLaunchingWithOptions
        (1). Union sdk initialization
        (2). branch io sdk initialization
        (3). Use NSUserDefault to store affiliateCode, and set the key value to DeepLinkRegisterBonusCode
        (4). Initialize the UserInfoManager module. This module is used to record user related information.
        (5). Initialize the Reachability tool. This tool is a tool for detecting network events.
        (6). Use NSUserDefault to store/reset the kShowMultiLogoutMessage setting. This value is used to determine when there are multiple apis on the page that will return 401 or 403. Except for the first time to skip the message, other QAs do not want to repeatedly pop out." Your account has been logged out, please log in again. "Prompt message. So set a value to make a judgment. This value will be set to NO when the prompt message pops up, and reset to YES when logging out.
        (7). NSNotificationCenter added a reachabilityDidChange event to detect if the network status has changed.
        (8). NSNotificationCenter added a goAction event to handle tabBarVC guides in a unified manner.
        
#### function applicationDidBecomeActive
        (1). Version check
        
#### function didRegisterForRemoteNotificationsWithDeviceToken
        (1). Get the push device token and do the Union and api registration.
        
#### function didReceiveRemoteNotification
        (1). iOS9 push events will be handled here
        
#### function userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler
        (1). iOS10 push events will be handled here
        
#### function handleNotificationRefreshEvent
        (1). Unified processing when pushing update events and updating api data
        The events and related actions are:
        • NewGameArrival -> call getGameLobbyInfo api
        • SettingsChanged -> call getWithdrawSettings api
        • NewDepositMethodArrival -> call getDepositPaymentMethods api
        • NewPromotionArrival -> call getPromotionList and getLobbyBanners api
        • NewBonusArrival -> call getBonusList and getLobbyBanners api
        • NewBannerArrival -> call getLobbyBanners api
        
#### function handleNotificationFunctionEvent
        (1). Unified processing of push function events
        The functions and related actions are:
        CheckVersion -> call checkAppVersion api (check version update)

### 3.1 Login and public page

        The login function page is divided into general account login, biometric login, forgotten password, forgotten username, verified mobile phone and user registration function.
        
### 3.1.1 General login, fingerprint login and face recognition login

        Page logic:
        (1). The page opens will make all the components of the screen
        
        (2.1). Check if the user can use the biometric function checkIsShowBiometricBtn(). When the user's mobile phone can use biometric identification and the member login page is enabled, the biometric login button needs to be displayed, and the page will cause the biometric page. The side will decide to open the fingerprint or face recognition page depending on the user device.
        
        (2.2). When the user does not open the biometric function or log in for the first time, the user needs to enter the account and password to log in.
        
        (3). After the user logs in successfully, in addition to updating the user information (UserInformationResponseData), the following information will be specially updated.
        • kShowMultiLogoutMessage : Set the 401/403 error message status to YES, indicating that the error message will be displayed next time.
        • kEventUserDidLogout : Logout status is set to NO
        • Get the kGoActionValue state. This setting is used to determine if you want to go to the special page after the login is complete. Use with AppDelegate's goAction method
        • Update push status
        
        (4). When the user has not entered the mobile phone, it must be caused to the mobile phone number verification page (VerifyPhoneViewController)
        (5). Update the kUserName and kPassword values ​​for biometric login.
        (6). To determine if the non-same account is logged in, you must set the kIsTouchOrFaceIDLogin value to NO to avoid the next time you use the wrong account login.
        
        P.S. General login has a shared method show(), which is used when other pages want to call the login function.

### 3.1.2 Forgot your password?

        Page logic:
        (1). The page opens will make all the components of the screen
        (2). According to the account and phone number input by the user, first perform the account verification action (call checkUserAccount api).
        (3). Send the api to get the verification code ( call sendSMSCode api).
        (3.1) The api is successfully transmitted and the message is sent successfully. The message number input box is displayed.
        (3.2) When the api return value fails, the SMS verification code error message is displayed.
        (3.3) The api return value is successful but the message is sent unsuccessfully, and an error message is displayed according to errorCode.
        (4). After the call verificationSMSCode api is successful, enter the reset password page. Otherwise, an error is displayed according to the error message.
        
### 3.1.3 Forgot username

        Page logic:
        (1). The page opens will make all the components of the screen
        (2). According to the user's choice of birthday and phone number first account verification action (call checkUserBirth api).
        (3). Send the api to get the verification code ( call sendSMSCode api).
        (3.1) The api is successfully transmitted and the message is sent successfully. The message number input box is displayed.
        (3.2) When the api return value fails, the SMS verification code error message is displayed.
        (3.3) The api return value is successful but the message is sent unsuccessfully, and an error message is displayed according to errorCode.
        (4). After the call verificationSMSCode api is successful, enter the reset password page. Otherwise, an error is displayed according to the error message.
        
### 3.1. 4 User registration
        
        Page logic:
        (1). The page opens will make all the components of the screen
        (2). After the user completes and verifies the field information, it is judged whether the coupon code is entered.
        (2.1) Enter the coupon code, first make the coupon volume verification (call getCouponInfo api)
        (2.2) Without entering the coupon code, go directly to (3)
        (3). call userRegister api to do the registration action. When the registration is successful, the verification phone page (VerifyPhoneViewController) will be imported.
        
        The P.S. general registration page (RegistViewController) is currently not used.

### 3.1.5 Verifying the phone

        Page logic:
        (1). The page opens will make all the components of the screen
        (2). Send the api to get the verification code (call sendSMSCode api) according to the phone input by the user.
        (2.1) api return success and SMS sent successfully, display the SMS number input box
        (2.1) When the api return value fails, the SMS verification code error message is displayed.
        (2.2) The api return value is successful but the message is sent unsuccessfully, and an error message is displayed according to errorCode.
        (3). After the call verificationSMSCode api is successful, enter the reset password page. Otherwise, an error is displayed according to the error message.
        
### 3.2 Home (ViewController)

        The main components of the home block are the upper Banner and the main game category block (TableView) below.
        • The Banner block uses the third-party suite TYCyclePagerView to implement the content page, and TYPageControl controls the page-changing behavior.
        • Game category block uses SYTableViewCell to render the picture layout according to the GameCategoryModel data module.
        • NSNotificationCenter added a kEventNewBannerArrival event to detect the update status of the push.
        • NSNotificationCenter added a kEventNewGameArrival event to detect the update status of the push.
        
        Page logic:
        (1). The page opens will make all the components of the screen
        (2). Each time you enter the page (viewWillAppear), you will get the banner information (call getLobbyBanners api) and the game classification data (call getAllGameCategories api), and update the screen.
        
        Click/slide behavior:
        • When the page is down, the update action will be updated. When the update is pulled down, the banner and game category data will be updated through the refreshMainPage method.
        • When the game function block is clicked, the page behavior is based on the different gameCategoryName via the pushToGameLobbay method.
        - When judging that you are clicking on the sports (portsportsbook) game category, you must first determine if the user has logged in. If you are not logged in, you must first jump to the login page.
          In addition, you must also determine whether the user account is locked. When the account is locked, you need to refer to the customer service.
        - Other types of games go directly to the game lobby page.
        
### 3.3 Offers

        ㄧ. Main page module and related events:
        The concessions are divided into the upper Banner and the main concession category menu below. The offers include sports offers, live offers, game offers and special offers.
        • The Banner block uses the third-party suite TYCyclePagerView to implement the content page, and TYPageControl controls the page-changing behavior.
          - Banner block contains drop-down menu kit (YTDropMenu)
        • Offer block composition contains
          - The offer menu is partially implemented by DLScrollTabbarView
          - Offer content page is implemented by DLCustomSlideView
        • NSNotificationCenter added a kEventRefreshPromotionList event to detect the update status of the push.
        • NSNotificationCenter added a kEventNewBannerArrival event to detect the update status of the push.
        
        Main page (DiscountPageViewController) logic:
        (1). The page opens will make all the components of the screen
        (2). Each time you enter the page (viewWillAppear), you will get the banner information (call getLobbyBanners api) to update the banner data.
        (3). The discount classification is to write four game categories on the App side. The classified subpage (PageViewController) is in
             - (UIViewController *) DLCustomSlideView: (DLCustomSlideView *) sender controllerAt: (NSInteger) index
             Do the action of generating the page.
        (4). After the sub-page is generated, the coupon list data (call getPromotionList api) will be obtained and updated on the page that belongs to it.
        
        2. Offer sliding paging module and related events:
        Offer sliding tabs make up blocks with only their own TableView
        • NSNotificationCenter added a NOTIFICATION_DISCOUNT_PAGE_REFRESH event to update the offer items that need to be displayed.
        • NSNotificationCenter added a kEventRefreshPromotionList event to detect the update status of the push.
        • NSNotificationCenter added a kEventNewPromotionArrival event to detect the update status of the push.
        
        Offer Slide Page (PageViewController) logic:
        
        (1). The page opens will make all the components of the screen
        (2). Each time you enter the page (viewWillAppear), you will get the offer list data (call getPromotionList api) and update it.
        
        Click/slide behavior:
        • Click on the Banner ad
          - The banner click event will be handled uniformly in the DiscountPageViewController's actionByPromotionListData method. The action id value is defined as follows (this definition value is shared by all action ids):
          "3": Deposit now (please go to the transfer page)
          "9": Immediate betting (sports)
          "11": Immediate betting (real person)
          "12": Immediate betting (game)
          "14": Discount page (sports)
          "16": Discount page (real person)
          "17": Discount page (game)
          "18": Discount page (other)
          "20": Home
          Other numbers (0~2, 4, 5, 10, 13, 15, 19): no effect
          
        • Click on the menu button (dropMenu)
          - Triggers the dropButtonClick event, which determines whether to show/hide the menu page depending on whether it is clicked.
          - When the condition to be displayed is selected, pressing the filter button will trigger
            -(void)dropMenu:(YTDropMenu *)dropMenu didMultiSelectIndexPaths:(NSIndexSet *)selIndexSet
            as well as
            - (void)filterData:(NSIndexSet *)selIndexSet
            The above two methods will check which conditions have been selected in total, and convert different type values ​​depending on the name. (ex : deposit offer = type 2)
          - The converted data will be stored in the NSMutableDictionary container and a notification event (NOTIFICATION_DISCOUNT_PAGE_REFRESH) will be sent to notify the subpage (PageViewController) that a screen update is required.
          - After receiving the update event, the subpage will update the screen according to the type value and based on the api data.
        • Click on a discount item
          - Click on the offer image to generate a discount details page (DiscountDetailsViewController), which simply displays the offer information
          - Click on the relevant button event such as immediate deposit/immediate bet, triggering PageViewController's actionByPromotionListData method to do action processing.
### 3.4 Deposit

        1. The main page (DepositPageViewController) module and related events:
        The deposit page distinguishes the deposit/transfer selection block above and the deposit function business menu below. The deposit implementation includes QQ payment, online payment, local bank transfer, cloud flash scan code, Jingdong wallet and Betwick card.
        • The main page generation (on) method distinguishes 2 types
          - Use the custom insured method (call initWithPresent method), this method will add a close button on the top left of the page.
          - Opened in the normal way, TabBarItem is used this way, this method will not close the button on the top left of the page.
        • The deposit block contains 2 buttons for deposit and transfer.
        • Deposit business function block consists of
          - The deposit menu section is implemented by DLScrollTabbarView
          - Deposit content page is implemented by DLCustomSlideView
        • NSNotificationCenter added a kEventNewDepositMethodArrival event to detect the update status of the push.
        • NSNotificationCenter adds the kEventDespositSuccess event. When the deposit is successful, if the current page is opened using the Present method, the page is closed.
        • NSNotificationCenter added a transfer_success event, when the transfer is successful, cut back to the home page
        
        Deposit page
        The deposit function page is divided into two different types. One is to guide the web page when the deposit is completed, for example: QQ payment, cloud flash scan code, Jingdong wallet and online payment, etc. The other is to process the deposit completion behavior for the self page. For example: local bank transfer and BV.
        
        • The deposit page inherits the PaymentView in a unified manner. When there is coupon information, each deposit page must display coupon information. However, the coupon information will be cleared after leaving the piglet page. Whether or not the user has used the coupon roll.
        
        Deposit function page logic:
        - QQ payment, cloud flash payment scan code, Jingdong wallet, online payment:
        (1). The page opens will make all the components of the screen
        (2). Check when a coupon volume is generated, generate a couponView.
        (3). When the user enters the field data and the verification is completed, PaymentView's depositWithWebView method is triggered and call submitDeposit api is made to make the deposit action.
        (4.1). The deposit is completed and no coupon is used. Open WebView directly to prompt the user to complete the deposit.
        (4.2). The deposit is completed and coupon is used, which will trigger
            - (BOOL)applyBonus : (TransactionResponseData*) transactionData amount:(NSInteger)amount depositCharges:(double)depositCharges method
              And call applyBonus api to do the coupon use action. When the api returns the data is correct, it will clear the relevant coupon information of the local end. For example, [UserInfoManager share].bonusData. Finally open WebView to prompt the user to complete the deposit.
          
        - Local bank transfer:
        (1). The page opens will make all the components of the screen
        (2). Check when a coupon volume is generated, generate a couponView.
        (3). call getDepositTargetBank api Get bank information. (This will ignore the 'Alipay Transfer' function when storing temporary data)
        (4). call getLocalDepositMethods api Get the transfer function. (This will ignore the 'Alipay Transfer' function when storing temporary data)
        (5). It should be noted that the bankTypeClick method will update the supported bank account according to the selected transfer function. Otherwise, click the bankClick method to update the corresponding transfer function.
        (6). When the user enters the field data and the verification is completed, the call submitDeposit api is used to make the deposit action.
        (7.1). The deposit is completed and no coupon is used. Open DepositApplicationSuccessViewController directly to prompt the user to complete the deposit.
        (7.2). The deposit is completed and coupon is used, which will trigger
            - (BOOL)applyBonus : (TransactionResponseData*) transactionData amount:(NSInteger)amount depositCharges:(double)depositCharges method
            And call applyBonus api to do the coupon use action. When the api returns the data is correct, it will clear the relevant coupon information of the local end. For example, [UserInfoManager share].bonusData. Finally open DepositApplicationSuccessViewController to prompt the user to complete the deposit.
        
        - BW Card:
        (1). The page opens will make all the components of the screen
        (2). Check when a coupon volume is generated, generate a couponView.
        (3). When the user enters the field data and the verification is completed, the call submitDeposit api will be used to make the deposit action.
        (4.1). The deposit is completed and no coupon is used. Open DepositApplicationSuccessViewController directly to prompt the user to complete the deposit.
        (4.2). The deposit is completed and coupon is used, which will trigger
            - (BOOL)applyBonus : (TransactionResponseData*) transactionData amount:(NSInteger)amount depositCharges:(double)depositCharges method
            And call applyBonus api to do the coupon use action. When the api returns the data is correct, it will clear the relevant coupon information of the local end. For example, [UserInfoManager share].bonusData. Finally open DepositApplicationSuccessViewController to prompt the user to complete the deposit.
        
        Transfer page
        (1). The page opens will make all the components of the screen
        (2). call getUserTransferWallets api Update user wallet data.
        (3). When the user selects the target account, it will call the getBonusList api to get the bonus message of the account. And generate the corresponding bonusView field.
        (4). The click status of the bonus field will be displayed differently depending on the amount of the transfer.
            - When the bonus field is generated, the default selection field will be used next time.
            - When the transfer amount is less than the minimum amount issued by the bonus, an error message will be displayed in the bonus field. The reminder amount is not up to standard.
            - When the transfer amount changes, change the selection field to use it again next time.
        (5). When the user selects the PT account, it will check whether the account has a registered PT account.
        (6). The transfer process of the transfer page is divided into 4 steps.
            - goDepositStep1 method : The main function is responsible for checking whether the field data is correct.
            - goDepositStep2 method : The main function is responsible for confirming whether to use coupon or bonus
                1. Determine whether to use the coupon volume, if it is used, enter the goDepositStep3 method
                2. The user selects a valid bonus field, then call calculateBonusAmount api to confirm whether the bonus can be used. If it can be used, enter the goDepositStep3 method
                3. Other states go directly to the goDepositStep3 method
            - goDepositStep3 method : The main function is responsible for the transfer action
                1. call submitTransfer api to make the transfer, the transfer will display 'transfer success' toast. and re-update the offer and bonus list information. Finally transfer the transfer success page
                2. The transfer is successful and the coupon volume is used, which triggers
                - (BOOL)applyBonus : (TransactionResponseData*) transactionData amount:(NSInteger)amount depositCharges:(double)depositCharges method
                And call applyBonus api to do the coupon use action. When the api returns the data is correct, it will clear the relevant coupon information of the local end. For example, [UserInfoManager share].bonusData. Finally, the 'exclusive offer is successfully used' toast. Finally, the transfer is transferred. Success page
                3. If you have a choice bonus, go to goDepositStep4
                - goDepositStep4 method : The main function is responsible for applying for dividends. call applyBonus api gets the bonus application status. When the bonus application is successful, the offer and bonus list information will be updated again. Finally, the transfer success page will be transferred.
            
### 3.5 Message

        Main page module and related events:
        The message forms the main message category menu for the block. The message contains all messages, deposit notifications, withdrawal notices and bonus notifications.
        • Message category block composition contains
        - The message menu section is implemented by DLScrollTabbarView
        - The message content page (slideView) is implemented by DLCustomSlideView
        • NSNotificationCenter added a kEventUserDidLogin event to detect the status of the login event.
        • NSNotificationCenter added a kEventRefreshMessageList event to detect the update status of the push.
        • NSNotificationCenter added a kEventUserDidLogout event to detect the status of the logout event.
        
        Main page (MessageViewController) logic:
        (1). The page opens will make all the components of the screen
        (2). Each time you enter the page (viewWillAppear), you will get the message data (call getMessageList api) to update the message data.
        (3). The message classification is to write four kinds of message classifications on the App side. The classified sub-page (MessageTableViewViewController) is in
        - (UIViewController *) DLCustomSlideView: (DLCustomSlideView *) sender controllerAt: (NSInteger) index
        Do the action of generating the page.
        (4). After the sub-page is generated, it will get the message read status (call sendMessageRead api) concurrent notification (kEventRefreshMessageUnReadCount) to update the number of unread messages on the page it belongs to.
        
### 3.6 Members

        Main page module and related events:
        The membership center block can be divided into three blocks, and the layout of login/logout is not the same.
        The login status is the user related message (AlreadyLogginHeadView), the middle function list (tableView) and the version information and logout button (AlreadyLogginFootView).
        The logout status is the login/registration button (NotLoginHeadView), the function list (tableView) in the middle, and the version information (UpdateVersionView) below.
        The function list includes announcements, exclusive offers, bonus information, bank data management, transaction records, withdrawals, password management, PT game download password management, fingerprint recognition/face recognition login, and customer service functions.
        
        • NSNotificationCenter added a kEventUserDidLogout event to detect the status of the logout event.
        
        Main page (MessageViewController) logic:
        (1). The page opens will make all the components of the screen
        (2). Determine whether it is necessary to display the updated version information and update the biometric function button status (kIsTouchOrFaceIDLogin, which is inconsistent with the previous login account, and must be set to false)
        (3). Each time you enter the page (viewWillAppear) and log in, you will get the member data (call getUserInfo api) and account data (call getUserWalletBalance api) and update the page data.
        (4). Click to check the user data (call getUserInfo api) and the withdrawal setting (call getWithdrawSettings api) is completed.
        
        - Edit Profile (EditPersonalDataViewController) page logic
        (1). The page opens will make all the components of the screen
        (2.) will get the member information (call getUserInfo api), account data (call getUserWalletBalance api), security question (call getSecretQuestions api) and country list (call getNationsList api) and update the page data
        (3). After verifying the updated information, each field needs to check whether there is any adjustment data. If there is any adjustment, call updateUserInfo api to update the member information.
        (4). All data is updated successfully, need to return to the previous page. When there is data update failure, which fields need to be updated failed (call showUpdateProfileStatus method judgment)
        
        - PT Game Password Management (PTPasswordManagementViewController) page logic
        (1). The page opens will make all the components of the screen
        (2). call getUserVendorInfo api to get a PT account
        (3). After the password is filled in, the call updateVendorPassword api updates the PT password.
        
        - Password Management (PasswordManagementViewController) page logic
        (1). The page opens will make all the components of the screen
        (2). After the password is filled in, call updateUserPassword api to update the password.
        
        - DrawMoneyViewController page logic
        
        • Click Add Account to open the Add Account (AddBankAccountViewController) profile page.
        • Click on the prompt message to open the prompt message page (ReminderPageViewController)
        • NSNotificationCenter added a kEventTransationSettingsChanged event to detect event updates to account data.
        • NSNotificationCenter added the kEventBankAccountDidAdd event to detect event updates to account data.
        
        (1). The page opens will make all the components of the screen
        (2). Check whether the user data is verified/filled. If not, you need to open RealNameViewController to fill in.
        (3). call getUserWalletBalance api Get account amount information
        (4). call getUserBanksInfo api Get bank information, and preset the displayed
        (5). call getWithdrawSettings api Get account settings data, and update the single withdrawal amount will be the lowest value
        (6). After the withdrawal information is completed, call submitWithdraw api is used to make withdrawals.
        
        - Transaction Record (TransactionRecordViewController) page logic
        
        The transaction record constitutes the main message category menu of the block. The message contains all transactions, deposit records, transfer records and withdrawal records.
        • The transaction record block consists of
        - The transaction history menu is implemented by DLScrollTabbarView
        - The transaction record content page (slideView) is implemented by DLCustomSlideView
        - Each transaction function is shared as a content page (TransactionRecordTableViewViewController), based on the index worth different implementation content information
        - The index value (screen order) is written on the APP side.
        
        Transaction Content Page (TransactionRecordTableViewViewController) Page Logic:
        (1). The page opens will make all the components of the screen
        (2). Each time you enter the page (viewWillAppear) will take the call getTransactionHistory api to get the latest transaction data.
        (3). The api data will be classified according to the transactionType. The content page will be displayed according to the classified information.
        (4). The content status will be displayed according to the statusID given by the api, as follows:
        statusID :
        0, default -> api to the value
        1 -> pending
        2 -> Processing
        3 -> Gateway processing
        4 -> Success
        5 -> failed
        6 -> Cancelled
        7, 8, 9 -> Processing
        
        - BankManagementViewController page logic
        (1). The page opens will make all the components of the screen
        (2). Each time you enter the page (viewWillAppear) will take the call getUserBanksInfo api to get the latest transaction data.
        (3). When there is no bank information, you can click Add Bank to add bank information (new AddBankAccountViewController)

        - DividendDataViewController page logic
        The bonus message forms the main bonus menu of the block. The function includes the bonus overview, the inquiry bonus record and the return water offer.
        • Bonus block composition contains
        - The top menu function page (topView) is implemented by killing 3 buttons.
        - The following content blocks are divided into three pages: DividendOverviewView, QueryDividendDataView and BackwaterDiscountView, and are directly attached to the page by addSubView.
        - Switching mode is displayed in show/hide view mode (btnClick method)
        - Dividend overview only shows bonusStatusID = 3 and 4
        - Query bonus record status button, bonusStatusID = 2, 5, 6, 8 will be hidden (completed and expired without displaying button)
        
        Page logic:
        (1). The page opens will make all the components of the screen
        (2). When the page is generated, it will call getBonusBalance api to get the bonus information.
        (3). call getBonusMilestone Get the bonus value of each month's upcoming expiration, call getPromotionHistory api Get the bonus details (the bonus query preset query interval from 2008/01/01 00:00:00 to 23:59:59 of the day)
        (4). call getUserWalletBalance api Get account list information
        (5). Date selection will get the latest information through toSelect delegate method (re-call getPromotionHistory api)
        
        - Exclusive offer (ExclusivePreferenceViewController) page logic
        (1). The page opens will make all the components of the screen
        (2). After the coupon is filled out, call getCouponInfo api, first obtain the data for preliminary verification, and verify whether the coupon is valid (with or without it) in call calculateBonusAmount api.
        
        - Announcement (NoticeViewController) page logic
        Announcements form the main message category menu for the block. The message contains all announcements, special announcements, latest announcements and offers.
        • Announcement block composition contains
        - The bulletin menu is implemented by DLScrollTabbarView
        - Announcement content page (slideView) is implemented by DLCustomSlideView
        - Each announcement function shares a content page (NoticeTableViewViewController), based on the index worth different implementation content information
         
        Page logic:
        (1). The page opens will make all the components of the screen
        (2). When the page is generated, the call sendMessageRead api will send out the read status of the page.
        (3). Each page is different according to the index, and will call getMessageList api to take the corresponding information of the special announcement. call getNewsList api Get other announcement materials
        (4). All announcements need to merge 2 api data on the APP side and sort the date.
        
        - About (AboutUSViewController) page logic
        (1). The page opens will make all the components of the screen
        
## 4. SDK / Utiity Description
    
    • category :
    - RequestData : Define siteId
    - NSString :
        (1). NSString+IsValidUrl : Determine if the url is valid
        (2). NSString+IsBlank : Determine if the string is empty
        (3). NSString+isValidEmail : Determine if email is valid
    - UIColor : RGB conversion
    - UITextField :
        (1). UITextField+TintAjust : Cursor related functions
        (2). UITextField+Placeholder : placeholder related functions
    - UIImage :
        (1). UIImage+EqualScaling : Image extension function
        (2). UIImage+Tint : Image color matching related function
    - UIView+AddClickedEvent : view Add click event
    - UIView+UIViewController : Get the viewcontroler of the view
    
    • header :
    - ApiHeader : No effect
    - ToolHeader : No effect
    - CategoryHeader : include all custom category header
    - ClassHeader : include third's party header
    - SDKHeader : include all header's file
    - SDKHeader : No effect
    - FrameworkHeader : No effect
    - ViewHeader : include all view's header
    - PageHeader : include all viewcontroller's header
    - MacroDefinitionHeader : Define UserDefault and shared system value judgment
    
    • SharedView :
    - ToastViewController : Custom Toast function
    
    • Tools
    - BetwayUtils:
        +(BOOL) isnil:(id)value : whether it is null
        +(BOOL) isEmptyString:(NSString *)string : Whether it is an empty string
        +(BOOL) isNotEmptyString:(NSString *)string; : Is it not an empty string?
        +(BOOL) isNumber:(NSString *)inputStr : Whether it is a number
        +(BOOL) isDouble:(NSString *)inputStr : Whether it is a double type
        +(BOOL)isValidPassword:(NSString *)pass : Whether it is a valid password format
        +(BOOL)isValidPhoneNumber:(NSString *)tel : Is it a valid phone format?
        +(BOOL)isValidUserName:(NSString *)username : Is it a valid user code?
        +(BOOL)isValidRealNameWithWhitespace:(NSString *)realName : Whether it is a valid real name
        +(BOOL)isEmailAddress:(NSString*)mailAddress : Is it a valid email?
        +(NSString *)getTimeStampFromDate:(NSDate *)date : Convert timestamp according to nsdate
        +(NSDate *)getDateFromTimeStamp:(NSString *)timeStamp : Convert nsdate according to timstamp
        + (NSString *)AES256_Encrypt:(NSString *)originalStr key:(NSStr ing *)key : aes256 encryption
        + (NSString *)AES256_Decrypt:(NSString *)encryptStr key:(NSString *)key : aes256decrypt
        + (BOOL)isLoginStatusIllegal:(NSInteger)errorCode : Determines whether it is 401 or 403 based on errorCode
        + (BOOL)isLoginStatusIllegalWithError:(NSError *)error : : Determines whether it is 401 or 403 based on the error message.
        + (BOOL)isValidRemark:(NSString *)remark : Judging emoji
        + (BOOL)isValidRealName:(NSString *)realName : Whether it is a valid real name
        + (BOOL)isValidBankName:(NSString *)bankName : Is it a valid bank name?
        + (BOOL)isvalidAddress:(NSString *)address : Whether it is a valid address
        + (BOOL)isValidEmail:(NSString *)email : Is it a valid email?
        + (BOOL)isValidCity:(NSString *)city : Is it a valid program?
        + (BOOL)isValidWechatAccount:(NSString *)wechatAccount : Is it a valid wechat account?
        + (BOOL)isvalidSecretAnswer:(NSString *)answer : Is it a valid security answer?
        + (BOOL)validateIDCardNumber:(NSString *)value : Whether it is a valid id card
        + (BOOL)isValidRegion:(NSString *)region : Whether it is a valid area
        + (UIImage *)imageWithTintColor:(UIColor *)tintColor alpha:(CGFloat)alpha image:(UIImage *)image : image tint method
        + (BiometricType) isBiometricAvailable : Whether biometrics can be used
        + (NSAttributedString *)attributedStringWithHTML:(NSString *)html : Convert NSAttributedString based on html
    
    - Manager:
        (1). FunpodiumSDKCacheMacros : cache related functions
        (2). FunpodiumSDKManager : sdk method Related Functions
        
    - ThousandthDivision : Decimal point numerical calculation
    - NSDate : Date related tools
    - Saver : NSUserDefault storage function
    - ProgressHUD : hud kit
    - Calendar : Date related features
    - UIButton : Calculate the area size based on the string
    - Keyboard : Keyboard event related functions
<<<<<<< HEAD
    - TouchOrFace : Biometric related functions
=======
    - TouchOrFace : Biometric related functions
>>>>>>> e5564465ee7cab4d60a5526dbd765fbdf32ab026
