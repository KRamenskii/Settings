//
//  Section .swift
//  Settings
//
//  Created by Kirill on 05.11.2021.
//

import Foundation

struct Section {
    let options: [SettingOptionType]
}

enum SettingOptionType {
    case staticCell(model: SettingOption)
    case staticConditioncell(model: SettingConditionOption)
    case switchCell(model: SettingSwitchOption)
}

struct SettingOption {
    let title: String
    let iconImageName: String
    let iconBackgruondColor: String
}

struct SettingConditionOption {
    let title: String
    let iconImageName: String
    let iconBackgruondColor: String
    let titleConditionOption: String
}

struct SettingSwitchOption {
    let title: String
    let iconImageName: String
    let iconBackgruondColor: String
    let isOn: Bool
}
