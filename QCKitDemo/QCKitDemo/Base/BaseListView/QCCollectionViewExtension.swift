//
//  QCCollectionViewExtension.swift
//  LynxIOS
//
//  Created by yanqunchao on 2019/7/18.
//  Copyright © 2019 Global Hengtong (Beijing) Technology Co., Ltd. All rights reserved.
//

import Foundation

import YQCKit

extension QCCollectionView {
    
    func refreshControl(_ isOnlyFooterRefresh:Bool = false)->QCCollectionView{
        if !isOnlyFooterRefresh {
            self.configureRefreshHeader = {[weak self] in
                self?.collectionView.mj_header = MJRefreshNormalHeader(refreshingBlock: {
                    self?.refreshData()
                })
            }
            self.beginHeaderRefreshingConfigure = {[weak self] in
                self?.collectionView.mj_header?.beginRefreshing()
            }
            self.endHeaderRefreshingConfigure = {[weak self] in
                self?.collectionView.mj_header?.endRefreshing()
            }
        }
        self.configureRefreshFooter = {[weak self] in
            self?.collectionView.mj_footer = MJRefreshAutoNormalFooter(refreshingBlock: {
                self?.loadMore()
            })
        }
        self.beginFooterRefreshingConfigure = {[weak self] in
            self?.collectionView.mj_footer?.beginRefreshing()
        }
        self.endFooterRefreshingConfigure = {[weak self] in
            self?.collectionView.mj_footer?.endRefreshing()
        }
        self.hideRefreshFooterConfigure = {[weak self] in
            self?.collectionView.mj_footer?.isHidden = true
        }
        self.showRefreshFooterConfigure = {[weak self] in
            self?.collectionView.mj_footer?.isHidden = false
        } 
        //处理加载结果
        self.handleRefresh()
        return self
    }
}

