//
//  XYAlbumManager.m
//  XYAlbum
//
//  Created by liuxy on 2020/5/21.
//  Copyright © 2020 Golemon. All rights reserved.
//

#import "XYAlbumManager.h"
#import <Photos/Photos.h>


@interface XYAlbumManager()

@property (nonatomic, strong) NSMutableArray <ALbumAssetModel *>* albumListArr;

@end

@implementation XYAlbumManager
 
static XYAlbumManager *manager = nil;

+ (instancetype)shreManager {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[XYAlbumManager alloc]init];
    });
    return manager;
}

- (void)setupInit:(AlbumListController *)listController {
    
    listController.delegate = self;
}

- (NSMutableArray *)albumCoverList {
    
    NSMutableArray *sourceArr = [[NSMutableArray alloc]init];
    
    
    // 遍历所有的自定义相册
    PHFetchResult<PHAssetCollection *> *collectionResult0 = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeAlbum subtype:PHAssetCollectionSubtypeAny options:nil];
    for (PHAssetCollection *collection in collectionResult0) {
        ALbumAssetModel *model = [[ALbumAssetModel alloc]init];
        model.albumName = collection.localizedTitle;
        [sourceArr addObject:model];
    }
    
    // 获得相机胶卷的图片
    PHFetchResult<PHAssetCollection *> *collectionResult1 = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeSmartAlbum subtype:PHAssetCollectionSubtypeAlbumRegular options:nil];
    for (PHAssetCollection *collection in collectionResult1) {
        
        if (![collection.localizedTitle isEqualToString:@"Camera Roll"]) continue;
            ALbumAssetModel *model = [[ALbumAssetModel alloc]init];
            model.albumName = collection.localizedTitle;
            [sourceArr addObject:model];
        break;
    }
    
    self.albumListArr = sourceArr;
    return sourceArr;

}


// 获取相册所有图片信息
- (NSArray *)assetWithCollection:(PHAssetCollection *)collection {
    
    PHFetchOptions *options = [[PHFetchOptions alloc]init];
    options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"createDate" ascending:YES]];
    
    //search
    NSMutableArray *assetArray = [[NSMutableArray alloc]init];
    PHFetchResult *assetFetchResult = [PHAsset fetchAssetsInAssetCollection:collection options:options];
    
    for(PHAsset *asset in assetFetchResult){
        [assetArray addObject:asset];
    }
    return assetArray;
}


#pragma mark - XYAlbumManagerDelegate
- (NSMutableArray *)albumManageList {
    
    NSMutableArray *arr = [self albumCoverList];
    return arr;
}


- (ALbumAssetModel *)albumListModel:(NSInteger )index {
    
    ALbumAssetModel *albumModel = self.albumListArr[index];
    return albumModel;
}


@end
