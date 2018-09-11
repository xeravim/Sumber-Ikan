# Betway-iOS

## 1. System Architecture (Figure)

#### Please refer to the architecture [figure](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/Betway_Architecture.png)

## 2. Description of each modules
### Home
#### 1. ViewControllers
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Home/MainPage.png?raw=true" width = "500">

##### 1.1 MainBannerCell
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Home/MainPageTop.png?raw=true" width = "500">

##### 1.2 SYTableViewCell
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Home/MainPageBottom.png?raw=true" width = "500">

### Games Lobby
#### 2. GameHallViewController
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Game-Lobby/GameHallViewController.png?raw=true" width = "800">

#### 3. Game Tab (except my favorite) - GameListViewController
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Game-Lobby/GameListViewController.png?raw=true" width = "800">

#### 4. My Favorite Tab - catalogViewController 
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Game-Lobby/catalogViewController.png?raw=true" width = "800">

#### 5. Show All - checkAllViewController 
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Game-Lobby/checkAllViewController.png?raw=true" width = "800">

#### 6. Game Page - gameCenterViewController 
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Game-Lobby/gameCenterViewController.png?raw=true" width = "800">

##### 6.1 SideBarMenuView
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Game-Lobby/SideBarMenuView.png?raw=true" width = "800">

#### 7. In-game Offer - GameHallDiscountListViewController
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Game-Lobby/GameHallDiscountListViewController.png?raw=true" width = "800">

### Offers
#### 1. DiscountPageViewController
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Offers/DiscountPageViewController.png?raw=true" width = "800">

##### 1.1 PageViewController
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Offers/PageViewController.png?raw=true" width = "800">

#### 2. ApplicationGuidanceViewController 
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Offers/ApplicationGuidanceViewController.png?raw=true" width = "800">

#### 3. ApplicationFormViewController 
<img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Offers/ApplicationFormViewController.png?raw=true" width = "800">

### Piggy Bank Page (Mid TabBar Button)
#### DepositPageViewController (Framework)
        • UIView *headView -> pper block
        • UIImageView *headBGImg -> background of the upper block
        • UIButton *topCloseBtn  -> close button
        • UILabel *mainAccountLab  -> master account
        • UIButton *refreshBtn ->  refresh button
        • UIView *moneyView -> RMBLab superView
        • UILabel *RMBLab -> RMB typeface
        • UILabel *moneyLab -> balance
        • UIButton *depositBtn -> deposit
        • UIButton *transferBtn -> transfer
        • DLLRUCache *cache -> tab cache
        • DLScrollTabbarItem *item -> tab component
        • DLCustomSlideView *slideView -> inner page of the tab
        • DLScrollTabbarView *tabbar -> tab block
#### 1. Deposit
##### 1.1 CouponView (Coupon)
        • UIButton *checkBox -> use the coupon checkmark
        • UILabel *titleLable -> coupon Title
        • UILabel *contentLable -> coupon content
        • UITextField *couponField -> coupon input
        • UILabel *tipsLable -> coupon tips
        • UILabel *warningLable -> application amount tip
##### 1.2 LocalBankAndAlipayView （Local Bank）
        • UIScrollView *myScrollView -> container
        • UIButton *remindBtn -> warm reminder
        • UILabel *dateLab -> arrival time
        • UIButton *localBankTransferInformationBtn -> local bank transfer information
        • UILabel *depositAmountLab -> deposit amount
        • UITextField *amountTF -> deposit amount input
        • UIView *amountTFLine -> Enter the bottom line underneath
        • UILabel *explainLab -> deposite reminder message
        • UIView *btnView -> quick selection amount
        • UILabel *bankTypeLab -> transfer method
        • UITextField *bankTypeTF -> transfer mode input
        • UIView *bankTypeTFLine -> transfer mode input bottom line
        • UILabel *bankLab -> bank selection
        • UITextField *bankTF -> bank selection input 
        • UIView *bankTFLine -> bank selection input bottom line
        • UILabel *payerNameLab -> payer name
        • UITextField *payNameTF -> payer name input 
        • UIButton *submitBtn -> submit button
        • UILabel *promptLab -> please submit the application message after successful "deposit" or "transfer"
##### 1.3 QQPayView  (QQ支付)
        • UIScrollView *myScrollView -> 容器
        • UIButton *remindBtn -> 溫馨提醒
        • UILabel *depositAmountLab -> 存款金額
        • UITextField *amountTF -> 金額輸入匡
        • UIView *amountTFLine ->輸入匡底線
        • UILabel *explainLab -> 存款金額提示
        • UIView *btnView -> 快選金額
        • UILabel *actualAmountTitleLab -> 可得金額標題
        • UILabel *actualAmountLab -> 可得金額
        • UIButton *goDepositBtn -> 立即存款
##### 1.4 CloudFlashPaymentView (雲閃付)
        • UIScrollView *myScrollView -> 容器
        • UIButton *remindBtn -> 溫馨提醒
        • UILabel *depositAmountLab -> 存款金額
        • UITextField *amountTF -> 金額輸入匡
        • UIView *amountTFLine ->輸入匡底線
        • UILabel *explainLab -> 存款金額提示
        • UIView *btnView -> 快選金額
        • UILabel *actualAmountTitleLab -> 可得金額標題
        • UILabel *actualAmountLab -> 可得金額
        • UIButton *goDepositBtn -> 立即存款
##### 1.5 JDWalletView (京東錢包)
        • UIScrollView *myScrollView -> 容器
        • UIButton *remindBtn -> 溫馨提醒
        • UILabel *depositAmountLab -> 存款金額
        • UITextField *amountTF -> 金額輸入匡
        • UIView *amountTFLine ->輸入匡底線
        • UILabel *explainLab -> 存款金額提示
        • UIView *btnView -> 快選金額
        • UILabel *actualAmountTitleLab -> 可得金額標題
        • UILabel *actualAmountLab -> 可得金額
        • UIButton *goDepositBtn -> 立即存款
##### 1.6 BetwayCardPayView (必威卡)
        • UIScrollView *myScrollView -> 容器
        • UIButton *remindBtn -> 溫馨提醒
        • UILabel *dateLab -> 到帳時間
        • UILabel *cardSerialNumberLab -> 必威卡序列號
        • UITextField *cardSerialNumberTF -> 必威卡序列號輸入匡
        • UIView *cardSerialNumberTFLine -> 必威卡序列號輸入匡底線
        • UILabel *cardSerialNumberHintLab -> 必威卡序列號輸入匡提示
        • UILabel *cardCipherLab -> 必威卡密碼
        • UITextField *cardCipherTF -> 必威卡密碼輸入匡
        • UIView *cardCipherTFLine -> 必威卡密碼輸入匡底線
        • UILabel *cardCipherHintLab -> 必威卡密碼輸入匡提示
        • UILabel *depositAmountLab -> 存款金額
        • UITextField *amountTF -> 金額輸入匡
        • UIView *amountTFLine ->輸入匡底線
        • UILabel *explainLab -> 存款金額提示
        • UIView *btnView -> 快選金額
        • UIButton *goDepositBtn -> 立即存款
#### 2.轉帳
##### 2.1 MyCouponView (專屬優惠券)
        • UILabel *contentLable -> 優惠券內容
        • UITextField *couponField -> 優惠券輸入匡
        • UILabel *tipsLable ->  優惠券提示
        • UILabel *warningLable -> 申請金額提示
##### 2.2 TransferAccountsView
        • UIScrollView *myScrollView -> 容器
        • UIButton *remindBtn -> 溫馨提醒
        • UILabel *sourceAccountLab -> 源自帳戶
        • UILabel *sourceAccountMoney -> 源自帳戶餘額
        • UITextField *sourceAccountTF -> 源自目標帳戶輸入匡
        • UIView *sourceAccountTFLine -> 目標帳戶輸入匡底線
        • UILabel *targetAccountLab -> 目標帳戶
        • UILabel *targetAccountMoney -> 目標帳戶餘額
        • UITextField *targetAccountTF -> 目標帳戶輸入匡 
        • UIView *targetAccountTFLine -> 目標帳戶底線
        • UILabel *amountLab -> 轉帳金額
        • UITextField *amountTF -> 轉帳金額輸入匡
        • UIView *amountTFLine -> 轉帳金額輸入匡底線
        • UILabel *lbTransferHint -> 轉帳金額提示
        • UIButton *goDepositBtn -> 立即轉帳
##### 2.3 TransferSuccessViewController
        • UIScrollView *myScrollView -> 容器
        • UIImageView *alertImgView -> 成功圖示
        • UILabel *titleLab -> 標題
        • UILabel *alertLab -> 提示訊息
        • UIButton *personalCenterBtn -> 關閉
##### 2.4 BonusItemView
        • UIView *topView -> 上方區塊
        • UIView *centerView -> 中間區塊
        • UIView *bottomView -> 下方區塊
        • UITextField *couponField -> 優惠券代碼輸入匡
##### 2.5 UnfinishedGameHeaderView
        • UILabel *lbPlatform -> 未完成遊戲的分類
