//
//  RulesVC.swift
//  CardWorkoutProgrammatic
//
//  Created by Fatmanur Birinci on 14.01.2023.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let exerciseLabel = UILabel()
    let closeButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()
        configureCloseButton()
        
    }
    
    @objc func closeRules() {
        self.dismiss(animated: true)
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
    
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureCloseButton() {
        closeButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        closeButton.configuration?.imageColorTransformer = .monochromeTint
        closeButton.configuration?.baseBackgroundColor = .clear
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.layer.cornerRadius = 8
        view.addSubview(closeButton)
        closeButton.addTarget(self, action: #selector(closeRules), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            closeButton.widthAnchor.constraint(equalToConstant: 80),
            closeButton.heightAnchor.constraint(equalToConstant: 50),
            closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60)

        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercise you do.\n\nJ = 11, Q = 12, K = 13, A = 14"
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0  //0 Automatically adjusts the lines.
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureExerciseLabel() {
        view.addSubview(exerciseLabel)
       exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
       exerciseLabel.text = "♠️ = Push-ups\n\n♥️ = Sit-up\n\n♣️ = Burpees\n\n♦️ = Jumping Jacks"
       exerciseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
       exerciseLabel.numberOfLines = 0  //0 Automatically adjusts the lines.
        
        NSLayoutConstraint.activate([
           exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 70),
           exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
           exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    }
    


