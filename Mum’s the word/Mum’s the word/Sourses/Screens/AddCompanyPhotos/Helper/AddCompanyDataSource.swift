//
//  AddCompanyDataSource.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 22.05.2023.
//

import UIKit

final class AddControllerDataSource: UICollectionViewDiffableDataSource<CompanyPhotos,Photo> {
    
    init(collection: UICollectionView, handler: @escaping (IndexPath) -> () ) {
        super.init(collectionView: collection) { collectionView, indexPath, itemIdentifier in
            let cell = PhotoCell.dequeue(collectionView, for: indexPath)
            cell.configure(model: itemIdentifier)
            cell.crossDidTap = { index in handler(index) }
            return cell
        }
    }
    
    func update(model: [Photo]) {
        var snapshot = snapshot()
        snapshot.deleteAllItems()
        snapshot.appendSections([.photos])
        snapshot.appendItems(model,toSection: .photos)
        apply(snapshot,animatingDifferences: true)
    }
}
