//
//  Model.swift
//  Settings
//
//  Created by Kirill on 14.10.2021.
//

//import UIKit
//
//struct Model {
//
//    var models = [Section]()
//
//    // MARK: - Functions
//
//    mutating func createTable() {
//        models.append(Section(options: [
//            .switchCell(model: SettingSwitchOption(title: TitleOptions.airplaneMode, icon: IconImageOption.airplaneMode, iconBackgruondColor: ColorOptions.airplaneMode, isOn: false)),
//            .staticCell(model: SettingOption(title: TitleOptions.wifi, icon: IconImageOption.wifi, iconBackgruondColor: ColorOptions.wifi, titleConditionOption: TitleConditionOption.wifi)),
//            .staticCell(model: SettingOption(title: TitleOptions.bluetooth, icon: IconImageOption.bluetooth, iconBackgruondColor: ColorOptions.bluetooth, titleConditionOption: TitleConditionOption.bluetooth)),
//            .staticCell(model: SettingOption(title: TitleOptions.cellular, icon: IconImageOption.cellular, iconBackgruondColor: ColorOptions.cellular, titleConditionOption: TitleConditionOption.cellular)),
//            .staticCell(model: SettingOption(title: TitleOptions.modemMode, icon: IconImageOption.modemMode, iconBackgruondColor: ColorOptions.modemMode, titleConditionOption: TitleConditionOption.modemMode)),
//            .switchCell(model: SettingSwitchOption(title: TitleOptions.vpn, icon: IconImageOption.vpn, iconBackgruondColor: ColorOptions.vpn, isOn: false))
//        ]))
        
//        models.append(Section(options: [
//            .staticCell(model: SettingOption(title: TitleOptions.notifications, icon: IconImageOption.notifications, iconBackgruondColor: ColorOptions.notifications, titleConditionOption: TitleConditionOption.notifications)),
//            .staticCell(model: SettingOption(title: TitleOptions.sounds, icon: IconImageOption.sounds, iconBackgruondColor: ColorOptions.sounds, titleConditionOption: TitleConditionOption.sounds)),
//            .staticCell(model: SettingOption(title: TitleOptions.focusing, icon: IconImageOption.focusing, iconBackgruondColor: ColorOptions.focusing, titleConditionOption: TitleConditionOption.focusing)),
//            .staticCell(model: SettingOption(title: TitleOptions.screenTime, icon: IconImageOption.screenTime, iconBackgruondColor: ColorOptions.screenTime, titleConditionOption: TitleConditionOption.screenTime))
//        ]))
        
