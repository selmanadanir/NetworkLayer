//
//  PostCell.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 20.01.2024.
//

import UIKit

class PostCell: UITableViewCell {
    
    // MARK: - Views
    private lazy var stackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [idLabel, 
                                                  titleLabel,
                                                  descriptionLabel])
        view.spacing = 8
        view.distribution = .fill
        view.axis = .vertical
        return view
    }()
    
    private lazy var idLabel: UILabel = {
        let view = UILabel()
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.numberOfLines = 0
        return view
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let view = UILabel()
        view.numberOfLines = 0
        return view
    }()
    
    // MARK: - Internal Variable
    var data: PostModel? {
        didSet {
            feed(data: data)
        }
    }
    
    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    private func setupView() {
        addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func feed(data: PostModel?) {
        guard let data, let number = data.id else { return }
        idLabel.text = "\(number)"
        titleLabel.text = data.title
        descriptionLabel.text = data.body
    }
}