##### 2.6 UnfinishedGamesPromptViewController
        • NSLayoutConstraint *FakeNavgationBarHeight -> 客製化天的高
        • UIButton *backButton -> 返回按鈕
        • UITableView *tableView -> 未完成遊戲列表
##### 2.7 UnfinishedGameCell
        • UIImageView *imgGame -> 遊戲預覽圖
        • UILabel *lbGameTitle -> 遊戲名稱
###### 2.8 ReminderPageViewController
        • UIScrollView *myScrollView -> 容器
        • UILabel *DepositRestrictionLab -> 存款限制
        • UILabel *DepositRestrictionContentLab -> 存款限制提示內容
        • UILabel *RemindYouLab -> 提醒您
        • UILabel *RemindYouContentLab -> 提醒您內容
##### 2.9 RealNameViewController
        • UIScrollView *myScrollView -> 容器
        • UIImageView *alertImgView -> 提示圖
        • UILabel *alertLab -> 提示訊息
        • UILabel *realNameLab -> 真實姓名
        • UITextField *realNameTF -> 真實姓名輸入匡
        • UIView *realNameTFLine -> 真實姓名輸入匡底線
        • UILabel *realNameWordingLab -> 真實姓名提示
        • UIButton *sendRealNameBtn -> 送出
        • UILabel *pageWordingLab -> 真實姓名只能輸入一次的提示
##### 2.10 RealNameSuccessViewController
        • UIScrollView *myScrollView -> 容器
        • UIImageView *alertImgView -> 成功圖示
        • UILabel *titleLab -> 成功標題
        • UILabel *alertLab -> 成功提示訊息
        • UIButton *personalCenterBtn -> 關閉
##### 2.11 NeedCompletedPersonalDataViewController
        • UIScrollView *myScrollView -> 容器
        • UIImageView *alertImgView -> 提示圖
        • UILabel *alertLab -> 提示訊息
        • UIButton *personalCenterBtn -> 關閉
### 訊息
#### 1. MessageViewController
        • DLLRUCache *cache -> 頁籤的cache
        • DLScrollTabbarItem *item -> 頁籤元件
        • DLCustomSlideView *slideView -> 頁籤的內頁
        • DLScrollTabbarView *tabbar -> 頁籤區塊
        • YTDropMenu *dropMenu -> 下拉選單
#### 2. MessageTableViewViewController
        • UITableView *tableView -> 訊息列表
        • UIRefreshControl *refreshControl -> 下拉刷新元件
#### 3.MessageTableViewCell
        • UIView *isRead -> 未讀的紅點
        • UILabel *typeLab -> 訊息類別
        • UILabel *dateLab -> 訊息日期
        • UILabel *titleLab -> 訊息標題
#### 4.MessageDetailsViewController
        • UIScrollView *myScrollView -> 容器
        • UILabel *typeLab -> 訊息類別
        • UILabel *dateLab -> 訊息日期
        • UILabel *titleLab -> 訊息標題
        • UIView *lineView -> 分隔線
        • UILabel *contenLab -> 訊息內容
### 會員中心
#### 1. MemberCenterViewController
        • UITableView *tableView -> 列表
        • UIView *tabeViewHeadView -> 頂部的view
#### 2. UpdateVersionView
        • UILabel *titleLab ->  提示訊息
        • UIButton *btnUpdate -> 更新按鈕
        • UILabel *versionLab -> 版本號
#### 3. NotLoginTableViewCell
        • UIView *topLine -> 頂部分隔線
        • UIView *bottomLine -> 底部分隔線
        • UIImageView *imgView -> icon
        • UILabel *titleLab -> 標題
        • UIImageView *rightView -> (>)圖示
        • UIView *cellLine -> cell 的分隔線
        • UISwitch *rightSwitch -> 開關
        • UILabel *lbBadge -> 公告未讀則數
#### 4. AlreadyLoginSectionFirstTableViewCell (第一區塊)
        • UIImageView *moneyImgView -> icon
        • UILabel *mainBalanceLab -> 主帳戶餘額
        • UILabel *mainBalanceMoneyLab -> 主帳戶餘額的金額
        • UIButton *refreshBalancesBtn -> 刷新按鈕
        • UIView *mainBalanceLine -> 主帳戶餘額區塊下方的分隔線
        • UIButton *rechargeBtn -> 充值
        • UILabel *sportsBalanceLab -> 體育帳戶餘額
        • UILabel *sportsBalanceMoneyLab -> 體育帳戶餘額的金額
        • UIView *sportsBalanceLine -> 體育帳戶底餘額下的分隔線
        • UILabel *realPersonBalanceLab -> 真人帳戶餘額
        • UILabel *realPersonBalanceMoneyLab -> 真人帳戶餘額的金額 
        • UIView *realPersonBalanceLine -> 真人帳戶餘額底下的分隔線
        • UILabel *gameBalanceLab -> 遊戲帳戶餘額
        • UILabel *gameBalanceMoneyLab -> 遊戲帳戶餘額的金額
        • UIView *gameBalanceLine ->  遊戲帳戶餘額底下的分隔線
        • UILabel *PTgameBalanceLab -> PT遊戲帳戶餘額
        • UILabel *PTgameBalanceMoneyLab -> PT遊戲帳戶餘額的金額
        • UIView *PTgameBalanceLine ->  PT遊戲帳戶餘額底下的分隔線
#### 5.AlreadyLoginSectionSecondTableViewCell (第二區塊)
        • UIView *topLine -> 頂部的線
        • UIView *bottomLine -> 底部的線
        • UIImageView *imgView -> 左邊的icon
        • UILabel *titleLab -> 標題
        • UIImageView *rightView -> 右邊的icon
        • UIView *cellLine -> 分隔線
        • UISwitch *rightSwitch -> 開關
        • UILabel *lbBadge -> 公告未讀則數
#### 6.AlreadyLoginSectionThirdTableViewCell(第三區塊)
        • UIView *topLine -> 頂部的線
        • UIView *bottomLine -> 底部的線
        • UIImageView *imgView -> 左邊的icon
        • UILabel *titleLab -> 標題
        • UIImageView *rightView -> 右邊的icon
        • UIView *cellLine -> 分隔線
#### 7.AlreadyLogginHeadView
        • UIImageView *topImgView ->  背景圖
        • UIButton *headBtn ->  默認頭像
        • UIView *btnView -> 編輯個人資料區塊       
        • UILabel *userLab -> 使用者
        • UILabel *editSelfLab -> 編輯個人資料
        • UIButton *editBtn -> 編輯按鈕
        • UIButton *arrowBtn -> (>)按鈕
#### 8.AlreadyLogginFootView
        • UILabel *titleLab -> 底部的提醒字樣
        • UIButton *logoutBtn -> 退出帳號
        • UpdateVersionView *updateVersionView -> 版本資訊
#### 9.NotLoginHeadView
        • UIImageView *topImgView -> 背景圖
        • UIButton *headBtn -> 默認頭像
        • UIView *btnView -> 登入/註冊的區塊                              
        • UILabel *loginLab -> 登入/註冊按鈕
#### 10.PTPasswordManagementViewController
        • PTPasswordManagementView *passwordManagementView -> 遊戲密碼管理內頁
        • UIButton *registBtn -> 註冊或保存
##### 10.1 PTPasswordManagementView
        • UIView  *bgView -> 背景
        • UILabel *userNameLab -> PT遊戲用戶名
        • UILabel *prefixUserLab -> bw8_
        • UITextField *userNameTF -> 用戶名輸入匡
        • UIView *userNameTFLine -> 用戶名輸入匡底線
        • UILabel *ptPasswordLab -> PT遊戲下載版密碼
        • UITextField *ptPasswordTF -> 密碼輸入匡
        • UIView *ptPasswordTFLine -> 密碼輸入匡底線
        • UILabel *surePtPasswordLab -> 確認PT遊戲下載版密碼 
        • UITextField *surePtPasswordTF -> 確認密碼輸入匡
        • UIView *surePtPasswordTFLine -> 確認密碼輸入匡底線
        • UILabel *noteLab -> 下方提示訊息
        • UILabel *userNameWarnningLabel -> 帳號錯誤提醒
        • UILabel *passwordWarnningLabel -> 密碼錯誤提醒
        • UILabel *confirmPasswordWarnningLabel -> 確認密碼錯誤提醒
#### 11. EditPersonalDataViewController
        • EditPersonDataView *editPersonDataView -> 編輯個人資料頁面
