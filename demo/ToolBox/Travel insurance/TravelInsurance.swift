import UIKit

class TravelInsurance: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{
    var scroll = UIScrollView()
    let width = UIScreen.main.bounds.size.width
    let height = UIScreen.main.bounds.size.height
    var currentIndex : NSInteger = 0
    var right = UIImageView()// 下一个imageView
    var current = UIImageView() // 当前imageView
    var imageArray = [String]()
    var timer = Timer()
    var pageControl = UIPageControl()
    var myCollectionView :UICollectionView!
    var cell:UICollectionViewCell!
    
    let cid = "cid"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = .white
        //创建导航栏
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 30, width: self.view.frame.width, height: 20))
        
        //自定义导航栏title
        let titleLable = UILabel(frame: CGRect(x: 0, y: 0, width: 44, height: 20))
        titleLable.text = "新一站保险"
        titleLable.textColor = UIColor.black
        titleLable.font = UIFont.systemFont(ofSize : 18)
        
        //创建导航栏组件
        let navItem = UINavigationItem()
        navItem.titleView = titleLable
        
        
        //创建左侧按钮
        let leftButton = UIBarButtonItem(title: "返回", style: .plain, target: self, action : #selector(clicked(_:)))
        leftButton.tintColor = UIColor.orange
        
        navItem.setLeftBarButton(leftButton, animated: false)
        navBar.pushItem(navItem, animated: false)
        
        self.view.addSubview(navBar)
        
        
        
        
        
        //轮播图
        scroll.showsVerticalScrollIndicator = false
        scroll.showsHorizontalScrollIndicator = false
        scroll.contentSize = CGSize(width: width * 2, height: height)
        scroll.contentOffset = CGPoint(x: width, y: 0)
        scroll.isPagingEnabled = true
        imageArray = ["insurance1.png","insurance2.png"]
        scroll.frame = CGRect(x: 0, y: 74, width: width, height: height/4)//初始化scrollView 大小
        right.frame = CGRect(x: width * 2, y: 0, width: width, height: height)
        current.frame = CGRect(x: width, y: 0, width: width, height: height)
        
        scroll.addSubview(right)
        scroll.addSubview(current)
        
        scroll.delegate = self
        reloadImage()
        pageControl.frame = CGRect(x: 0, y: 250, width: width, height: 5)
        pageControl.currentPageIndicatorTintColor = UIColor.black
        pageControl.pageIndicatorTintColor = UIColor.orange
        pageControl.numberOfPages = 2
        pageControl.currentPage = 0
        
        setupTimer()
        self.view.addSubview(scroll)
        self.view.addSubview(pageControl)
        
        //九宫格按钮
        

        
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        self.myCollectionView = UICollectionView(frame: CGRect.init(x: 0, y: height/3+15, width: width, height: 400), collectionViewLayout: layout)
        layout.itemSize = CGSize(width: (width-30)/3, height: width/3)
        
        self.myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cid)
        self.myCollectionView.dataSource = self
        self.myCollectionView.delegate = self
        self.view.addSubview(myCollectionView)
        
    }
    
    func reloadImage(){
        var rightIndex = 0
        currentIndex = currentIndex % 2
        scroll.setContentOffset(CGPoint(x: width, y: 0), animated: false)
        pageControl.currentPage = (currentIndex - 1 + 2) % 2//防止越界
        rightIndex = (currentIndex + 1) % 2
        right.image = UIImage(named: imageArray[rightIndex])
        current.image = UIImage(named: imageArray[currentIndex])
        
        
    }
    //设置定时器
    func setupTimer() {
        timer = Timer.scheduledTimer(timeInterval: 2,target:self,selector:#selector(timeChanged),userInfo:nil,repeats:true)
        RunLoop.current.add(timer, forMode: RunLoop.Mode.common)
        
    }
    
    
    @objc func timeChanged(){
        currentIndex = currentIndex + 1
        //更新加载试图
        reloadImage()
    }
    
    
    
    //开始拖动
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        timer.invalidate()
    }
    //停止拖动
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        //向右拖动
        if scroll.contentOffset.x > width {
            currentIndex = (currentIndex + 1) % 2
            
        }
        //向左拖动
        if scroll.contentOffset.x < width{
            currentIndex = (currentIndex - 1 + 2) % 2
            
        }
        //更新小圆点当前位置
        pageControl.currentPage = (currentIndex - 1 + 2) % 2
        reloadImage()
        
        setupTimer()
        
    }
    
    // 九宫格
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: cid, for: indexPath)
        cell.backgroundColor = .green
        cell.layer.borderWidth = 1
        return cell
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets{
        return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("index is \(indexPath.row)");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc  func clicked(_ sender: AnyObject){
        print("点击")
        self.dismiss(animated: true, completion: nil)
    }
    
}
