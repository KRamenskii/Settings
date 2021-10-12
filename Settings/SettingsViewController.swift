//
//  ViewController.swift
//  Settings
//
//  Created by Kirill on 12.10.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var models = [Section]()
    
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        
        table.register(SettingOptionTableViewCell.self,
                       forCellReuseIdentifier: SettingOptionTableViewCell.identifier)
        table.register(SettingSwitchOptionTableViewCell.self,
                       forCellReuseIdentifier: SettingSwitchOptionTableViewCell.identifier)
        
        return table
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        createTable()
        setupHierarchy()
        setupLayout()
        setupView()
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.frame = view.bounds
    }
    
    private func setupView() {
        title = "Настройки"
    }
    
    // MARK: - Creating a table and filling it
    
    func createTable() {
        models.append(Section(options: [
            .switchCell(model: SettingSwitchOption(title: titleOptions.firstOptionFirstSection, icon: iconImageOption.firstOptionFirstSection, iconBackgruondColor: colorOptions.firstOptionFirstSection, isOn: false)),
            .staticCell(model: SettingOption(title: titleOptions.secondOptionFirstSection, icon: iconImageOption.secondOptionFirstSection, iconBackgruondColor: colorOptions.secondOptionFirstSection)),
            .staticCell(model: SettingOption(title: titleOptions.thirdOptionFirstSection, icon: iconImageOption.thirdOptionFirstSection, iconBackgruondColor: colorOptions.thirdOptionFirstSection)),
            .staticCell(model: SettingOption(title: titleOptions.fourthOptionFirstSection, icon: iconImageOption.fourthOptionFirstSection, iconBackgruondColor: colorOptions.fourthOptionFirstSection)),
            .staticCell(model: SettingOption(title: titleOptions.fifthOptionFirstSection, icon: iconImageOption.fifthOptionFirstSection, iconBackgruondColor: colorOptions.fifthOptionFirstSection))
        ]))
        
        models.append(Section(options: [
            .staticCell(model: SettingOption(title: titleOptions.firstOptionSecondSection, icon: iconImageOption.firstOptionSecondSection, iconBackgruondColor: colorOptions.firstOptionSecondSection)),
            .staticCell(model: SettingOption(title: titleOptions.secondOptionSecondSection, icon: iconImageOption.secondOptionSecondSection, iconBackgruondColor: colorOptions.secondOptionSecondSection)),
            .staticCell(model: SettingOption(title: titleOptions.thirdOptionSecondSection, icon: iconImageOption.thirdOptionSecondSection, iconBackgruondColor: colorOptions.thirdOptionSecondSection)),
            .staticCell(model: SettingOption(title: titleOptions.fourthOptionSecondSection, icon: iconImageOption.fourthOptionSecondSection, iconBackgruondColor: colorOptions.fourthOptionSecondSection))
        ]))
        
        models.append(Section(options: [
            .staticCell(model: SettingOption(title: titleOptions.firstOptionThirdSection, icon: iconImageOption.firstOptionThirdSection, iconBackgruondColor: colorOptions.firstOptionThirdSection)),
            .staticCell(model: SettingOption(title: titleOptions.secondOptionThirdSection, icon: iconImageOption.secondOptionThirdSection, iconBackgruondColor: colorOptions.secondOptionThirdSection)),
            .staticCell(model: SettingOption(title: titleOptions.thirdOptionThirdSection, icon: iconImageOption.thirdOptionThirdSection, iconBackgruondColor: colorOptions.thirdOptionThirdSection)),
            .staticCell(model: SettingOption(title: titleOptions.fourthOptionThirdSection, icon: iconImageOption.fourthOptionThirdSection, iconBackgruondColor: colorOptions.fourthOptionThirdSection)),
            .staticCell(model: SettingOption(title: titleOptions.fifthOptionThirdSection, icon: iconImageOption.fifthOptionThirdSection, iconBackgruondColor: colorOptions.fifthOptionThirdSection)),
            .staticCell(model: SettingOption(title: titleOptions.sixthOptionThirdSection, icon: iconImageOption.sixthOptionThirdSection, iconBackgruondColor: colorOptions.sixthOptionThirdSection)),
            .staticCell(model: SettingOption(title: titleOptions.seventhOptionThirdSection, icon: iconImageOption.seventhOptionThirdSection, iconBackgruondColor: colorOptions.seventhOptionThirdSection)),
            .staticCell(model: SettingOption(title: titleOptions.eighthOptionThirdSection, icon: iconImageOption.eighthOptionThirdSection, iconBackgruondColor: colorOptions.eighthOptionThirdSection)),
            .staticCell(model: SettingOption(title: titleOptions.ninthOptionThirdSection, icon: iconImageOption.ninthOptionThirdSection, iconBackgruondColor: colorOptions.ninthOptionThirdSection)),
            .staticCell(model: SettingOption(title: titleOptions.tenthOptionThirdSection, icon: iconImageOption.tenthOptionThirdSection, iconBackgruondColor: colorOptions.tenthOptionThirdSection)),
            .staticCell(model: SettingOption(title: titleOptions.eleventhOptionThirdSection, icon: iconImageOption.eleventhOptionThirdSection, iconBackgruondColor: colorOptions.eleventhOptionThirdSection)),
            .staticCell(model: SettingOption(title: titleOptions.twelfthOptionThirdSection, icon: iconImageOption.twelfthOptionThirdSection, iconBackgruondColor: colorOptions.twelfthOptionThirdSection)),
        ]))
        
        models.append(Section(options: [
            .staticCell(model: SettingOption(title: titleOptions.firstOptionFourthSection, icon: iconImageOption.firstOptionFourthSection, iconBackgruondColor: colorOptions.firstOptionFourthSection)),
            .staticCell(model: SettingOption(title: titleOptions.secondOptionFourthSection, icon: iconImageOption.secondOptionFourthSection, iconBackgruondColor: colorOptions.secondOptionFourthSection))
        ]))
    }
}

