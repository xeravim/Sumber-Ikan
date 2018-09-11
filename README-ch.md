## 1. System Architecture (Figure)

#### Please refer to the architecture [figure](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/Betway_Architecture.png)

## 2. Description of each modules
### Home
#### 1 ViewControllers
<br><img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Home/MainPage.png?raw=true" width = "400">

##### 1.1MainBannerCell
<br><img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Home/MainPageTop.png?raw=true" width = "400">

##### 1.2SYTableViewCell
<br><img src = "https://github.com/xeravim/Sumber-Ikan/blob/master/Screenshot/Home/MainPageBottom.png?raw=true" width = "400">

### 遊戲大廳
#### 2 GameHallViewController![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/GameHallViewController.png)
#### 3 遊戲頁籤(除我的最愛) GameListViewController![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/GameListViewController.png)
#### 4 我的最愛頁籤 catalogViewController ![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/catalogViewController.png)
#### 5 顯示全部 checkAllViewController ![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/checkAllViewController.png)
#### 6 遊戲頁 gameCenterViewController ![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/gameCenterViewController.png)
##### 6.1 SideBarMenuView![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/SideBarMenuView.png)
#### 7 遊戲頁內優惠 GameHallDiscountListViewController![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/GameHallDiscountListViewController.png)
### 優惠
#### 1 DiscountPageViewController![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/DiscountPageViewController.png)
##### 1.1 PageViewController![layout](http://gitea.funpodium.net/funpodium/betway-ios/src/branch/Develop/ReadmeResource/PageViewController.png)
#### 2.ApplicationGuidanceViewController ![layout](http://gitea.funpodium.net/youkoka/betway-ios-fork/src/commit/dcdb4f7027ca420232e3ed1aada5be1e1b668bf9/ReadmeResource/ApplicationGuidanceViewController.png)
#### 3.ApplicationFormViewController ![layout](http://gitea.funpodium.net/youkoka/betway-ios-fork/src/commit/dcdb4f7027ca420232e3ed1aada5be1e1b668bf9/ReadmeResource/ApplicationFormViewController.png)
### 小豬頁
#### DepositPageViewController (框架)
        • UIView *headView -> 上方區塊
        • UIImageView *headBGImg -> 上方區塊的背景
        • UIButton *topCloseBtn  -> 關閉按鈕
        • UILabel *mainAccountLab  -> 主帳戶
        • UIButton *refreshBtn ->  刷新按鈕
        • UIView *moneyView -> RMBLab的superView
        • UILabel *RMBLab -> RMB字樣
        • UILabel *moneyLab -> 餘額
        • UIButton *depositBtn -> 存款
        • UIButton *transferBtn -> 轉賬
        • DLLRUCache *cache -> 頁籤的cache
        • DLScrollTabbarItem *item -> 頁籤元件
        • DLCustomSlideView *slideView -> 頁籤的內頁
        • DLScrollTabbarView *tabbar -> 頁籤區塊
#### 1. 存款
##### 1.1 CouponView (優惠券)
        • UIButton *checkBox -> 使用優惠券的勾勾
        • UILabel *titleLable -> 優惠券標題
        • UILabel *contentLable -> 優惠券內容
        • UITextField *couponField -> 優惠券輸入匡
        • UILabel *tipsLable -> 優惠券提示
        • UILabel *warningLable -> 申請金額提示
##### 1.2 LocalBankAndAlipayView （本地銀行）
        • UIScrollView *myScrollView -> 容器
        • UIButton *remindBtn -> 溫馨提醒
        • UILabel *dateLab -> 到帳時間
        • UIButton *localBankTransferInformationBtn -> 本地銀行轉帳信息
        • UILabel *depositAmountLab -> 存款金額
        • UITextField *amountTF -> 存款金額輸入匡
        • UIView *amountTFLine -> 輸入匡下的底線
        • UILabel *explainLab -> 存款提示訊息
        • UIView *btnView -> 快選金額
        • UILabel *bankTypeLab -> 轉帳方式
        • UITextField *bankTypeTF -> 轉帳方式輸入匡
        • UIView *bankTypeTFLine -> 轉帳方式輸入匡底線
        • UILabel *bankLab -> 銀行選擇
        • UITextField *bankTF -> 銀行選擇輸入匡 
        • UIView *bankTFLine -> 銀行選擇輸入匡底線
        • UILabel *payerNameLab -> 付款方姓名
        • UITextField *payNameTF -> 付款方姓名輸入匡 
        • UIButton *submitBtn -> 提交按鈕
        • UILabel *promptLab -> 请先成功「存款」或「转账」后再进行提交申请訊息
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

### 3.6 會員

## 4. SDK / Utiity 說明 

