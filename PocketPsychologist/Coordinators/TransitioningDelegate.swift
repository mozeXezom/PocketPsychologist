//
//  TransitioningDelegate.swift
//  PocketPsychologist
//
//  Created by mozeX on 29.04.2023.
//

import UIKit

final class TransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate {

    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return nil
    }

    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return NavigationAnimator()
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return NavigationAnimator()
    }

}