// MARK: - Delegate TableView

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.section].options[indexPath.row]
        
        switch model.self {
        case .staticCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingOptionTableViewCell.identifier, for: indexPath) as? SettingOptionTableViewCell else {
                return UITableViewCell()
            }

            cell.configure(with: model)
            return cell
        case .switchCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingSwitchOptionTableViewCell.identifier, for: indexPath) as? SettingSwitchOptionTableViewCell else {
                return UITableViewCell()
            }

            cell.configure(with: model)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let type = models[indexPath.section].options[indexPath.row]
        switch type.self {
        case .staticCell(let model):
            print("Нажата ячейка \(model.title)")
        case .switchCell(let model):
            print("Нажата ячейка \(model.title)")
        }
    }
}

// MARK: - Configurate content cells

struct Section {
    let options: [SettingOptionType]
}

enum SettingOptionType {
    case staticCell(model: SettingOption)
    case switchCell(model: SettingSwitchOption)
}

struct SettingOption {
    let title: String
    let icon: UIImage?
    let iconBackgruondColor: UIColor
}

struct SettingSwitchOption {
    let title: String
    let icon: UIImage?
    let iconBackgruondColor: UIColor
    let isOn: Bool
}

// MARK: - Constants

enum titleOptions {
    static let firstOptionFirstSection = "Авиарежим"
    static let secondOptionFirstSection = "Wi-Fi"
    static let thirdOptionFirstSection = "Bluetooth"
    static let fourthOptionFirstSection = "Сотовая связь"
    static let fifthOptionFirstSection = "Режим модема"
    static let firstOptionSecondSection = "Уведомления"
    static let secondOptionSecondSection = "Звуки, тактильные сигналы"
    static let thirdOptionSecondSection = "Фокусирование"
    static let fourthOptionSecondSection = "Экранное время"
    static let firstOptionThirdSection = "Основные"
    static let secondOptionThirdSection = "Пункт упраления"
    static let thirdOptionThirdSection = "Экран и ярскость"
    static let fourthOptionThirdSection = "Экран \"Домой\""
    static let fifthOptionThirdSection = "Универсальный доступ"
    static let sixthOptionThirdSection = "Обои"
    static let seventhOptionThirdSection = "Siri и поиск"
    static let eighthOptionThirdSection = "Face ID и код-пароль"
    static let ninthOptionThirdSection = "Экстренный вызов - SOS"
    static let tenthOptionThirdSection = "Уведомления о контакте"
    static let eleventhOptionThirdSection = "Аккумулятор"
    static let twelfthOptionThirdSection = "Конфиденциальность"
    static let firstOptionFourthSection = "App Store"
    static let secondOptionFourthSection = "Wallet и Apple Pay"
}

