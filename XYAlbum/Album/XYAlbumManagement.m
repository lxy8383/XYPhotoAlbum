//
//  XYAlbumController.m
//  XYAlbum
//
//  Created by liuxy on 2020/5/19.
//  Copyright © 2020 Golemon. All rights reserved.
//


#import "XYAlbumManagement.h"
#import "ALbumAssetModel.h"
#import <Photos/Photos.h>


@interface XYAlbumManagement ()

//@property (nonatomic, strong) UICollectionView *collectionView;

//@property (nonatomic, assign) ImageAssetModelType assetType;

@end

static NSString *kXYAlbumCollectionIdentifier = @"XYAlbumCollectionIdentifier";

@implementation XYAlbumManagement

//- (id)init {
//    self = [super init]{
//        
//    }
//
//}
//- (void)requestData {
//
//    [self getSmartAlbumsWith:ImageAssetModelTypePhoto];
//}

- (void)getSmartAlbumsWith {
//    self.assetType = type;
    NSMutableArray *albumArray = [[NSMutableArray alloc]init];
    
    //获取手机内所有相册
    PHFetchResult *albumResult = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeSmartAlbum
                                                                          subtype:PHAssetCollectionSubtypeAlbumRegular
                                                                          options:nil];
    
    for(PHAssetCollection * collection in albumResult){
        NSString * collectionName = collection.localizedTitle;
        NSLog(@"collectionName : %@",collectionName);
        //有可能是phcollectionList 类的对象，过滤掉
        if([collection isKindOfClass:[PHAssetCollection class]]) continue;
        //过滤空相册
        if(collection.estimatedAssetCount <= 0) continue;
        
       
        
//        //PHAssetCollection 得到自定义相册对象
//        ALbumAssetModel *model = [self modelWithCollection:collection];
//
//        if(model.imageModelsArr.count > 0){
//            [albumArray addObject:model];
//        }
        
    }
}

//// 获取相册所有照片信息
//- (NSArray *)getAssetWithCollection:(PHAssetCollection *)collection {
//
//    PHFetchOptions *options = [[PHFetchOptions alloc]init];
//    options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"createDate" ascending:YES]];
//
//    //search
//    NSMutableArray *assetArray = [NSMutableArray array];
//    PHFetchResult *assetFetchResult = [PHAsset fetchAssetsInAssetCollection:collection options:options];
//    for(PHAsset *asset in assetFetchResult){
//        [assetArray addObject:asset];
//    }
//    return assetArray;
//
//}

//// 返回相册模型
//- (ALbumAssetModel *)modelWithCollection:(PHAssetCollection *)collection {
//    //资源访问配置
//    PHFetchOptions *options = [self configRequestOptions];
//
//    PHFetchResult *fetchResult = [PHAsset fetchAssetsInAssetCollection:collection options:options];
//
//    ALbumAssetModel *model = [[ALbumAssetModel alloc]init];
//    model.albumName = collection.localizedTitle;
//    model.albumId = collection.localIdentifier;
//    model.albumAsset = collection;
//    model.count = fetchResult.count;
//    model.selected = NO;
//    return model;
//    //得到相册资源模型
////    model.imageModelsArr =
//
//}

//- (PHFetchOptions *)configRequestOptions {
//    PHFetchOptions *options = [[PHFetchOptions alloc]init];
//    options.predicate = [NSPredicate predicateWithFormat:@"mediaType = %d",PHAssetMediaTypeImage];
//
//    //资源按创建资源顺序
//    options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:YES]];
//
//    return options;
//
//}


//// 获取图片数据  获取图片类型
//- (NSArray *)getAssetsFromFetchResult:(PHFetchResult *)result {
//
//    NSMutableArray *photoArr = [[NSMutableArray alloc]init];
//    [result enumerateObjectsUsingBlock:^(PHAsset *asset, NSUInteger idx, BOOL * _Nonnull stop) {
//
//
//    }];
//    return photoArr;
//}



//- (void)viewWillLayoutSubviews {
//    [super viewWillLayoutSubviews];
//    self.collectionView.frame = self.view.bounds;
//
//}
//
//- (void)setUpUI {
//
//    [self.view addSubview:self.collectionView];
//    self.collectionView.backgroundColor = UIColor.yellowColor;
//
//    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
//    [backBtn addTarget:self action:@selector(naviBackAction:) forControlEvents:UIControlEventTouchUpInside];
//    backBtn.backgroundColor = UIColor.redColor;
//    self.navigationController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
//}
//
//#pragma mark - CollectionDelegate
//- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//    return 20;
//}
//
//- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
//
//    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kXYAlbumCollectionIdentifier forIndexPath:indexPath];
//    cell.backgroundColor = UIColor.redColor;
//    return cell;
//}
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
//
//
//    return CGSizeMake([UIScreen mainScreen].bounds.size.width / 3.f, [UIScreen mainScreen].bounds.size.width / 3.f);
//}
//
//#pragma mark - lazy
//- (UICollectionView *)collectionView {
//
//    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
//    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
//    layout.minimumLineSpacing = 1;
//    layout.minimumInteritemSpacing = 1;
//
//
//    if(!_collectionView){
//        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:layout];
//        _collectionView.dataSource = self;
//        _collectionView.delegate = self;
//        [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kXYAlbumCollectionIdentifier];
//
//    }
//    return _collectionView;
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