##### 11.1 EditPersonDataView
        • UIScrollView *myScrollView -> 容器
        • UIView *personDataView ->  個人資料區塊
        • UILabel *realNameLab -> 真實姓名
        • UITextField *realNameTF -> 真實姓名輸入匡
        • UIView *realNameTFLine -> 真實姓名輸入匡底線
        • UILabel *lbHintOfRealName -> 真實姓名錯誤提醒
        • UILabel *IDNumberLab -> 身分證字號
        • UITextField *IDNumberTF -> 身分證字號輸入匡
        • UIView *IDNumberTFLine -> 身分證字號輸入匡底線
        • UILabel *lbHintOfIDNumber -> 身分證字號錯誤提醒
        • UILabel *genderLab -> 性別
        • UITextField *genderTF -> 性別輸入匡
        • UIView *genderTFLine -> 性別輸入匡底線
        • UILabel *birthDateLab -> 生日
        • UITextField *birthDateTF -> 生日輸入匡
        • UIView *birthDateTFLine -> 生日輸入匡底線
        • UIView *contactDataView -> 聯絡訊息區塊
        • UIImageView *contactDataMessageImgView -> 驗證郵件及手機號...的圖示
        • UILabel *emailAddressLab -> 郵件地址
        • UIView *emailAddressTVView -> 郵件地址輸入匡的區塊 
        • CMInputView *emailAddressTV -> 郵件地址輸入匡
        • UILabel *lbEmailAddress -> 郵件地址(有填過會將使用者的電郵顯示在這)
        • UIButton *submitAddressBtn -> 驗證按鈕
        • UIImageView *isAddressImgView -> 電郵驗證通過的綠勾
        • UIView *emailAddressTVLine -> 郵件地址輸入匡底線
        • UILabel *lbHintOfEmailAddress -> 郵件地址錯誤提示
        • UILabel *areaCodeLab -> 國碼
        • UILabel *telNumberLab -> 聯繫電話
        • UIView *telNumberView -> 聯繫電話輸入匡的區塊
        • UITextField *telNumberTF -> 聯繫電話輸入匡
        • UIImageView *telImgView -> 聯繫電話驗證成功的綠勾
        • UILabel *preferredAccountLab -> 首選賬戶
        • UITextField *preferredAccountTF -> 首選賬戶輸入匡
        • UIView *preferredAccountTFLine -> 首選賬戶輸入匡底線
        • UILabel *countryLab -> 國家
        • UITextField *countryTF -> 國家輸入匡
        • UIView *countryTFLine -> 國家輸入匡底線
        • UILabel *addressLab -> 聯繫地址
        • UITextView *addressTV -> 聯繫地址輸入匡
        • UILabel *addressTVPlaceholder -> 聯繫地址輸入匡的提示字樣
        • UIView *addressTVLine -> 聯繫地址輸入匡底線
        • UILabel *lbHintOfAddress -> 聯繫地址錯誤提示
        • UILabel *cityLab -> 城市
        • UITextField *cityTF -> 城市輸入匡
        • UIView *cityTFLine -> 城市輸入匡底線
        • UILabel *lbHintOfCity -> 城市錯誤提示
        • UILabel *zipCodeLab -> 郵編
        • UITextField *zipCodeTF -> 郵編輸入匡
        • UIView *zipCodeTFLine -> 郵編輸入匡底線
        • UILabel *lbHintOfZipCode -> 郵編錯誤提示 
        • UILabel *wechatAccountLab -> 微信帳號
        • UITextField *wechatAccountTF -> 微信帳號輸入匡
        • UIView *wechatAccountTFLine -> 微信帳號輸入匡底線
        • UILabel *lbHintOfWechatAccount -> 微信帳號錯誤提示
        • UIView *safetyProblemDataView -> 安全問題/答案區塊
        • UILabel *safetyProblemLab -> 安全問題
        • UITextField *safetyProblemTF -> 安全問題輸入匡
        • UIView *safetyProblemTFLine -> 安全問題輸入匡底線
        • UILabel *lbHintOfSafetyQuestion -> 安全問題錯誤提示
        • UILabel *safetyAnswerLab -> 安全答案
        • UITextField *safetyAnswerTF -> 安全答案輸入匡
        • UIView *safetyAnswerTFLine -> 安全答案輸入匡底線
        • UILabel *lbHintOfSafetyAnswer -> 安全答案錯誤提示
#### 12.VerificationMailboxViewController
        • UIScrollView *myScrollView -> 容器
        • UILabel *mailboxLab -> 電郵
        • UIView *mailboxView -> 電郵輸入匡區塊
        • UITextView *mailboxTV -> 電郵輸入匡
        • UILabel *mailboxTVPlaceholder -> 電郵輸入匡提示
        • UIButton *sendBtn -> 送出
        • UIActivityIndicatorView *activityIndicator -> iOS原生的loadingView
#### 13. AboutUSViewController
        • AboutUSView *aboutUSView -> 關於我們的內容
##### 13.1AboutUSView
        • UIScrollView *myScrollView -> 容器
        • UILabel *ourBrandLab -> 我們的品牌
        • UIView *ourBrandLine -> 分隔線
        • UILabel *ourBrandContent -> 我們的品牌內容 
        • UIImageView *europeImgView -> betway歐洲 icon
        • UILabel *europeContentLab -> betway歐洲 內容
        • UIImageView *asiaImgView -> betway亞洲 icon
        • UILabel *asiaContentLab -> betway亞洲 內容
        • UILabel *ourProductLab -> 我們的產品
        • UIView *ourProductLine -> 我們的產品分隔線
        • UILabel *ourProductContent -> 我們的產品內容
        • UIImageView *realPeopleImgView -> betway 真人 icon
        • UILabel *realPeopleContentLab -> betway 真人 內容
        • UIImageView *sportsImgView -> betway 體育 icon
        • UILabel *sportsContentLab -> betway 體育 內容
        • UIImageView *gameImgView -> betway 遊戲 icon
        • UILabel *gameContentLab -> betway 遊戲 內容
#### 14.PasswordManagementViewController
        • PasswordManagementView *passwordManagementView -> 修改密碼內頁
        • UIButton *saveItem -> 保存
        • UIButton *backItem -> 返回
##### 14.1 PasswordManagementView
        • UIScrollView *myScrollView -> 容器
        • UILabel *currentPasswordLab -> 當前密碼
        • UITextField *currentPasswordTF -> 當前密碼輸入匡
        • UIView *currentPasswordTFLine -> 當前密碼輸入匡底線
        • UILabel *newPasswordLab -> 新的密碼 
        • UITextField *newPasswordTF -> 新的密碼輸入匡
        • UIView *newPasswordTFLine -> 新的密碼輸入匡底線
        • UILabel *confirmPasswordLab -> 確認密碼
        • UITextField *confirmPasswordTF -> 確認密碼輸入匡
        • UIView *confirmPasswordTFLine -> 確認密碼輸入匡底線
        • UILabel *passwordWarnningLabel -> 新密碼錯誤提示
        • UILabel *confirmPasswordWarnningLabel -> 確認密碼錯誤提示
        • UILabel *oldPasswordWarnningLabel -> 當前密碼錯誤提示
#### 15 DrawMoneyViewController
        • UIScrollView *myScrollView -> 容器
        • UIImageView *headImgView -> 主帳戶的背景
        • UILabel *mainAccountLab -> 主賬戶
        • UIButton *refreshBtn -> 刷新按鈕
        • UILabel *RMBLab -> RMB
        • UILabel *moneyLab -> 主帳戶餘額
        • UIButton *remindBtn -> 溫馨提醒
        • UILabel *drawMoneyLab -> 提款金額
        • UITextField *drawMoneyTF -> 提款金額輸入匡
        • UIView *drawMoneyTFLine -> 提款金額輸入匡底線
        • UILabel *tipsLab -> 提款金額提示
        • UILabel *drawAccountLab -> 提款帳戶
        • UIButton *goDrawBtn -> 立即提款
        • UILabel *noDrawAccountLab -> 沒有提款帳戶
        • UIButton *goSetBtn -> 設定
        • UIView *bgView -> 提款帳戶區塊
        • UILabel *bankNameLab -> 帳戶名稱
        • UILabel *addressLab -> 地址
        • UILabel *branchLab -> 分行
        • UIView *lineView -> 分隔線
        • UILabel *bankAccountLab -> 帳戶號碼 
        • UILabel *holderNameLab -> 持有人
#### 16.PersonInfoShouldCompleteViewController
        • 繼承 NeedCompletedPersonalDataViewController，為了塞不同的alertLab且屬於提款專用
#### 17.DrawMoneySuccessViewController
        • UIScrollView *myScrollView -> 容器
        • UIImageView *alertImgView -> 成功icon
        • UILabel *titleLab -> 提款提交成功
        • UILabel *alertLab -> 提款成功相關訊息
        • UIButton *personalCenterBtn -> 關閉
#### 18.TransactionRecordViewController
        • DLLRUCache *cache -> 頁籤的cache
        • DLScrollTabbarItem *item -> 頁籤元件
        • DLCustomSlideView *slideView -> 頁籤的內頁
        • DLScrollTabbarView *tabbar -> 頁籤區塊
#### 19. TransactionRecordTableViewViewController
        • UIView *dateView -> 起始/結束日期選擇區塊
        • UIView *dateViewLine -> 區塊底下的線
        • UIImageView *timeImgView -> 時鐘icon
        • UITextField *startTimeTF -> 開始時間輸入匡
        • UILabel *lineLab -> "~"
        • UITextField *endTimeTF -> 結束時間輸入匡
        • UITableView *tableView -> 列表
