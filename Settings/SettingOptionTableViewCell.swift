//
//  SettingOptionTableViewCell.swift
//  Settings
//
//  Created by Kirill on 13.10.2021.
//

import UIKit

class SettingOptionTableViewCell: UITableViewCell {
    
    static let identifier = Strings.identifier
    
    private let label: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: Label.fontSize, weight: .regular)
        
        return label
    }()
    
    private let iconContainer: UIView = {
        let view = UIView()
        
        view.clipsToBounds = true
        view.layer.cornerRadius = IconContainer.cornerRadius
        view.layer.masksToBounds = true
        
        return view
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupHierarchy()
        setupLayout()
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        iconContainer.addSubview(iconImageView)
    }
    
    private func setupLayout() {
        let size: CGFloat = contentView.frame.size.height - Numbers.ten
        iconContainer.frame = CGRect(
            x: IconContainer.coordinateX,
            y: IconContainer.coordinateY,
            width: size,
            height: size)

        let imageSize: CGFloat = size / Numbers.oneAndFour
        iconImageView.frame = CGRect(
            x: (size - imageSize) / Numbers.two,
            y: (size - imageSize) / Numbers.two,
            width: imageSize,
            height: imageSize)

        label.frame = CGRect(
            x: Label.coordinateX + iconContainer.frame.size.width,
            y: Label.coordinateY,
            width: contentView.frame.size.width - Numbers.twenty - iconContainer.frame.size.width - Numbers.ten,
            height: contentView.frame.size.height)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
    }
    
    public func configure(with model: SettingOption) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgruondColor
    }
}

// MARK: - Constants

enum Strings {
    static let identifier: String = "SettingTableViewCell"
}

enum Label {
    static let fontSize: CGFloat = 17
    static let coordinateX: CGFloat = 25
    static let coordinateY: CGFloat = 0

}

enum IconContainer {
    static let cornerRadius: CGFloat = 8
    static let coordinateX: CGFloat = 15
    static let coordinateY: CGFloat = 5
}

enum Numbers {
    static let two: CGFloat = 2
    static let ten: CGFloat = 10
    static let twenty: CGFloat = 20
    static let oneAndFour: CGFloat = 1.4
}

