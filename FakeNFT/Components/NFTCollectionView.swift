//
//  NFTCollectionView.swift
//  FakeNFT
//
//  Created by Евгений on 01.08.2023.
//

import UIKit

final class NFTCollectionView: UICollectionView {
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 8
        layout.minimumInteritemSpacing = 9
        layout.sectionInset = UIEdgeInsets(top: 24, left: 16, bottom: 0, right: 16)
        super.init(frame: .zero, collectionViewLayout: layout)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        self.backgroundColor = .whiteDay
        
        register(NFTCollectionCell.self, forCellWithReuseIdentifier: "CatalogNFTCollectionViewCell")
        register(NFTCollectionCell.self, forCellWithReuseIdentifier: "StatisticNFTCollectionViewCell")
    }
}
