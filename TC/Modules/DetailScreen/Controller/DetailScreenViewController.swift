//
//  DetailScreenViewController.swift
//  TC
//
//  Created by Дарья Полковова on 23.04.2023.
//

import UIKit

class DetailScreenViewController: UIViewController {
    
    private let data: Task
    private lazy var detailView = DetailScreenView()
    
    init(data: Task) {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        view.addSubview(detailView)
        detailView.translatesAutoresizingMaskIntoConstraints = false
        detailView.configure(data: data)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            detailView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            detailView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            detailView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])
    }
}
