//
//  AlbumListController.m
//  XYAlbum
//
//  Created by liuxy on 2020/5/21.
//  Copyright © 2020 Golemon. All rights reserved.
//

#import "AlbumListController.h"
#import "ALbumAssetModel.h"
#import "XYAlbumManager.h"


@interface AlbumListController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

static NSString *kAlbumListCellIdentifier = @"kAlbumListCellIdentifier";

@implementation AlbumListController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setUpUI];
    
    [[XYAlbumManager shreManager] setupInit:self];
    
}

- (void)setUpUI {
    
    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.frame;
}

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSMutableArray *arr = [self.delegate albumManageList];

    return arr.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    AlbumListCell *cell = [tableView dequeueReusableCellWithIdentifier:kAlbumListCellIdentifier];
    if(!cell){
        cell = [[AlbumListCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kAlbumListCellIdentifier];
    }
    ALbumAssetModel *model = [[XYAlbumManager shreManager] albumListModel:indexPath.row];
    cell.textLabel.text = model.albumName;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}

#pragma mark - lazy
- (UITableView *)tableView {
    if(!_tableView){
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

@end




@interface AlbumListCell()

@end

@implementation AlbumListCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        
        [self setUpUI];
    }
    return self;
}

- (void)setUpUI {
    
    [self.contentView addSubview:self.avatarImageView];
    self.avatarImageView.frame = CGRectMake(10, 10, 160, 160);
    
    [self.contentView addSubview:self.nameLabel];
    self.nameLabel.frame = CGRectMake(180, 10, 200, 20);
    
}


#pragma mark - lazy
- (UIImageView *)avatarImageView {
    if(!_avatarImageView){
        _avatarImageView = [[UIImageView alloc]init];
    }
    return _avatarImageView;
}

- (UILabel *)nameLabel {
    if(!_nameLabel){
        _nameLabel = [[UILabel alloc]init];
    }
    return _nameLabel;
}


@end