##### 19.1 WithdrawalsRecordTableViewCell
        • UIView *bgView -> 卡片背景
        • UILabel *transactionTypeLab -> 交易類型
        • UILabel *transactionNumberLab -> 交易編號
        • UILabel *transactionAmountlab -> 交易金額
        • UILabel *transactionDetailsLab -> 交易詳情
        • UILabel *transactionDetailsContentLab -> 交易詳情-內容
        • UILabel *serviceChargeLab -> 手續費
        • UILabel *transactionStateLab -> 交易狀態
        • UILabel *transactionTimeLab -> 交易時間
        • UIButton *cancelBtn -> 取消/已取消
##### 19.2 TransferRecordTableViewCell
        • UIView *bgView -> 卡片背景
        • UILabel *transactionTypeLab -> 交易類型
        • UILabel *transactionNumberLab -> 交易編號
        • UILabel *transactionAmountlab -> 交易金額
        • UILabel *transactionDetailsLab -> 交易詳情
        • UILabel *transactionDetailsContentLab -> 交易詳情-內容
        • UILabel *serviceChargeLab -> 手續費
        • UILabel *transactionStateLab -> 交易狀態
        • UILabel *transactionTimeLab -> 交易時間
##### 19.3 DepositRecordTableViewCell
        • UIView *bgView -> 卡片背景
        • UILabel *transactionTypeLab -> 交易類型
        • UILabel *transactionNumberLab -> 交易編號
        • UILabel *transactionAmountlab -> 交易金額
        • UILabel *transactionDetailsLab -> 交易詳情
        • UILabel *transactionDetailsContentLab -> 交易詳情-內容
        • UILabel *serviceChargeLab -> 手續費
        • UILabel *transactionStateLab -> 交易狀態
        • UILabel *transactionTimeLab -> 交易時間
#### 20 BankManagementViewController
        • UITableView *tableView -> 列表
#### 21 AddBankAccountViewController
        • AddBankAccountView *addBankAccountView -> 添加銀行資料內頁
##### 21.1 AddBankAccountView
        • UIScrollView *myScrollView -> 容器
        • UILabel *holderNameLab -> 帳戶持有者姓名
        • UITextField *holderNameTF -> 帳戶持有者姓名輸入匡 
        • UIView *holderNameTFLine -> 帳戶持有者姓名輸入匡底線
        • UILabel *lbHintOFHolderName -> 帳戶持有者姓名錯誤提示 
        • UILabel *bankNameLab -> 銀行名稱
        • UITextField *bankNameTF -> 銀行名稱輸入匡
        • UIView *bankNameTFLine -> 銀行名稱輸入匡底線
        • UILabel *lbHintOfBankName -> 銀行名稱錯誤提示
        • UILabel *bankNameKeyByUserLab -> 使用者輸入的銀行名稱
        • UITextField *bankNameKeyByUserTF -> 使用者輸入的銀行名稱輸入匡
        • UIView *bankNameKeyByUserTFLine -> 使用者輸入的銀行名稱輸入匡提示
        • UILabel *lbHintOFBankKeyByUser -> 使用者輸入的銀行名稱錯誤提示
        • UILabel *bankAccountLab -> 銀行帳號
        • UITextField *bankAccountTF -> 銀行帳號輸入匡
        • UIView *bankAccountTFLine -> 銀行帳號輸入匡底線
        • UILabel *lbHintOFBankAccount -> 銀行帳號錯誤提示
        • UILabel *provinceLab -> 省
        • UITextField *provinceTF -> 省輸入匡
        • UIView *provinceTFLine -> 省輸入匡底線
        • UILabel *lbHintOFProvince -> 省錯誤提示
        • UILabel *cityLab -> 城市
        • UITextField *cityTF -> 城市輸入匡
        • UIView *cityTFLine -> 城市輸入匡底線
        • UILabel *lbHintOFCity -> 城市錯誤提示
        • UILabel *branchLab -> 分行
        • UITextField *branchTF -> 分行輸入匡
        • UIView *branchTFLine -> 分行輸入匡底線
        • UILabel *lbHintOFBanch -> 分行錯誤提示
##### 21.2 BankEmptyTableViewCell
        • UIImageView *imageview -> "+" icon
        • UILabel *titleLab -> 新增银行资料
        • UIImageView *arrowImageView -> ">" icon
##### 21.3 HaveBankTableViewCell
        • UIView *bgView -> 背景
        • UILabel *bankNameLab -> 銀行名稱
        • UILabel *addressLab -> 地址
        • UILabel *branchLab -> 分行
        • UILabel *bankAccountLab -> 銀行帳號
        • UILabel *holderNameLab -> 持有者姓名
#### 22. DividendDataViewController
        • UIView *topLineView -> 頂部區塊
        • DividendOverviewView *dividendOverviewView -> 紅利概覽 
        • QueryDividendDataView *queryDividendDataView -> 查詢紅利紀錄
        • BackwaterDiscountView *backwaterDiscountView -> 反水優惠
##### 22.1 DividendOverviewView
        • UIView *topView -> 頂部取快
        • UIView *lineView -> 中間分隔線
        • UIView *bottomLineView -> 底部分隔線
        • UILabel *canReceiveLab -> 可領取紅利
        • UILabel *canReceiveContentLab -> 可領取紅利金額
        • UILabel *unlockedLab -> 未解鎖紅利
        • UILabel *unlockedContentLab -> 未解鎖紅利
        • UILabel *soonExpireLab -> 即將過期的紅利
        • UITableView *tableView -> 列表
        • UIRefreshControl *refreshControl -> 下拉刷新
###### 22.1.1 DividendOverviewTableViewHeader
        • UILabel *dateLab -> 日期
        • UILabel *moneyLab -> 金額
        • UIImageView *arrowBtn -> ">" icon
###### 22.1.2 DividendOverviewTableViewCell
        • UILabel *typeLab -> 類型
        • UILabel *startDateLab -> 開始時間
        • UILabel *contentMoneyLab -> 金額
        • UILabel *contentTitleLab -> 標題
        • UILabel *endDateLab -> 結束時間
        • UILabel *endDateContentLab -> 結束時間內容
        • UILabel *progressLab -> 狀態
        • UIView  *contentLine -> 分隔線
        • UILabel *targetDividendLab -> 目標紅利狀態
        • UILabel *flowingWaterLab -> 流水
        • UIButton *receiveBtn -> 領取
##### 22.2 QueryDividendDataView
        • UIView *topView -> 查詢區塊
        • UILabel *desireQueryMonthLab -> 欲查詢月份
        • UILabel *accountSourceLab -> 帳戶來源
        • UIView *desireQueryMonthTF -> 欲查詢月份的view
        • UIImageView *calendarImgView -> 日曆圖示
        • UILabel *monthLab -> 月份時間
        • UIView *accountSourceTF -> 帳戶來源輸入匡
        • UIImageView *moneyImgView -> 帳戶圖示
        • UILabel *bankLab -> 銀行/帳戶
        • UIImageView *arrowImgView -> 下角icon
        • UIButton *queryBtn -> 搜尋按鈕
        • UILabel *alertLab -> 查詢紅利紀錄提示
        • UITableView *tableView -> 列表
###### 22.2.1 BWPickerView
        • 月份及源自帳戶的picker
###### 22.2.2 QueryDividendDataTableViewCell
        • UIView  *bgView -> 背景
        • UILabel *typeLab -> 類型
        • UILabel *startDateLab -> 開始時間
        • UILabel *contentMoneyLab -> 金額
        • UILabel *contentTitleLab -> 標題
        • UILabel *endDateLab -> 過期日期
        • UILabel *endDateContentLab -> 過期日期時間
        • UILabel *progressLab -> 狀態
        • UIView  *contentLine -> 分隔線
        • UILabel *targetDividendLab -> 紅利目標狀態
        • UILabel *flowingWaterLab -> 流水
        • UIButton *receiveBtn -> 領取
##### 22.3 BackwaterDiscountView
        • UITableView *tableView -> 列表
        • UIRefreshControl *refreshControl -> 下拉刷新
###### 22.3.1 BackwaterDiscountTableViewCell
        • UIView *bgView -> 背景
        • UITableView *tableView -> 列表
###### 22.3.2 BackwaterDiscountCellTableViewCell
        • UIView *cellView -> 下方可展開的區塊
        • UILabel *levelRangeLab -> 等級範圍
        • UILabel *levelRangeContentLab -> 等級範圍內容
        • UIImageView *arrowImgView -> 下箭頭
        • UIView *cellLine -> 分隔線
        • UIView *cellContentView -> 上方內容區塊
        • UILabel *effectiveBettingLab -> 有效投注
        • UILabel *effectiveBettingContentLab -> 投注內容
        • UILabel *backWaterScaleLab -> 反水比例
        • UILabel *backWaterScaleContentLab -> 反水比例內容
        • UIView *cellContentViewLine1  -> 第一條分隔線
        • UILabel *backWaterMoneyLab -> 反水金額
        • UILabel *backWaterMoneyContentLab -> 反水金額內容
        • UIView *cellContentViewLine2 -> 第二條分隔線
