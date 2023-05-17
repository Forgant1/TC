//
//  TableViewCell.swift
//  TC
//
//  Created by Дарья Полковова on 23.04.2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    private lazy var titleLabelLeft: UILabel = {
        let label = UILabel()
               label.textColor = .black
               return label

    }()
    
    private lazy var titleLabelRight: UILabel = {
            let label = UILabel()
            label.textColor = .gray
            label.textAlignment = .right
            return label
        }()

    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .blue
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .blue
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        setupView()
        setupConstaints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(nameLabel)
        addSubview(timeLabel)
    }
    
    private func setupConstaints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            
            timeLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            timeLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 16),
            timeLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            timeLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16)
        ])
    }
    
    func configure(data: Task) {
        nameLabel.text = data.name
        timeLabel.text = data.dateStart.getTime() + " - " + data.dateFinish.getTime()
    }
    
    private func addSubviews() {
           [
               titleLabelRight,
               titleLabelLeft
           ].forEach { addSubview($0) }
       }

}
