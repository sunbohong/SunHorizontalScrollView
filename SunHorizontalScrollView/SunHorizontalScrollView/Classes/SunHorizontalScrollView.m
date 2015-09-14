//
//  SunHorizontalScrollView.m
//  SUNScrollTableViewCell
//
//  Created by 孙博弘 on 15/9/13.
//  Copyright (c) 2015年 孙博弘. All rights reserved.
//

#import "SunHorizontalScrollView.h"

#import "SunHorizontalImageCollectionViewCell.h"

@interface SunHorizontalScrollView () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSArray *mediaContainer;

@end

@implementation SunHorizontalScrollView

- (void)layoutSubviews {
    [super layoutSubviews];

    self.collectionView.frame = self.frame;

    [self.collectionView reloadData];
}

- (void)setData:(NSArray *)collectionImageData {
    self.mediaContainer = collectionImageData;

    [self.collectionView setContentOffset:CGPointMake(0, 0) animated:NO];

    [self addSubview:self.collectionView];

    [self.collectionView reloadData];
}

- (void)setBackgroundColor:(UIColor *)color {
    self.collectionView.backgroundColor = color;
}

#pragma mark - UICollectionViewDataSource methods
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.mediaContainer.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SunHorizontalScrollMedia *mediaObject = self.mediaContainer[indexPath.row];

    static NSString *cellReuseIdentify = @"SunHorizontalImageCollectionViewCell";

    SunHorizontalImageCollectionViewCell *cell = (SunHorizontalImageCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellReuseIdentify forIndexPath:indexPath];

    if (!cell) {
        cell = [[SunHorizontalImageCollectionViewCell alloc] init];
    }

    switch (mediaObject.type) {
        case SunHorizontalScrollMediaTypeImageURL:

            [cell setImageWithURL:mediaObject.object];

            break;
    }

    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [self.delegate collectionView:self didSelectItemAtIndexPath:indexPath];
}

#pragma mark - get
- (UICollectionViewFlowLayout *)flowLayout {
    if (!_flowLayout) {
        _flowLayout = [[UICollectionViewFlowLayout alloc] init];
        _flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        _flowLayout.itemSize     = CGSizeMake(80.0, 80.0);
        _flowLayout.sectionInset = UIEdgeInsetsMake(5, 10, 5, 10);
        _flowLayout.minimumLineSpacing = 10.0;
    }
    return _flowLayout;
}

- (UICollectionView *)collectionView {
    if (!_collectionView) {
        _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:self.flowLayout];
        _collectionView.delegate   = self;
        _collectionView.dataSource = self;
        _collectionView.showsHorizontalScrollIndicator = NO;

        _collectionView.backgroundColor = [UIColor whiteColor];

        _collectionView.collectionViewLayout = self.flowLayout;

        [_collectionView registerClass:[SunHorizontalImageCollectionViewCell class] forCellWithReuseIdentifier:@"SunHorizontalImageCollectionViewCell"];
    }
    return _collectionView;
}

@end
