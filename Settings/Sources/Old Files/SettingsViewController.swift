//
//  ViewController.swift
//  Settings
//
//  Created by Kirill on 12.10.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var model = Model()
    
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
        setupHierarchy()
        setupLayout()
        setupView()
        createTable()
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
    
    private func createTable() {
        model.createTable()
        models = model.models
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
