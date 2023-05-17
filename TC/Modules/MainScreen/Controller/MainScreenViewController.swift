//
//  ViewController.swift
//  TC
//
//  Created by Дарья Полковова on 19.04.2023.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    private lazy var jsonService = JSONService()
    private lazy var mainView = MainScreenView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setConstraints()
    }
    
    private func setupView() {
        mainView.delegate = self
        view.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.data = jsonService.getJsonFromFile(filename: "mockData") ?? []
        mainView.tableView.reloadData()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}

extension MainScreenViewController: MainScreenViewDelegate {
    func openDetailScreen(data: Task) {
        let detailVC = DetailScreenViewController(data: data)
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