#### 23. ExclusivePreferenceViewController
        • UIImageView *topImgView -> 上方圖
        • UIView *bottomView -> 底部圖
        • UILabel *couponCodeLab  -> 優惠券代碼
        • UITextField *couponCodeTF -> 優惠券代碼輸入匡
        • UILabel *couponCodeWarrningLab -> 優惠券代碼錯誤提示
        • UIView *couponCodeTFLine -> 優惠券代碼輸入匡底線
        • UIButton *submitBtn -> 優惠券代碼提交
#### 24. NoticeViewController
        • DLLRUCache *cache -> 頁籤的cache
        • DLScrollTabbarItem *item -> 頁籤元件
        • DLCustomSlideView *slideView -> 頁籤的內頁
        • DLScrollTabbarView *tabbar -> 頁籤區塊
##### 24.1 NoticeTableViewViewController
        • UITableView *tableView -> 列表
##### 24.1.1 DiscountNoticeTableViewCell
        • UIView *bgView -> 卡片背景
        • UILabel *typeLab -> 公告類型
        • UILabel *dateLab -> 公告日期
        • UILabel *titleLab -> 公告標題
        • UIButton *lookBtn -> 觀看內容按鈕
        • UIButton *arrowBtn -> ">"按鈕
        • UILabel *contentLab -> 公告內容
##### 24.1.2 NewNoticeTableViewCell
        • UIView *bgView -> 卡片背景
        • UILabel *typeLab -> 公告類型
        • UILabel *dateLab -> 公告日期
        • UILabel *titleLab -> 公告標題
        • UIButton *lookBtn -> 觀看內容按鈕
        • UIButton *arrowBtn -> ">"按鈕
        • UILabel *contentLab -> 公告內容
##### 24.1.3 EspeciallyNoticeTableViewCell
        • UIView *bgView -> 卡片背景
        • UILabel *typeLab -> 公告類型
        • UILabel *dateLab -> 公告日期
        • UILabel *titleLab -> 公告標題
        • UIButton *lookBtn -> 觀看內容按鈕
        • UIButton *arrowBtn -> ">"按鈕
        • UILabel *contentLab -> 公告內容
###  基礎頁面

## 3. 各模塊內程式架構/邏輯
### 3.0 AppDelage 初始化模組：

#### function didFinishLaunchingWithOptions
        (1). 友盟sdk初始化
        (2). branch io sdk初始化
        (3). 使用NSUserDefault 儲存 affiliateCode, 並設置 key 值為 DeepLinkRegisterBonusCode
        (4). 初始化 UserInfoManager 模組. 該模組使用來記錄使用者相關資訊.
        (5). 初始化 Reachability 工具. 該工具為偵測網路事件工具.
        (6). 使用NSUserDefault 儲存/重設 kShowMultiLogoutMessage 設定值. 該值是用來判斷當頁面有多支api都會回傳401 or 403時, 除第一次要跳訊息外, 其他QA 不希望重複跳出"您的账号已经被登出，请重新登录"提示訊息. 因此多設置一個值來做判斷. 該值會在提示訊息跳出時設置為NO, 在登出時重新設置為YES.
        (7). NSNotificationCenter 新增 reachabilityDidChange 事件, 偵測網路狀態是否有改變.
        (8). NSNotificationCenter 新增 goAction 事件, 統一處理tabBarVC導頁需求.
        
#### function applicationDidBecomeActive
        (1). 版本檢查
        
#### function didRegisterForRemoteNotificationsWithDeviceToken 
        (1). 取得推播 device token 並做友盟及api註冊.
        
#### function didReceiveRemoteNotification
        (1). iOS9 的推播事件會在這裡處理
        
#### function userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler
        (1). iOS10 的推播事件會在這裡處理
        
#### function handleNotificationRefreshEvent
        (1). 統一處理推播更新事件並更新api資料時
        事件以及相關動作分別為 :
        • NewGameArrival          -> call getGameLobbyInfo api
        • SettingsChanged         -> call getWithdrawSettings api
        • NewDepositMethodArrival -> call getDepositPaymentMethods api
        • NewPromotionArrival     -> call getPromotionList and getLobbyBanners api
        • NewBonusArrival         -> call getBonusList and getLobbyBanners api
        • NewBannerArrival        -> call getLobbyBanners api
        
#### function handleNotificationFunctionEvent
        (1). 統一處理推播功能事件
        功能及相關動作分別為 :
        CheckVersion -> call checkAppVersion api (檢查版本更新)

### 3.1 登入及公用頁面

        登入功能頁面分為一般帳密登入、生物辨識登入、忘記密碼、忘記用戶名、驗證手機以及用戶註冊功能
        
### 3.1.1  一般登入、指紋登入及臉部辨識登入

        頁面邏輯 :
        (1). 頁面開啟會先生成畫面所有元件
        
        (2.1). 檢查使用者是否可以使用生物辨識功能 checkIsShowBiometricBtn(), 當使用者手機可以使用生物辨識並在會員登入頁面有開啟時, 需顯示生物辨識登入按鈕, 並將頁面導致生物辨識頁面. 這邊會依據使用者裝置的不同, 再決定要開啟指紋或是臉部辨識頁面.
        
        (2.2). 當使用者沒有開啟生物辨識功能或是初次登入, 使用者需自行輸入帳號及密碼做登入.
        
        (3). 當使用者登入成功後, 除了更新使用者資訊(UserInformationResponseData)外, 另外會特別更新以下資料.
        • kShowMultiLogoutMessage : 將401/403錯誤訊息狀態設為YES, 表示下次會顯示錯誤訊息
        • kEventUserDidLogout : 登出狀態設為NO
        • 取得 kGoActionValue 狀態. 此設定值是用來判斷在登入完成後, 是否要到特別頁面去. 配合AppDelegate's goAction method 使用
        • 更新推播狀態
        
        (4). 當使用者沒有輸入過手機時, 須將之導致手機號碼驗證頁(VerifyPhoneViewController)
        (5). 更新kUserName 以及 kPassword 值, 給生物辨識登入使用.
        (6). 判斷如果非同帳號登入時, 須將 kIsTouchOrFaceIDLogin 值設定為NO, 避免下次使用到錯誤的帳號登入.
        
        P.S. 一般登入有個共用方法 show(), 這個是給其他頁面要呼叫登入功能時使用.

### 3.1.2 忘記密碼

        頁面邏輯 :
        (1). 頁面開啟會先生成畫面所有元件
        (2). 依據使用者輸入的帳號及電話先做帳號驗證動作(call checkUserAccount api).
        (3). 發送api取得驗證碼( call sendSMSCode api).
        (3.1) api 回傳成功及簡訊發送成功, 顯示簡訊號碼輸入框
        (3.2) api 回傳值失敗時, 顯示 简讯验证码错误 訊息
        (3.3) api 回傳值成功但簡訊發送失敗, 依據errorCode顯示錯誤訊息.
        (4). 簡訊驗證(call verifySMSCode api)成功後, 進入 重置密碼頁. 否則依據錯誤訊息顯示錯誤.
        
### 3.1.3 忘記用戶名

        頁面邏輯 :
        (1). 頁面開啟會先生成畫面所有元件
        (2). 依據使用者選擇的生日及電話先做帳號驗證動作(call checkUserBirth api).
        (3). 發送api取得驗證碼( call sendSMSCode api).
        (3.1) api 回傳成功及簡訊發送成功, 顯示簡訊號碼輸入框
        (3.2) api 回傳值失敗時, 顯示 简讯验证码错误 訊息
        (3.3) api 回傳值成功但簡訊發送失敗, 依據errorCode顯示錯誤訊息.
        (4). 簡訊驗證(call verifySMSCode api)成功後, 進入 重置密碼頁. 否則依據錯誤訊息顯示錯誤.
        
### 3.1. 4 用戶註冊
        
        頁面邏輯 :
        (1). 頁面開啟會先生成畫面所有元件
        (2). 使用者填完並驗證過欄位資料後, 判斷是否有輸入優惠卷代碼.
        (2.1) 有輸入優惠卷代碼, 先做coupon卷驗證(call getCouponInfo api)
        (2.2) 沒有輸入優惠卷代碼, 直接進入(3)
        (3). call userRegister api做註冊動作. 當註冊成功時, 會導入驗證手機頁面(VerifyPhoneViewController).
        
        P.S. 一般註冊頁面(RegistViewController)目前未使用.

### 3.1.5 驗證手機

        頁面邏輯 :  
        (1). 頁面開啟會先生成畫面所有元件
        (2). 依據使用者輸入的電話發送api取得驗證碼( call sendSMSCode api).
        (2.1) api 回傳成功及簡訊發送成功, 顯示簡訊號碼輸入框
        (2.1) api 回傳值失敗時, 顯示 简讯验证码错误 訊息
        (2.2) api 回傳值成功但簡訊發送失敗, 依據errorCode顯示錯誤訊息.
        (3). 簡訊驗證(call verifySMSCode api)成功後, 進入 重置密碼頁. 否則依據錯誤訊息顯示錯誤.
        