//        models.append(Section(options: [
//            .staticCell(model: SettingOption(title: TitleOptions.main, icon: IconImageOption.main, iconBackgruondColor: ColorOptions.main, titleConditionOption: TitleConditionOption.main)),
//            .staticCell(model: SettingOption(title: TitleOptions.controlPoint, icon: IconImageOption.controlPoint, iconBackgruondColor: ColorOptions.controlPoint, titleConditionOption: TitleConditionOption.controlPoint)),
//            .staticCell(model: SettingOption(title: TitleOptions.ScreenAndBrightness, icon: IconImageOption.ScreenAndBrightness, iconBackgruondColor: ColorOptions.ScreenAndBrightness, titleConditionOption: TitleConditionOption.ScreenAndBrightness)),
//            .staticCell(model: SettingOption(title: TitleOptions.homeScreen, icon: IconImageOption.homeScreen, iconBackgruondColor: ColorOptions.homeScreen, titleConditionOption: TitleConditionOption.homeScreen)),
//            .staticCell(model: SettingOption(title: TitleOptions.universalAccess, icon: IconImageOption.universalAccess, iconBackgruondColor: ColorOptions.universalAccess, titleConditionOption: TitleConditionOption.universalAccess)),
//            .staticCell(model: SettingOption(title: TitleOptions.wallpaper, icon: IconImageOption.wallpaper, iconBackgruondColor: ColorOptions.wallpaper, titleConditionOption: TitleConditionOption.wallpaper)),
//            .staticCell(model: SettingOption(title: TitleOptions.siriAndSearch, icon: IconImageOption.siriAndSearch, iconBackgruondColor: ColorOptions.siriAndSearch, titleConditionOption: TitleConditionOption.siriAndSearch)),
//            .staticCell(model: SettingOption(title: TitleOptions.faceIdAndPassword, icon: IconImageOption.faceIdAndPassword, iconBackgruondColor: ColorOptions.faceIdAndPassword, titleConditionOption: TitleConditionOption.faceIdAndPassword)),
//            .staticCell(model: SettingOption(title: TitleOptions.emergencyCall, icon: IconImageOption.emergencyCall, iconBackgruondColor: ColorOptions.emergencyCall, titleConditionOption: TitleConditionOption.emergencyCall)),
//            .staticCell(model: SettingOption(title: TitleOptions.virusContactNotifcations, icon: IconImageOption.virusContactNotifcations, iconBackgruondColor: ColorOptions.virusContactNotifcations, titleConditionOption: TitleConditionOption.virusContactNotifcations)),
//            .staticCell(model: SettingOption(title: TitleOptions.battery, icon: IconImageOption.battery, iconBackgruondColor: ColorOptions.battery, titleConditionOption: TitleConditionOption.battery)),
//            .staticCell(model: SettingOption(title: TitleOptions.confidentiality, icon: IconImageOption.confidentiality, iconBackgruondColor: ColorOptions.confidentiality, titleConditionOption: TitleConditionOption.confidentiality))
//        ]))
        
//        models.append(Section(options: [
//            .staticCell(model: SettingOption(title: TitleOptions.appStore, icon: IconImageOption.appStore, iconBackgruondColor: ColorOptions.appStore, titleConditionOption: TitleConditionOption.appStore)),
//            .staticCell(model: SettingOption(title: TitleOptions.walletAndApplePay, icon: IconImageOption.walletAndApplePay, iconBackgruondColor: ColorOptions.walletAndApplePay, titleConditionOption: TitleConditionOption.walletAndApplePay))
//        ]))
//    }
    
    // MARK: - Constats
    
