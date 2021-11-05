//
//  SettingsView.swift
//  Settings
//
//  Created by Kirill on 05.11.2021.
//

import UIKit

final class SettingsView: UIView {
    
    // MARK: - Configuration
    
    func configureView(with models: [Section]) {
        self.models = models
    }
    
    // MARK: - Private properties
    
    private var models = [Section]()
    
    // MARK: - Views
    
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        
        table.register(SettingsOptionTableViewCell.self,
                       forCellReuseIdentifier: SettingsOptionTableViewCell.identifier)
        table.register(SettingsConditionOptionTableViewCell.self,
                       forCellReuseIdentifier: SettingsConditionOptionTableViewCell.identifier)
        table.register(SettingsSwitchOptionTableViewCell.self,
                       forCellReuseIdentifier: SettingsSwitchOptionTableViewCell.identifier)
        table.translatesAutoresizingMaskIntoConstraints = false
        
        return table
    }()
    
    // MARK: - Initial
    
    init() {
        super.init(frame: .zero)
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
        createDelegateForTable()
    }
    
    // MARK: - Settings
    
    private func createDelegateForTable() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
}


// MARK: - UITableViewDelegate

extension SettingsView: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
}

// MARK: - UITableViewDataSource

extension SettingsView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.section].options[indexPath.row]
        
        switch model.self {
        case .staticCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsOptionTableViewCell.identifier, for: indexPath) as? SettingsOptionTableViewCell else {
                return UITableViewCell()
            }
            
            cell.configureView(with: model)
            
            return cell
            
        case .staticConditionCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsConditionOptionTableViewCell.identifier, for: indexPath) as? SettingsConditionOptionTableViewCell else {
                return UITableViewCell()
            }
            
            cell.configureView(with: model)
            
            return cell
            
        case .switchCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsSwitchOptionTableViewCell.identifier, for: indexPath) as? SettingsSwitchOptionTableViewCell else {
                return UITableViewCell()
            }
            
            cell.configureView(with: model)
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let type = models[indexPath.section].options[indexPath.row]
        
        switch type.self {
        case .staticCell(let model):
            print("Нажата ячейка \(model.title)")
            
        case .staticConditionCell(let model):
            print("Нажата ячейка \(model.title)")
            
        case .switchCell(let model):
            print("Нажата ячейка \(model.title)")
        }
    }
}