### 3.2 首頁(ViewController)

        首頁組成區塊分別為上方Banner 以及 下方主要遊戲類別區塊(TableView).
        • Banner區塊使用第三方套件TYCyclePagerView實作內容頁, TYPageControl控制換頁行為.
        • 遊戲類別區塊使用 SYTableViewCell 依據 GameCategoryModel 資料模組來呈現畫面layout. 
        • NSNotificationCenter 新增 kEventNewBannerArrival 事件, 偵測推播來的更新狀態.
        • NSNotificationCenter 新增 kEventNewGameArrival 事件, 偵測推播來的更新狀態.
        
        頁面邏輯 :
        (1). 頁面開啟會先生成畫面所有元件
        (2). 當每次進入頁面時(viewWillAppear), 會取得banner資料(call getLobbyBanners api)及遊戲分類資料(call getAllGameCategories api), 並更新畫面.
        
        點擊/滑動行為 : 
        • 頁面時坐下拉更新動作, 當下拉更新時, 會透過 refreshMainPage method 去更新 banner及game category資料
        • 遊戲功能區塊點擊時, 會透過 pushToGameLobbay method 依據不同的 gameCategoryName 去做導頁行為.
        - 當判斷是點擊體育(mobilesportsbook)遊戲類別時, 須先判斷使用者是否登入過, 如果沒有登入須先跳登入頁.
          另外也須判斷使用者帳戶是不是被鎖定, 當帳號被鎖定時, 需轉導客服.
        - 其他類型遊戲直接進入遊戲大廳頁即可.
        
