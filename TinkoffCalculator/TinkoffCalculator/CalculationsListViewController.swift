//
//  CalculationsListViewController.swift
//  TinkoffCalculator
//
//  Created by ilya Sergeev on 17.02.2024.
//

import UIKit

class CalculationsListViewController: UIViewController {
    
    var result: String?
    @IBOutlet weak var calculationLabel: UILabel!
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        initiolize()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initiolize()
    }
    private func initiolize() {
        modalPresentationStyle = .fullScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if calculationLabel.isEnabled {
//            calculationLabel.text = result
//        } else {
//            calculationLabel.text = "NoData"
//        }
        if calculationLabel == nil {
            calculationLabel.text = "NoData"
        } else {
            calculationLabel.text = result
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @IBAction func dismissVC(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
}
