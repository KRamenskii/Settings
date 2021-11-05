//
//  SettingsSwitchOptionTableViewCell.swift
//  Settings
//
//  Created by Kirill on 05.11.2021.
//

import UIKit

final class SettingsSwitchOptionTableViewCell: UITableViewCell {
    
    static let identifier = Strings.identifier
    
    // MARK: - Configuration
    
    func configureView(with model: SettingSwitchOption) {
        label.text = model.title
        
        if UIImage(systemName: model.iconImageName) == nil {
            iconImageView.image = UIImage(named: model.iconImageName)
        } else {
            iconImageView.image = UIImage(systemName: model.iconImageName)
        }
        
        iconContainer.backgroundColor = UIColor(hex: model.iconBackgruondColor)
    }
    
    // MARK: - Views
    
    private let mySwitch: UISwitch = {
        let mySwitch = UISwitch()
        
        mySwitch.onTintColor = .systemBlue
        mySwitch.isOn = false
        
        return mySwitch
    }()
    
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
    
    // MARK: - Initial
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        iconContainer.addSubview(iconImageView)
        contentView.addSubview(mySwitch)
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
        
        mySwitch.frame = CGRect(
            x: contentView.frame.size.width + Switch.coordinateX,
            y: Switch.coordinateY,
            width: size,
            height: size)
    }
}

// MARK: - Constants

extension SettingsSwitchOptionTableViewCell {
    
    enum Strings {
        static let identifier: String = "SettingsSwitchOptionTableViewCell"
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

    enum Switch {
        static let coordinateX: CGFloat = 25
        static let coordinateY: CGFloat = 5
    }
}