### 3.3 優惠

        ㄧ. 主頁面模組及相關事件 :
        優惠組成區塊分別為上方Banner 以及 下方主要優惠類別選單.其中優惠包含體育優惠、真人優惠、遊戲優惠及特別優惠．
        • Banner區塊使用第三方套件TYCyclePagerView實作內容頁, TYPageControl控制換頁行為.
          - Banner區塊包含下拉選單套件(YTDropMenu)
        • 優惠區塊組成包含
          - 優惠選單部分由DLScrollTabbarView實作
          - 優惠內容頁由DLCustomSlideView實作
        • NSNotificationCenter 新增 kEventRefreshPromotionList 事件, 偵測推播來的更新狀態.
        • NSNotificationCenter 新增 kEventNewBannerArrival 事件, 偵測推播來的更新狀態.
        
        主頁面(DiscountPageViewController)邏輯 :
        (1). 頁面開啟會先生成畫面所有元件
        (2). 每次進入頁面時(viewWillAppear), 會取得banner資料(call getLobbyBanners api)更新banner資料．
        (3). 優惠分類是在App端寫死四種遊戲分類, 分類的子頁面(PageViewController)是在
             - (UIViewController *)DLCustomSlideView:(DLCustomSlideView *)sender controllerAt:(NSInteger)index
             做生成頁面的動作.
        (4). 子頁面生成之後, 會在自己屬於的頁面去取得優惠列表資料(call getPromotionList api)並更新．
        
        二. 优惠滑动分页模組及相關事件 :
        優惠滑動分頁組成區塊僅有自己本身的TableView
        • NSNotificationCenter 新增 NOTIFICATION_DISCOUNT_PAGE_REFRESH 事件, 更新需要顯示的優惠項目.
        • NSNotificationCenter 新增 kEventRefreshPromotionList 事件, 偵測推播來的更新狀態.
        • NSNotificationCenter 新增 kEventNewPromotionArrival 事件, 偵測推播來的更新狀態.
        
        优惠滑动分页(PageViewController)邏輯 :
        
        (1). 頁面開啟會先生成畫面所有元件
        (2). 每次進入頁面時(viewWillAppear), 會取得優惠列表資料(call getPromotionList api)並更新.
        
        點擊/滑動行為 : 
        • 點擊Banner廣告 
          - banner點擊事件會統一在 DiscountPageViewController's actionByPromotionListData method 中做處理.其中 action id 值定義如下(此定義值所有action id共用):
          "3": 立即存款(請至轉帳頁)
          “9”: 立即投注(體育）
          “11”: 立即投注(真人）
          “12”: 立即投注(遊戲）
          “14”: 優惠頁(體育）
          “16”: 優惠頁(真人）
          “17”: 優惠頁(遊戲）
          “18”: 優惠頁(其他）
          “20”: 首頁
          其他數字（0~2, 4, 5, 10, 13, 15, 19）：不作用
          
        • 點擊選單(dropMenu)按鈕 
          - 觸發 dropButtonClick 事件, 該事件會依據是否點擊來判斷是否顯示/隱藏選單頁.
          - 當選擇完需要顯示的條件後, 按下篩選按鈕, 會觸發 
            -(void)dropMenu:(YTDropMenu *)dropMenu didMultiSelectIndexPaths:(NSIndexSet *)selIndexSet 
            以及
            - (void)filterData:(NSIndexSet *)selIndexSet
            以上2個method會去檢查總共選擇了哪些條件, 依據名稱的不同去轉換不同的type值.(ex : 存款优惠 = type 2)
          - 轉換的資料會被儲存在 NSMutableDictionary 容器內, 並發送通知事件(NOTIFICATION_DISCOUNT_PAGE_REFRESH) 通知子頁面(PageViewController)需要做畫面更新.
          - 子頁面在收到更新事件後, 會依據type值並依據api資料做畫面的更新.
        • 點擊優惠項目
          - 點擊優惠圖片, 會生成優惠詳情頁(DiscountDetailsViewController), 該頁面單純顯示優惠資料
          - 點擊立即存款/立即投注等相關按鈕事件, 觸發 PageViewController's actionByPromotionListData method 做動作處理.
### 3.4 存款

        一. 主頁面(DepositPageViewController)模組及相關事件 :
        存款頁區分上方存款/轉帳選擇區塊及下方存款功能業務選單．其中存款實作包含QQ支付、在线支付、本地银行转账、云闪付扫码、京东钱包及必威卡
        • 主頁面生成(開啟)方式區分2種
          - 使用自定義Present方式開啟(call initWithPresent method), 此方法會在頁面左上新增關閉按鈕．
          - 使用一般方式開啟, TabBarItem 即用此方式, 此方法會在頁面左上無關關閉按鈕．
        • 存款區塊包含存款及轉帳2顆按鈕.
        • 存款業務功能區塊組成包含
          - 存款選單部分由DLScrollTabbarView實作
          - 存款內容頁由DLCustomSlideView實作
        • NSNotificationCenter 新增 kEventNewDepositMethodArrival 事件, 偵測推播來的更新狀態.
        • NSNotificationCenter 新增 kEventDespositSuccess 事件, 當存款成功時, 如當下頁面是使用Present方式開啟, 則關掉該頁面.
        • NSNotificationCenter 新增 transfer_success 事件, 當轉帳成功時, 切回首頁
        
        二. 存款頁
        存款功能頁區分為2種不同的類型, 一種為存款完成時, 統一導向Web頁面, 例如 : QQ支付、云闪付扫码、京东钱包以及在线支付等.另一種為自行頁面處理存款完成行為, 例如:本地银行转账及必威卡.
        
        • 存款頁面統一繼承PaymentView, 當有coupon資料時, 每個存款頁須顯示coupon資料. 但coupon資料會在離開小豬頁之後清除.無論使用者是否有使用coupon卷.
        
        存款功能頁面邏輯 : 
        - QQ支付、云闪付扫码、京东钱包、在线支付 : 
        (1). 頁面開啟會先生成畫面所有元件
        (2). 檢查當有coupon卷資料時, 生成couponView.
        (3). 當使用者輸入欄位資料並驗證完成後，會觸發 PaymentView's depositWithWebView method 並 call submitDeposit api 做存款動作.
        (4.1). 存款完成且無使用coupon, 直接開啟WebView提示使用者存款完成
        (4.2). 存款完成且使用coupon, 此時會觸發
            - (BOOL)applyBonus : (TransactionResponseData*) transactionData amount:(NSInteger)amount depositCharges:(double)depositCharges method 
              並 call applyBonus api 做优惠券使用動作. 當api回傳資料無誤時, 將會清空本機端相關coupon資料.如 [UserInfoManager share].bonusData. 最後開啟WebView提示使用者存款完成
          
        - 本地银行转账 :
        (1). 頁面開啟會先生成畫面所有元件
        (2). 檢查當有coupon卷資料時, 生成couponView.
        (3). call getDepositTargetBank api 取得銀行資料.(這邊在儲存暫存資料時會忽略 '支付宝转账' 功能)
        (4). call getLocalDepositMethods api 取得轉帳功能.(這邊在儲存暫存資料時會忽略 '支付宝转账' 功能)
        (5). 需注意的是, 點擊轉帳功能(bankTypeClick method), 會依據選擇的轉帳功能去更新可支援的銀行帳戶. 反之, 先點擊銀行帳戶(bankClick method), 會更新相對應的轉帳功能.
        (6). 當使用者輸入欄位資料並驗證完成後，會 call submitDeposit api 做存款動作.
        (7.1). 存款完成且無使用coupon, 直接開啟 DepositApplicationSuccessViewController 提示使用者存款完成
        (7.2). 存款完成且使用coupon, 此時會觸發
            - (BOOL)applyBonus : (TransactionResponseData*) transactionData amount:(NSInteger)amount depositCharges:(double)depositCharges method 
            並 call applyBonus api 做优惠券使用動作. 當api回傳資料無誤時, 將會清空本機端相關coupon資料.如 [UserInfoManager share].bonusData. 最後開啟 DepositApplicationSuccessViewController 提示使用者存款完成
        
        - 必威卡 :
        (1). 頁面開啟會先生成畫面所有元件
        (2). 檢查當有coupon卷資料時, 生成couponView.
        (3). 當使用者輸入欄位資料並驗證完成後，會 call submitDeposit api 做存款動作.
        (4.1). 存款完成且無使用coupon, 直接開啟 DepositApplicationSuccessViewController 提示使用者存款完成
        (4.2). 存款完成且使用coupon, 此時會觸發
            - (BOOL)applyBonus : (TransactionResponseData*) transactionData amount:(NSInteger)amount depositCharges:(double)depositCharges method 
            並 call applyBonus api 做优惠券使用動作. 當api回傳資料無誤時, 將會清空本機端相關coupon資料.如 [UserInfoManager share].bonusData. 最後開啟 DepositApplicationSuccessViewController 提示使用者存款完成
        
        三. 轉帳頁
        (1). 頁面開啟會先生成畫面所有元件
        (2). call getUserTransferWallets api 更新使用者錢包資料.
        (3). 當使用者選擇完目標帳戶時, 會call getBonusList api去取得該帳戶的紅利訊息. 並生成相對應的bonusView欄位.
        (4). 紅利欄位的點擊情況會隨著轉帳金額的不同而有不同的顯示方式.
            - 紅利欄位生成時, 預設選擇欄位下次再使用
            - 當轉帳金額小於紅利發放的最低金額時, 在紅利欄位會顯示錯誤提示訊息. 提示金額未達標準
            - 當轉帳金額有變動時, 變更選擇欄位下次再使用
        (5). 當使用者選擇PT帳戶時, 會檢查該帳號是否有註冊PT帳號
        (6). 轉帳頁的轉帳流程共分為4個步驟
            - goDepositStep1 method : 主要功能負責個欄位資料檢核是否正確
            - goDepositStep2 method : 主要功能負責確認是否使用coupon or 紅利
                1. 判斷是否使用coupon卷, 如果有使用, 進入goDepositStep3 method
                2. 使用者選擇麽一個有效的紅利欄位, 此時會call calculateBonusAmount api 確認紅利是否可以使用.如果可以使用, 進入 goDepositStep3 method
                3. 其他狀態直接進入 goDepositStep3 method
            - goDepositStep3 method : 主要功能負責轉帳動作
                1. call submitTransfer api 做轉帳, 轉帳成功會顯示 '转账成功' toast. 並重新更新優惠及紅利列表資料.最後轉導轉帳成功頁面
                2. 轉帳成功且使用coupon卷, 此時會觸發
                - (BOOL)applyBonus : (TransactionResponseData*) transactionData amount:(NSInteger)amount depositCharges:(double)depositCharges method 
                並 call applyBonus api 做优惠券使用動作. 當api回傳資料無誤時, 將會清空本機端相關coupon資料.如 [UserInfoManager share].bonusData. 最後顯示 '专属优惠使用成功' toast.最後轉導轉帳成功頁面
                3. 有選擇紅利, 則進入 goDepositStep4
                - goDepositStep4 method : 主要功能負責申請紅利. call applyBonus api取得紅利申請狀況.當紅利申請成功, 會重新更新優惠及紅利列表資料.最後轉導轉帳成功頁面.
            
### 3.5 訊息

        主頁面模組及相關事件 :
        訊息組成區塊主要訊息類別選單.其中訊息包含所有讯息、存款通知、提款通知及红利通知．
        • 訊息類別區塊組成包含
        - 訊息選單部分由DLScrollTabbarView實作
        - 訊息內容頁(slideView)由DLCustomSlideView實作
        • NSNotificationCenter 新增 kEventUserDidLogin 事件, 偵測登入事件狀態.
        • NSNotificationCenter 新增 kEventRefreshMessageList 事件, 偵測推播來的更新狀態.
        • NSNotificationCenter 新增 kEventUserDidLogout 事件, 偵測登出事件狀態.
        
        主頁面(MessageViewController)邏輯 :
        (1). 頁面開啟會先生成畫面所有元件
        (2). 每次進入頁面時(viewWillAppear), 會取得訊息資料(call getMessageList api)更新訊息資料．
        (3). 訊息分類是在App端寫死四種訊息分類, 分類的子頁面(MessageTableViewViewController)是在
        - (UIViewController *)DLCustomSlideView:(DLCustomSlideView *)sender controllerAt:(NSInteger)index
        做生成頁面的動作.
        (4). 子頁面生成之後, 會在自己屬於的頁面去取得訊息已讀狀態(call sendMessageRead api)並發通知(kEventRefreshMessageUnReadCount)更新未讀訊息數量．
        
### 3.6 會員

        主頁面模組及相關事件 :
        會員中心組成區塊可分為三個區塊, 並在登入/登出的layout不盡相同．
        登入狀態分別是上方的使用者相關訊息(AlreadyLogginHeadView), 中間的功能列表(tableView)以及下方的版本資訊和登出按鈕(AlreadyLogginFootView)
        登出狀態分別是上方的登入/註冊按鈕(NotLoginHeadView), 中間的功能列表(tableView)以及下方的版本資訊(UpdateVersionView)
        功能列表則包含公告、专属优惠、红利信息、银行资料管理、交易记录、提款、密码管理、PT游戏下载版密码管理、指纹识别/脸部识别登录、关于以及客服功能
        
        • NSNotificationCenter 新增 kEventUserDidLogout 事件, 偵測登出事件狀態.
        
        主頁面(MessageViewController)邏輯 :
        (1). 頁面開啟會先生成畫面所有元件
        (2). 判斷是否需要顯示更新版本資訊及更新生物辨識功能按鈕狀態(kIsTouchOrFaceIDLogin, 跟前次登入帳號不一致, 須將狀態設為false)
        (3). 每次進入頁面時(viewWillAppear)且為登入狀態, 會取得會員資料(call getUserInfo api)以及帳戶資料(call getUserWalletBalance api)並更新頁面資料
        (4). 點擊提款需要先檢查使用者資料(call getUserInfo api)及提款設定(call getWithdrawSettings api)是否填寫完成.
        
        - 编辑个人资料(EditPersonalDataViewController)頁面邏輯
        (1). 頁面開啟會先生成畫面所有元件
        (2.) 會取得會員資料(call getUserInfo api)、帳戶資料(call getUserWalletBalance api)、安全問題(call getSecretQuestions api)以及國家列表(call getNationsList api)並更新頁面資料
        (3). 驗證填寫更新資料後, 每個欄位都需檢查是否有調整資料, 如果有調整, 需 call updateUserInfo api 更新會員資料.
        (4). 全部資料更新成功, 需返回上一頁. 當有資料更新失敗, 需顯示哪些欄位更新失敗(call showUpdateProfileStatus method判斷)
        
        - PT游戏密码管理(PTPasswordManagementViewController)頁面邏輯
        (1). 頁面開啟會先生成畫面所有元件
        (2). call getUserVendorInfo api 取得是否有PT帳戶
        (3). 密碼填寫驗證完之後, call updateVendorPassword api 更新PT密碼
        
        - 密码管理(PasswordManagementViewController)頁面邏輯
        (1). 頁面開啟會先生成畫面所有元件
        (2). 密碼填寫驗證完之後, call updateUserPassword api 更新密碼
        
        - 提款(DrawMoneyViewController)頁面邏輯
        
        • 點擊新增帳戶開啟新增帳戶((AddBankAccountViewController))資料頁面
        • 點擊提示訊息開啟提示訊息頁面(ReminderPageViewController)
        • NSNotificationCenter 新增 kEventTransationSettingsChanged 事件, 偵測事件更新帳戶資料.
        • NSNotificationCenter 新增 kEventBankAccountDidAdd 事件, 偵測事件更新帳戶資料.
        
        (1). 頁面開啟會先生成畫面所有元件
        (2). 需檢查是否驗證/填寫過使用者資料, 如果沒有, 需開啟RealNameViewController做填寫
        (3). call getUserWalletBalance api 取得帳戶金額資料
        (4). call getUserBanksInfo api 取得銀行資料, 並預設顯示的一筆
        (5). call getWithdrawSettings api 取得帳戶設定資料, 並更新單筆提款金額會低最高值
        (6). 提款資料填寫完, call submitWithdraw api 做提款動作.
        
        - 交易记录(TransactionRecordViewController)頁面邏輯
        
        交易紀錄組成區塊主要訊息類別選單.其中訊息包含所有交易、存款記錄、轉賬記錄及提款記錄．
        • 交易紀錄區塊組成包含
        - 交易紀錄選單部分由DLScrollTabbarView實作
        - 交易紀錄內容頁(slideView)由DLCustomSlideView實作
        - 各交易功能共用實作一個內容頁(TransactionRecordTableViewViewController), 依據index值得不同實作內容資訊
        - index 值(畫面順序)是APP端寫死.
        
        交易內容頁(TransactionRecordTableViewViewController) 頁面邏輯 :
        (1). 頁面開啟會先生成畫面所有元件
        (2). 每次進入頁面時(viewWillAppear)會取call getTransactionHistory api取得最新交易資料.
        (3). api 資料會依據 transactionType 做分類. 該內容頁會依據分類好的資料做顯示.
        (4). 內容狀態會依據api給的statusID做顯示, 內容如下 :
        statusID :
        0、default -> api 給值
        1 -> 待处理
        2 -> 处理中
        3 -> 网关处理中
        4 -> 成功
        5 -> 失败
        6 -> 已取消
        7、8、9 -> 处理中
        
        - 银行资料管理(BankManagementViewController)頁面邏輯
        (1). 頁面開啟會先生成畫面所有元件
        (2). 每次進入頁面時(viewWillAppear)會取call getUserBanksInfo api取得最新交易資料.
        (3). 無銀行資料時, 可以點擊新增銀行新增銀行資料(new AddBankAccountViewController)
        
        - 红利信息(DividendDataViewController)頁面邏輯
        紅利訊息組成區塊主要紅利選單.其中功能包含红利概览、查询红利记录及返水优惠．
        • 紅利區塊組成包含
        － 上方選單功能頁(topView), 是以刻死3個按鈕方式實作
        - 下方內容區塊, 分別實作红利概览(DividendOverviewView)、查询红利记录(QueryDividendDataView)及返水优惠(BackwaterDiscountView) 三個頁面, 並直接addSubView方式貼在頁面上.
        - 切換方式以show/hide view方式做顯示(btnClick method)
        - 红利概览僅顯示 bonusStatusID = 3 and 4 分類資料
        - 查询红利记录狀態按鈕, bonusStatusID = 2、5、6、8 將隱藏(完成及已過期不顯示按鈕)
        
        頁面邏輯 :
        (1). 頁面開啟會先生成畫面所有元件
        (2). 頁面生成時會 call getBonusBalance api 取得紅利資料
        (3). call getBonusMilestone 取得各月份即將過期紅利值, call getPromotionHistory api 取得紅利詳細資訊(红利概览預設查詢區間由2008/01/01 00:00:00 至 當天的 23:59:59) 
        (4). call getUserWalletBalance api 取得帳戶列表資料
        (5). 日期選擇會透過 toSelect delegate method (re-call getPromotionHistory api) 取得最新資料
        
        - 专属优惠(ExclusivePreferenceViewController)頁面邏輯
        (1). 頁面開啟會先生成畫面所有元件
        (2). coupon填寫完會call getCouponInfo api, 先取得資料作初步驗證, 在 call calculateBonusAmount api 驗證此coupon是否有效(有無被使用).
        
        - 公告(NoticeViewController)頁面邏輯
        公告組成區塊主要訊息類別選單.其中訊息包含所有公告、特別公告、最新公告及優惠公告．
        • 公告區塊組成包含
        - 公告選單部分由DLScrollTabbarView實作
        - 公告內容頁(slideView)由DLCustomSlideView實作
        - 各公告功能共用實作一個內容頁(NoticeTableViewViewController), 依據index值得不同實作內容資訊
         
        頁面邏輯 :
        (1). 頁面開啟會先生成畫面所有元件
        (2). 頁面生成時會 call sendMessageRead api 送出該頁面已讀狀態.
        (3). 各頁面依據index值得不同, 會 call getMessageList api取相特別公告對應資料. call getNewsList api 取得其他公告資料
        (4). 所有公告在APP端自行需合併2支api資料, 並做日期排序.
        
        - 关于(AboutUSViewController)頁面邏輯
        (1). 頁面開啟會先生成畫面所有元件
        
## 4. SDK / Utiity 說明 
    
    • category :
    - RequestData : 定義siteId
    - NSString : 
        (1). NSString+IsValidUrl : 判斷url是否有效
        (2). NSString+IsBlank : 判斷字串是否為空
        (3). NSString+isValidEmail : 判斷email是否有效
    - UIColor : RGB轉換
    - UITextField : 
        (1). UITextField+TintAjust : 游標相關功能
        (2). UITextField+Placeholder : placeholder相關功能
    - UIImage :
        (1). UIImage+EqualScaling : 圖片延伸功能
        (2). UIImage+Tint : 圖片填色相關功能
    - UIView+AddClickedEvent : view 新增click事件
    - UIView+UIViewController : 取得該view的所屬viewcontroler
    
    • header :
    - ApiHeader : 無作用
    - ToolHeader : 無作用 
    - CategoryHeader : include all custom category header
    - ClassHeader : include third's party header
    - SDKHeader : include all header's file 
    - SDKHeader : 無作用
    - FrameworkHeader : 無作用
    - ViewHeader : include all view's header
    - PageHeader : include all viewcontroller's header
    - MacroDefinitionHeader : 定義UserDefault及共用系統值判斷式 
    
    • SharedView :
    - ToastViewController : 自定義Toast功能
    
    • 工具类
    - BetwayUtils :
        +(BOOL) isnil:(id)value : 是否是空值
        +(BOOL) isEmptyString:(NSString *)string : 是否是空字串
        +(BOOL) isNotEmptyString:(NSString *)string; : 是否不是空字串
        +(BOOL) isNumber:(NSString *)inputStr : 是否為數字
        +(BOOL) isDouble:(NSString *)inputStr : 是否為double型態
        +(BOOL)isValidPassword:(NSString *)pass : 是否為有效密碼格式
        +(BOOL)isValidPhoneNumber:(NSString *)tel : 是否為有效電話格式
        +(BOOL)isValidUserName:(NSString *)username : 是否為有效使用者代號 
        +(BOOL)isValidRealNameWithWhitespace:(NSString *)realName : 是否為有效真實姓名
        +(BOOL)isEmailAddress:(NSString*)mailAddress : 是否為有效email
        +(NSString *)getTimeStampFromDate:(NSDate *)date : 依據nsdate轉換timestamp
        +(NSDate *)getDateFromTimeStamp:(NSString *)timeStamp : 依據timstamp轉換nsdate
        + (NSString *)AES256_Encrypt:(NSString *)originalStr key:(NSStr ing *)key : aes256加密
        + (NSString *)AES256_Decrypt:(NSString *)encryptStr key:(NSString *)key : aes256解密
        + (BOOL)isLoginStatusIllegal:(NSInteger)errorCode : 依據errorCode判斷是否為401 or 403
        + (BOOL)isLoginStatusIllegalWithError:(NSError *)error : : 依據error訊息判斷是否為401 or 403
        + (BOOL)isValidRemark:(NSString *)remark : 判斷表情符號
        + (BOOL)isValidRealName:(NSString *)realName : 是否為有效真實姓名
        + (BOOL)isValidBankName:(NSString *)bankName : 是否為有效銀行名稱
        + (BOOL)isvalidAddress:(NSString *)address : 是否為有效地址
        + (BOOL)isValidEmail:(NSString *)email : 是否為有效email
        + (BOOL)isValidCity:(NSString *)city : 是否為有效程式
        + (BOOL)isValidWechatAccount:(NSString *)wechatAccount : 是否為有效wechat帳號
        + (BOOL)isvalidSecretAnswer:(NSString *)answer  : 是否為有效安全答案
        + (BOOL)validateIDCardNumber:(NSString *)value : 是否為有效id card
        + (BOOL)isValidRegion:(NSString *)region : 是否為有效區域
        + (UIImage *)imageWithTintColor:(UIColor *)tintColor alpha:(CGFloat)alpha image:(UIImage *)image : image tint method
        + (BiometricType) isBiometricAvailable : 是否可使用生物辨識功能
        + (NSAttributedString *)attributedStringWithHTML:(NSString *)html : 依據html轉換NSAttributedString
    
    - Manager :
        (1). FunpodiumSDKCacheMacros : cache相關功能
        (2). FunpodiumSDKManager : sdk method 相關功能
        
    - ThousandthDivision : 小數點數值計算
    - NSDate : 日期相關工具
    - Saver : NSUserDefault 儲存功能
    - ProgressHUD : hud套件
    - Calendar : 日期相關功能
    - UIButton : 依據字串計算區域大小
    - Keyboard : 鍵盤事件相關功能
    - TouchOrFace : 生物辨識相關功能