//    enum TitleOptions {
//        static let airplaneMode = "Авиарежим"
//        static let wifi = "Wi-Fi"
//        static let bluetooth = "Bluetooth"
//        static let cellular = "Сотовая связь"
//        static let modemMode = "Режим модема"
//        static let vpn = "VPN"
//        static let notifications = "Уведомления"
//        static let sounds = "Звуки, тактильные сигналы"
//        static let focusing = "Фокусирование"
//        static let screenTime = "Экранное время"
//        static let main = "Основные"
//        static let controlPoint = "Пункт упраления"
//        static let ScreenAndBrightness = "Экран и ярскость"
//        static let homeScreen = "Экран \"Домой\""
//        static let universalAccess = "Универсальный доступ"
//        static let wallpaper = "Обои"
//        static let siriAndSearch = "Siri и поиск"
//        static let faceIdAndPassword = "Face ID и код-пароль"
//        static let emergencyCall = "Экстренный вызов - SOS"
//        static let virusContactNotifcations = "Уведомления о контакте"
//        static let battery = "Аккумулятор"
//        static let confidentiality = "Конфиденциальность"
//        static let appStore = "App Store"
//        static let walletAndApplePay = "Wallet и Apple Pay"
//    }
//
//    enum ColorOptions {
//        static let airplaneMode = UIColor.systemOrange
//        static let wifi = UIColor.systemBlue
//        static let bluetooth = UIColor.systemBlue
//        static let cellular = UIColor.systemGreen
//        static let modemMode = UIColor.systemGreen
//        static let vpn = UIColor.systemBlue
//        static let notifications = UIColor.systemRed
//        static let sounds = UIColor.systemPink
//        static let focusing = UIColor.systemIndigo
//        static let screenTime = UIColor.systemIndigo
//        static let main = UIColor.lightGray
//        static let controlPoint = UIColor.lightGray
//        static let ScreenAndBrightness = UIColor.systemBlue
//        static let homeScreen = UIColor.blue
//        static let universalAccess = UIColor.systemBlue
//        static let wallpaper = UIColor.systemCyan
//        static let siriAndSearch = UIColor.black
//        static let faceIdAndPassword = UIColor.systemGreen
//        static let emergencyCall = UIColor.systemRed
//        static let virusContactNotifcations = UIColor.white
//        static let battery = UIColor.systemGreen
//        static let confidentiality = UIColor.systemBlue
//        static let appStore = UIColor.systemBlue
//        static let walletAndApplePay = UIColor.black
//    }
//
//    enum IconImageOption {
//        static let airplaneMode = UIImage(systemName: "airplane")
//        static let wifi = UIImage(systemName: "wifi")
//        static let bluetooth = UIImage(named: "icons8-bluetooth")
//        static let cellular = UIImage(systemName: "antenna.radiowaves.left.and.right")
//        static let modemMode = UIImage(systemName: "personalhotspot")
//        static let vpn = UIImage(named: "icons8-vpn_status_bar_icon")
//        static let notifications = UIImage(systemName: "bell.badge.fill")
//        static let sounds = UIImage(systemName: "volume.3.fill")
//        static let focusing = UIImage(systemName: "moon.fill")
//        static let screenTime = UIImage(systemName: "hourglass")
//        static let main = UIImage(systemName: "gear")
//        static let controlPoint = UIImage(systemName: "switch.2")
//        static let ScreenAndBrightness = UIImage(systemName: "textformat.size")
//        static let homeScreen = UIImage(named: "icons8-keypad")
//        static let universalAccess = UIImage(named: "icons8-web_accessibility")
//        static let wallpaper = UIImage(named: "icons8-camellia")
//        static let siriAndSearch = UIImage(named: "icons8-siri")
//        static let faceIdAndPassword = UIImage(named: "icons8-face_id")
//        static let emergencyCall = UIImage(systemName: "phone.fill.arrow.up.right")
//        static let virusContactNotifcations = UIImage(named: "icons8-coronavirus")
//        static let battery = UIImage(named: "icons8-full_battery")
//        static let confidentiality = UIImage(systemName: "hand.raised.fill")
//        static let appStore = UIImage(named: "icons8-app_store")
//        static let walletAndApplePay = UIImage(named: "icons8-wallet")
//    }
//
//    enum TitleConditionOption {
//        static let airplaneMode = ""
//        static let wifi = "Не подключено"
//        static let bluetooth = "Вкл."
//        static let cellular = ""
//        static let modemMode = ""
//        static let vpn = ""
//        static let notifications = ""
//        static let sounds = ""
//        static let focusing = ""
//        static let screenTime = ""
//        static let main = ""
//        static let controlPoint = ""
//        static let ScreenAndBrightness = ""
//        static let homeScreen = ""
//        static let universalAccess = ""
//        static let wallpaper = ""
//        static let siriAndSearch = ""
//        static let faceIdAndPassword = ""
//        static let emergencyCall = ""
//        static let virusContactNotifcations = ""
//        static let battery = ""
//        static let confidentiality = ""
//        static let appStore = ""
//        static let walletAndApplePay = ""
//    }
//}

// MARK: - Configurate content cells

//struct Section {
//    let options: [SettingOptionType]
//}
//
//enum SettingOptionType {
//    case staticCell(model: SettingOption)
//    case switchCell(model: SettingSwitchOption)
//}
//
//struct SettingOption {
//    let title: String
//    let icon: UIImage?
//    let iconBackgruondColor: UIColor
//    let titleConditionOption: String
//}
//
//struct SettingSwitchOption {
//    let title: String
//    let icon: UIImage?
//    let iconBackgruondColor: UIColor
//    let isOn: Bool
//}
