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
        static let airplaneMode = "#FE9503" 
        static let wifi = "007BFF"
        static let bluetooth = "007BFF"
        static let cellular = "34C75B"
        static let modemMode = "34C75B"
        static let vpn = "007BFF"
        static let notifications = "FF3B30"
        static let sounds = "FE1E4B"
        static let focusing = "5757D4"
        static let screenTime = "5757D4"
        static let main = "8D8E91"
        static let controlPoint = "8D8E91"
        static let ScreenAndBrightness = "007BFF"
        static let homeScreen = "023FDB"
        static let universalAccess = "007BFF"
        static let wallpaper = "0096D1"
        static let siriAndSearch = "0F0F0F"
        static let faceIdAndPassword = "34C75B"
        static let emergencyCall = "FF3B30"
        static let virusContactNotifcations = "FFFFFF"
        static let battery = "34C75B"
        static let confidentiality = "007BFF"
        static let appStore = "007BFF"
        static let walletAndApplePay = "0F0F0F"
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
