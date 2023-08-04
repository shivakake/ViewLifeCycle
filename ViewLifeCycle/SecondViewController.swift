//
//  SecondViewController.swift
//  ViewLifeCycle
//
//  Created by Kumaran on 20/07/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        dump("SecondViewController viewDidLoad")
        
        
    }
    
    func addView() {
        let myView = UIView()
        
        myView.frame = CGRect(x: 0, y: 100, width: ((UIScreen.main.bounds.size.width * 80) / 100) , height: 200)
        myView.backgroundColor = .red
        
        view.addSubview(myView)
    }
    
    override func loadView() {
        super.loadView()
        dump("SecondViewController loadView")
    }
    
    override func loadViewIfNeeded() {
        super.loadViewIfNeeded()
        dump("SecondViewController loadViewIfNeeded")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dump("SecondViewController viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        dump("SecondViewController viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        dump("SecondViewController viewDidDisappear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        dump("SecondViewController viewWillDisappear")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        dump("SecondViewController viewDidLayoutSubviews")
        addView()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        dump("SecondViewController viewWillLayoutSubviews")
        addView()
    }
    
    
    override func viewLayoutMarginsDidChange() {
        super.viewLayoutMarginsDidChange()
        dump("SecondViewController viewLayoutMarginsDidChange")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        dump("SecondViewController viewWillTransition")
    }
    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        dump("SecondViewController viewSafeAreaInsetsDidChange")
    }
}
