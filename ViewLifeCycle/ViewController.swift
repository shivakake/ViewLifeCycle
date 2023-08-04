//
//  ViewController.swift
//  ViewLifeCycle
//
//  Created by Kumaran on 20/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dump("viewDidLoad")
    }
    
    override func loadView() {
        super.loadView()
        dump("loadView")
    }
    
    override func loadViewIfNeeded() {
        super.loadViewIfNeeded()
        dump("loadViewIfNeeded")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dump("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        dump("viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        dump("viewDidDisappear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        dump("viewWillDisappear")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        dump("viewDidLayoutSubviews")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        dump("viewWillLayoutSubviews")
    }
    
    
    override func viewLayoutMarginsDidChange() {
        super.viewLayoutMarginsDidChange()
        dump("viewLayoutMarginsDidChange")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        dump("viewWillTransition")
    }
    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        dump("viewSafeAreaInsetsDidChange")
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        if let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}

