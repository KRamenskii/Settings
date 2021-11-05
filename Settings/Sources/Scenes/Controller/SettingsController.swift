//
//  SettingsController.swift
//  Settings
//
//  Created by Kirill on 05.11.2021.
//

import UIKit

final class SettingsController: UIViewController {
    
    var model: SectionModel?
    
    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = SettingsView()
        model = SectionModel()
        
        configureView()
        setupView()
    }
    
    // MARK: - Settings
    
    private func setupView() {
        title = "Настройки"
    }
}

// MARK: - Configurations

private extension SettingsController {
    func configureView() {
        guard let models = model?.createModels() else { return }
        settingsView?.configureView(with: models)
    }
}
