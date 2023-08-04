//
//  DeleteItemViewControler.swift
//  FakeNFT
//
//  Created by Даниил Крашенинников on 01.08.2023.
//

import UIKit

final class DeleteItemViewControler: UIViewController {
    
// MARK: UI constants and variables
    private let blurEffect = UIBlurEffect(style: .light)
    
    private lazy var itemImage: UIImageView = {
        let itemImage = UIImageView()
        itemImage.image = UIImage(named: "mokImageNFT")
        return itemImage
    }()
    
    private lazy var alertlLabel: UILabel = {
        let alertlLabel = UILabel()
        alertlLabel.numberOfLines = 2
        alertlLabel.textAlignment = .center
        alertlLabel.textColor = .blackDay
        alertlLabel.font = UIFont.systemFont(ofSize: 13)
        alertlLabel.text = L10n.Cart.MainScreen.deleteItemAlert
        return alertlLabel
    }()
    
    private lazy var deleteItemButton: UIButton = {
        let deleteCartButton = UIButton()
        deleteCartButton.backgroundColor = .blackDay
        deleteCartButton.setTitle(L10n.Cart.MainScreen.deleteItemButton, for: .normal)
        deleteCartButton.setTitleColor(.red, for: .normal)
        deleteCartButton.layer.cornerRadius = 12
        deleteCartButton.titleLabel?.textAlignment = .center
        deleteCartButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return deleteCartButton
    }()
    
    private lazy var returnToCartButton: UIButton = {
        let returnToCartButton = UIButton()
        returnToCartButton.backgroundColor = .blackDay
        returnToCartButton.setTitle(L10n.Cart.MainScreen.returnButton, for: .normal)
        returnToCartButton.setTitleColor(.whiteDay, for: .normal)
        returnToCartButton.layer.cornerRadius = 12
        returnToCartButton.titleLabel?.textAlignment = .center
        returnToCartButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return returnToCartButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        setupConstraints()
        setTargets()
    }
}

// MARK: Set Up UI
extension DeleteItemViewControler {
    
   private func setUpViews() {
        let blurEffectView = UIVisualEffectView(effect: self.blurEffect)
                blurEffectView.frame = view.bounds
                blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        [blurEffectView, itemImage, alertlLabel, deleteItemButton, returnToCartButton].forEach(view.setupView)
    }
    
   private func setupConstraints() {
        NSLayoutConstraint.activate([
            itemImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 244),
            itemImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            alertlLabel.topAnchor.constraint(equalTo: itemImage.bottomAnchor, constant: 12),
            alertlLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 97),
            alertlLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -98),
            deleteItemButton.topAnchor.constraint(equalTo: alertlLabel.bottomAnchor, constant: 20),
            deleteItemButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 56),
            deleteItemButton.widthAnchor.constraint(equalToConstant: 127),
            deleteItemButton.heightAnchor.constraint(equalToConstant: 44),
            returnToCartButton.topAnchor.constraint(equalTo: alertlLabel.bottomAnchor, constant: 20),
            returnToCartButton.leadingAnchor.constraint(equalTo: deleteItemButton.trailingAnchor, constant: 8),
            returnToCartButton.widthAnchor.constraint(equalToConstant: 127),
            returnToCartButton.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
   private func setTargets() {
       returnToCartButton.addTarget(self, action: #selector(returnToCart), for: .touchUpInside)
    }
    
    @objc
    private func returnToCart() {
        dismiss(animated: true)
    }
}
