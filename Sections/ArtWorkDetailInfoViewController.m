//
//  ArtWorkDetailInfoViewController.m
//  Sections
//
//  Created by star on 16/1/4.
//  Copyright © 2016年 Zeze. All rights reserved.
//

#define BackImage @""
#define CollectImage @""
#define ShareImage @""

#import "ArtWorkDetailInfoViewController.h"
#import "ArtWorkInfoCell.h"
#import "ArtWorkPublicCell.h"
@interface ArtWorkDetailInfoViewController ()<UITableViewDataSource,UITableViewDelegate,ArtWorkInfoCellDelegate>
{
    UIImageView *_headerImageView;
    UIButton *_collectBtn;
    UIButton *_shareBtn;
    UILabel *_subTitleLabel;
    
    NSArray *_titleArr;
    
    NSString *infoText;
}
@property (nonatomic,strong) UITableView *tableView;
@end

@implementation ArtWorkDetailInfoViewController
static BOOL isShow = NO;



#pragma mark - 分享/收藏
- (void)btnClickWithBtn:(UIButton *)btn
{
    if(btn.tag == 300){
        //        收藏
        NSLog(@"收藏");
        
    }else if (btn.tag == 301){
        //        分享
        NSLog(@"分享");
        
    }else if (btn.tag == 302){
        //        收藏咨询
        NSLog(@"收藏咨询");
        
    }
}
#pragma mark - 展开/收回
- (void)isShowAllTextWithBtn:(UIButton *)btn
{
    isShow = !isShow;
    btn.selected = isShow;
    [self.tableView reloadData];
}




- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    infoText = @"如果你能指望投资者救你，那么即使缺省死亡也是安全的。作为一条公理，你要知道投资人的兴趣是增长的函数。如果你有陡峭的收入增长，比如每年6 倍，你就可以指望投资者是有兴趣的，即使你不赚钱。 但是，投资者是善变的，你永远不要指望太多。有时候，即使你的增长是显著的，业务的其他方面也会吓跑投资人。因此，即使你的增长再好，你永远也只能把融资作为 A 计划。你始终应该有一个 B 计划：你应该确切的知道（最好写下来），如果无法募集更多的资金，你需要做什么才能生存下来。同时，要确切的知道，如果 A 计划行不通，何时应该切换到 B 计划。在任何情况下，快速增长与低成本运营远非很多创始人认为的那样非此即彼。实际情况是，一个创业公司花费多少和它增长有多快之间的关系少的惊人。当一个创业公司快速增长的时候，通常是因为产品打动了用户神经，直接击中了用户的一些大的需求。当创业公司花费巨大的时候，通常是因为产品开发或销售很花钱，或仅仅纯属浪费。如果你能指望投资者救你，那么即使缺省死亡也是安全的。作为一条公理，你要知道投资人的兴趣是增长的函数。如果你有陡峭的收入增长，比如每年6 倍，你就可以指望投资者是有兴趣的，即使你不赚钱。 但是，投资者是善变的，你永远不要指望太多。有时候，即使你的增长是显著的，业务的其他方面也会吓跑投资人。因此，即使你的增长再好，你永远也只能把融资作为 A 计划。你始终应该有一个 B 计划：你应该确切的知道（最好写下来），如果无法募集更多的资金，你需要做什么才能生存下来。同时，要确切的知道，如果 A 计划行不通，何时应该切换到 B 计划。在任何情况下，快速增长与低成本运营远非很多创始人认为的那样非此即彼。实际情况是，一个创业公司花费多少和它增长有多快之间的关系少的惊人。当一个创业公司快速增长的时候，通常是因为产品打动了用户神经，直接击中了用户的一些大的需求。当创业公司花费巨大的时候，通常是因为产品开发或销售很花钱，或仅仅纯属浪费。";

    [self configNav];
    
    [self createTableView];
}

#pragma mark - tableView
- (void)createTableView
{
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = 2;
    [self.view addSubview:self.tableView];
    [self loadHeader];
    
}
- (void)loadHeader
{
    UIView *_headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 400)];
    _headerView.userInteractionEnabled = YES;
    [self.view addSubview:_headerView];
    CGRect headerFrame = _headerView.frame;
    
    _headerImageView = [[UIImageView alloc]initWithFrame:headerFrame];
    _headerView.userInteractionEnabled = YES;
    _headerImageView.backgroundColor = [UIColor lightGrayColor];
    _headerImageView.image = [UIImage imageNamed:@""];
    [_headerView addSubview:_headerImageView];
    
    UIView *bottomView = [[UIView alloc]initWithFrame:CGRectMake(0, headerFrame.size.height - 50, headerFrame.size.width, 50)];
    bottomView.userInteractionEnabled = YES;
    bottomView.backgroundColor = [UIColor whiteColor];
    [_headerView addSubview:bottomView];
    
    _collectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _collectBtn.frame = CGRectMake(headerFrame.size.width - 100, 5, 40, 40);
    _collectBtn.backgroundColor = [UIColor yellowColor];
    [_collectBtn setImage:[UIImage imageNamed:CollectImage] forState:UIControlStateNormal];
    [bottomView addSubview:_collectBtn];
    
    
    _shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _shareBtn.frame = CGRectMake(headerFrame.size.width - 50, 5, 40, 40);
    _shareBtn.backgroundColor = [UIColor yellowColor];
    [_shareBtn setImage:[UIImage imageNamed:ShareImage] forState:UIControlStateNormal];
    [bottomView addSubview:_shareBtn];
    
    
    _collectBtn.tag = 300;
    _shareBtn.tag = 301;
    [_collectBtn addTarget:self action:@selector(btnClickWithBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_shareBtn addTarget:self action:@selector(btnClickWithBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    self.tableView.tableHeaderView = _headerView;
    
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row!=0){
    
        static NSString *identifier = @"cell1";
        ArtWorkPublicCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if(!cell){
            cell = [[NSBundle mainBundle]loadNibNamed:@"ArtWorkPublicCell" owner:self options:nil][0];
        }
        cell.title.text = _titleArr[indexPath.row - 1];
        return cell;
        
    }else {
        
        static NSString *identifier = @"cell0";
        ArtWorkInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if(!cell){
            cell = [[NSBundle mainBundle]loadNibNamed:@"ArtWorkInfoCell" owner:self options:nil][0];
        }
        cell.delegate = self;
        [cell configCell];
        return cell;
        
    }
    return nil;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0){
        
        if(isShow == YES){
            
            return 60 + [self heightForString:infoText fontSize:14 andWidth:0];
            
        }
        return 100 + 100;
    }
    return 44;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(15, 15, view.frame.size.width - 30, 40);
    [btn setTitle:@"收藏咨询" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blackColor];
    btn.layer.cornerRadius = 5.0f;
    btn.tag = 302;
    view.userInteractionEnabled = YES;
    [view addSubview:btn];
    [btn addTarget:self action:@selector(btnClickWithBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    return view;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 70.0f;
}

- (float)heightForString:(NSString *)value fontSize:(float)fontSize andWidth:(float)width
{
    NSDictionary *attribute = @{NSFontAttributeName: [UIFont systemFontOfSize:fontSize]};
    CGSize size = [value boundingRectWithSize:CGSizeMake(self.view.frame.size.width - 20, 0) options: NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    return size.height;
}

#pragma mark - 导航
- (void)configNav
{
    _titleArr = @[@"材质",@"地区",@"年代"];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:BackImage] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = backItem;
    
}
- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
