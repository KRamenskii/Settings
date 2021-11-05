//
//  DataSetions .swift
//  Settings
//
//  Created by Kirill on 05.11.2021.
//

import Foundation

extension SectionModel {
    
    enum TitleOptions {
        static let airplaneMode = "Авиарежим"
        static let wifi = "Wi-Fi"
        static let bluetooth = "Bluetooth"
        static let cellular = "Сотовая связь"
        static let modemMode = "Режим модема"
        static let vpn = "VPN"
        static let notifications = "Уведомления"
        static let sounds = "Звуки, тактильные сигналы"
        static let focusing = "Фокусирование"
        static let screenTime = "Экранное время"
        static let main = "Основные"
        static let controlPoint = "Пункт упраления"
        static let ScreenAndBrightness = "Экран и ярскость"
        static let homeScreen = "Экран \"Домой\""
        static let universalAccess = "Универсальный доступ"
        static let wallpaper = "Обои"
        static let siriAndSearch = "Siri и поиск"
        static let faceIdAndPassword = "Face ID и код-пароль"
        static let emergencyCall = "Экстренный вызов - SOS"
        static let virusContactNotifcations = "Уведомления о контакте"
        static let battery = "Аккумулятор"
        static let confidentiality = "Конфиденциальность"
        static let appStore = "App Store"
        static let walletAndApplePay = "Wallet и Apple Pay"
    }
    
    enum ColorOptions {
        static let airplaneMode = "systemOrange"
        static let wifi = "systemBlue"
        static let bluetooth = "systemBlue"
        static let cellular = "systemGreen"
        static let modemMode = "systemGreen"
        static let vpn = "systemBlue"
        static let notifications = "systemRed"
        static let sounds = "systemPink"
        static let focusing = "systemIndigo"
        static let screenTime = "systemIndigo"
        static let main = "lightGray"
        static let controlPoint = "lightGray"
        static let ScreenAndBrightness = "systemBlue"
        static let homeScreen = "blue"
        static let universalAccess = "systemBlue"
        static let wallpaper = "systemCyan"
        static let siriAndSearch = "black"
        static let faceIdAndPassword = "systemGreen"
        static let emergencyCall = "systemRed"
        static let virusContactNotifcations = "white"
        static let battery = "systemGreen"
        static let confidentiality = "systemBlue"
        static let appStore = "systemBlue"
        static let walletAndApplePay = "black"
    }
    
    enum IconImageOption {
        static let airplaneMode = "airplane"
        static let wifi = "wifi"
        static let bluetooth = "icons8-bluetooth"
        static let cellular = "antenna.radiowaves.left.and.right"
        static let modemMode = "personalhotspot"
        static let vpn = "icons8-vpn_status_bar_icon"
        static let notifications = "bell.badge.fill"
        static let sounds = "volume.3.fill"
        static let focusing = "moon.fill"
        static let screenTime = "hourglass"
        static let main = "gear"
        static let controlPoint = "switch.2"
        static let ScreenAndBrightness = "textformat.size"
        static let homeScreen = "icons8-keypad"
        static let universalAccess = "icons8-web_accessibility"
        static let wallpaper = "icons8-camellia"
        static let siriAndSearch = "icons8-siri"
        static let faceIdAndPassword = "icons8-face_id"
        static let emergencyCall = "phone.fill.arrow.up.right"
        static let virusContactNotifcations = "icons8-coronavirus"
        static let battery = "icons8-full_battery"
        static let confidentiality = "hand.raised.fill"
        static let appStore = "icons8-app_store"
        static let walletAndApplePay = "icons8-wallet"
    }
    
    enum TitleConditionOption {
        static let wifi = "Не подключено"
        static let bluetooth = "Вкл."
    }
}
