//
//  SettingSwitchOptionTableViewCell.swift
//  Settings
//
//  Created by Kirill on 13.10.2021.
//

//import UIKit
//
//class SettingSwitchOptionTableViewCell: UITableViewCell {
//
//    static let identifier = StringsSwitch.identifier
//
//    private let mySwitch: UISwitch = {
//        let mySwitch = UISwitch()
//
//        mySwitch.onTintColor = .systemBlue
//        mySwitch.isOn = false
//
//        return mySwitch
//    }()
//
//    private let label: UILabel = {
//        let label = UILabel()
//
//        label.font = .systemFont(ofSize: SwitchLabel.fontSize, weight: .regular)
//
//        return label
//    }()
//
//    private let iconContainer: UIView = {
//        let view = UIView()
//
//        view.clipsToBounds = true
//        view.layer.cornerRadius = SwitchIconContainer.cornerRadius
//        view.layer.masksToBounds = true
//
//        return view
//    }()
//
//    private let iconImageView: UIImageView = {
//        let imageView = UIImageView()
//
//        imageView.tintColor = .white
//        imageView.contentMode = .scaleAspectFit
//
//        return imageView
//    }()
//
//    // MARK: - Lifecycle
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//        setupHierarchy()
//        setupLayout()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError()
//    }
//
//    // MARK: - Settings
//
//    private func setupHierarchy() {
//        contentView.addSubview(label)
//        contentView.addSubview(iconContainer)
//        iconContainer.addSubview(iconImageView)
//        contentView.addSubview(mySwitch)
//    }
//
//    private func setupLayout() {
//        let size: CGFloat = contentView.frame.size.height - SwitchNumbers.ten
//        iconContainer.frame = CGRect(
//            x: SwitchIconContainer.coordinateX,
//            y: SwitchIconContainer.coordinateY,
//            width: size,
//            height: size)
//
//        let imageSize: CGFloat = size / SwitchNumbers.oneAndFour
//        iconImageView.frame = CGRect(
//            x: (size - imageSize) / SwitchNumbers.two,
//            y: (size - imageSize) / SwitchNumbers.two,
//            width: imageSize,
//            height: imageSize)
//
//        label.frame = CGRect(
//            x: SwitchLabel.coordinateX + iconContainer.frame.size.width,
//            y: SwitchLabel.coordinateY,
//            width: contentView.frame.size.width - SwitchNumbers.twenty - iconContainer.frame.size.width - SwitchNumbers.ten,
//            height: contentView.frame.size.height)
//
//        mySwitch.frame = CGRect(
//            x: contentView.frame.size.width + Switch.coordinateX,
//            y: Switch.coordinateY,
//            width: size,
//            height: size)
//    }
//
//    public func configure(with model: SettingSwitchOption) {
//        label.text = model.title
//        iconImageView.image = model.icon
//        iconContainer.backgroundColor = model.iconBackgruondColor
//    }
//}
//
//// MARK: - Constants
//
//enum StringsSwitch {
//    static let identifier: String = "SettingSwitchOptionTableViewCell"
//}
//
//enum SwitchLabel {
//    static let fontSize: CGFloat = 17
//    static let coordinateX: CGFloat = 25
//    static let coordinateY: CGFloat = 0
//
//}
//
//enum SwitchIconContainer {
//    static let cornerRadius: CGFloat = 8
//    static let coordinateX: CGFloat = 15
//    static let coordinateY: CGFloat = 5
//}
//
//enum SwitchNumbers {
//    static let two: CGFloat = 2
//    static let ten: CGFloat = 10
//    static let twenty: CGFloat = 20
//    static let oneAndFour: CGFloat = 1.4
//}
//
//enum Switch {
//    static let coordinateX: CGFloat = 25
//    static let coordinateY: CGFloat = 5
//}