enum colorOptions {
    static let firstOptionFirstSection = UIColor.systemOrange
    static let secondOptionFirstSection = UIColor.systemBlue
    static let thirdOptionFirstSection = UIColor.systemBlue
    static let fourthOptionFirstSection = UIColor.systemGreen
    static let fifthOptionFirstSection = UIColor.systemGreen
    static let firstOptionSecondSection = UIColor.systemRed
    static let secondOptionSecondSection = UIColor.systemPink
    static let thirdOptionSecondSection = UIColor.systemIndigo
    static let fourthOptionSecondSection = UIColor.systemIndigo
    static let firstOptionThirdSection = UIColor.lightGray
    static let secondOptionThirdSection = UIColor.lightGray
    static let thirdOptionThirdSection = UIColor.systemBlue
    static let fourthOptionThirdSection = UIColor.blue
    static let fifthOptionThirdSection = UIColor.systemBlue
    static let sixthOptionThirdSection = UIColor.systemCyan
    static let seventhOptionThirdSection = UIColor.black
    static let eighthOptionThirdSection = UIColor.systemGreen
    static let ninthOptionThirdSection = UIColor.systemRed
    static let tenthOptionThirdSection = UIColor.white
    static let eleventhOptionThirdSection = UIColor.systemGreen
    static let twelfthOptionThirdSection = UIColor.systemBlue
    static let firstOptionFourthSection = UIColor.systemBlue
    static let secondOptionFourthSection = UIColor.black
}

enum iconImageOption {
    static let firstOptionFirstSection = UIImage(systemName: "airplane")
    static let secondOptionFirstSection = UIImage(systemName: "wifi")
    static let thirdOptionFirstSection = UIImage(named: "icons8-airplane_mode_on")
    static let fourthOptionFirstSection = UIImage(systemName: "antenna.radiowaves.left.and.right")
    static let fifthOptionFirstSection = UIImage(systemName: "personalhotspot")
    static let firstOptionSecondSection = UIImage(systemName: "bell.badge.fill")
    static let secondOptionSecondSection = UIImage(systemName: "volume.3.fill")
    static let thirdOptionSecondSection = UIImage(systemName: "moon.fill")
    static let fourthOptionSecondSection = UIImage(systemName: "hourglass")
    static let firstOptionThirdSection = UIImage(systemName: "gear")
    static let secondOptionThirdSection = UIImage(systemName: "switch.2")
    static let thirdOptionThirdSection = UIImage(systemName: "textformat.size")
    static let fourthOptionThirdSection = UIImage(named: "icons8-keypad")
    static let fifthOptionThirdSection = UIImage(named: "icons8-web_accessibility")
    static let sixthOptionThirdSection = UIImage(named: "icons8-camellia")
    static let seventhOptionThirdSection = UIImage(named: "icons8-siri")
    static let eighthOptionThirdSection = UIImage(named: "icons8-face_id")
    static let ninthOptionThirdSection = UIImage(systemName: "phone.fill.arrow.up.right")
    static let tenthOptionThirdSection = UIImage(named: "icons8-coronavirus")
    static let eleventhOptionThirdSection = UIImage(named: "icons8-full_battery")
    static let twelfthOptionThirdSection = UIImage(systemName: "hand.raised.fill")
    static let firstOptionFourthSection = UIImage(named: "icons8-app_store")
    static let secondOptionFourthSection = UIImage(named: "icons8-wallet")
}

