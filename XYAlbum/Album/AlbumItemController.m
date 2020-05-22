//
//  AlbumItemController.m
//  XYAlbum
//
//  Created by liuxy on 2020/5/22.
//  Copyright © 2020 Golemon. All rights reserved.
//

#import "AlbumItemController.h"

@interface AlbumItemController ()

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation AlbumItemController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (UICollectionView *)collectionView {
    if(!_collectionView){
        _collectionView = [[UICollectionView alloc]init];
    }
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
