//
//  SectionModel.swift
//  Settings
//
//  Created by Kirill on 05.11.2021.
//

import Foundation

final class SectionModel {
    
    func createModels() -> [Section] {
        return [
            Section(options: [
                .switchCell(model: SettingSwitchOption(title: TitleOptions.airplaneMode, iconImageName: IconImageOption.airplaneMode, iconBackgruondColor: ColorOptions.airplaneMode, isOn: false)),
                .staticConditionCell(model: SettingConditionOption(title: TitleOptions.wifi, iconImageName: IconImageOption.wifi, iconBackgruondColor: ColorOptions.wifi, titleConditionOption: TitleConditionOption.wifi)),
                .staticConditionCell(model: SettingConditionOption(title: TitleOptions.bluetooth, iconImageName: IconImageOption.bluetooth, iconBackgruondColor: ColorOptions.bluetooth, titleConditionOption: TitleConditionOption.bluetooth)),
                .staticCell(model: SettingOption(title: TitleOptions.cellular, iconImageName: IconImageOption.cellular, iconBackgruondColor: ColorOptions.cellular)),
                .staticCell(model: SettingOption(title: TitleOptions.modemMode, iconImageName: IconImageOption.modemMode, iconBackgruondColor: ColorOptions.modemMode)),
                .switchCell(model: SettingSwitchOption(title: TitleOptions.vpn, iconImageName: IconImageOption.vpn, iconBackgruondColor: ColorOptions.vpn, isOn: false))
            ]),
            
            Section(options: [
                .staticCell(model: SettingOption(title: TitleOptions.notifications, iconImageName: IconImageOption.notifications, iconBackgruondColor: ColorOptions.notifications)),
                .staticCell(model: SettingOption(title: TitleOptions.sounds, iconImageName: IconImageOption.sounds, iconBackgruondColor: ColorOptions.sounds)),
                .staticCell(model: SettingOption(title: TitleOptions.focusing, iconImageName: IconImageOption.focusing, iconBackgruondColor: ColorOptions.focusing)),
                .staticCell(model: SettingOption(title: TitleOptions.screenTime, iconImageName: IconImageOption.screenTime, iconBackgruondColor: ColorOptions.screenTime))
            ]),
            
            Section(options: [
                .staticCell(model: SettingOption(title: TitleOptions.main, iconImageName: IconImageOption.main, iconBackgruondColor: ColorOptions.main)),
                .staticCell(model: SettingOption(title: TitleOptions.controlPoint, iconImageName: IconImageOption.controlPoint, iconBackgruondColor: ColorOptions.controlPoint)),
                .staticCell(model: SettingOption(title: TitleOptions.ScreenAndBrightness, iconImageName: IconImageOption.ScreenAndBrightness, iconBackgruondColor: ColorOptions.ScreenAndBrightness)),
                .staticCell(model: SettingOption(title: TitleOptions.homeScreen, iconImageName: IconImageOption.homeScreen, iconBackgruondColor: ColorOptions.homeScreen)),
                .staticCell(model: SettingOption(title: TitleOptions.universalAccess, iconImageName: IconImageOption.universalAccess, iconBackgruondColor: ColorOptions.universalAccess)),
                .staticCell(model: SettingOption(title: TitleOptions.wallpaper, iconImageName: IconImageOption.wallpaper, iconBackgruondColor: ColorOptions.wallpaper)),
                .staticCell(model: SettingOption(title: TitleOptions.siriAndSearch, iconImageName: IconImageOption.siriAndSearch, iconBackgruondColor: ColorOptions.siriAndSearch)),
                .staticCell(model: SettingOption(title: TitleOptions.faceIdAndPassword, iconImageName: IconImageOption.faceIdAndPassword, iconBackgruondColor: ColorOptions.faceIdAndPassword)),
                .staticCell(model: SettingOption(title: TitleOptions.emergencyCall, iconImageName: IconImageOption.emergencyCall, iconBackgruondColor: ColorOptions.emergencyCall)),
                .staticCell(model: SettingOption(title: TitleOptions.virusContactNotifcations, iconImageName: IconImageOption.virusContactNotifcations, iconBackgruondColor: ColorOptions.virusContactNotifcations)),
                .staticCell(model: SettingOption(title: TitleOptions.battery, iconImageName: IconImageOption.battery, iconBackgruondColor: ColorOptions.battery)),
                .staticCell(model: SettingOption(title: TitleOptions.confidentiality, iconImageName: IconImageOption.confidentiality, iconBackgruondColor: ColorOptions.confidentiality))
            ]),
            
            Section(options: [
                .staticCell(model: SettingOption(title: TitleOptions.appStore, iconImageName: IconImageOption.appStore, iconBackgruondColor: ColorOptions.appStore)),
                .staticCell(model: SettingOption(title: TitleOptions.walletAndApplePay, iconImageName: IconImageOption.walletAndApplePay, iconBackgruondColor: ColorOptions.walletAndApplePay))
            ])
        ]
    }
}
