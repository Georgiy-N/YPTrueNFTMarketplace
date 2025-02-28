//
//  CatalogViewModelProtocol.swift
//  FakeNFT
//
//  Created by Евгений on 31.07.2023.
//

import UIKit

protocol CatalogViewModelProtocol: AnyObject {
    var provider: DataProviderProtocol { get }
    var nftCollectionsObservable: Observable<NFTCollections?> { get }
    var networkErrorObservable: Observable<String?> { get }
    func sortNFTCollection(option: SortingOption, newCollection: [NFTCollection]?)
    func fetchCollections()
}
