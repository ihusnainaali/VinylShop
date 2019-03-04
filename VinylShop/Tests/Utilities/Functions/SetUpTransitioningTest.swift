import SnapshotTesting
import UIKit

func setUpTransitioningTest(from: UIViewController,
                            to: UIViewController,
                            using context: UIViewControllerContextTransitioningSpy,
                            in window: UIWindow) {
    let bounds = CGRect(origin: .zero, size: ViewImageConfig.iPhoneX.size ?? .zero)

    context.containerView.frame = bounds
    context.stubbedViewControllerFrom = from
    context.stubbedViewControllerTo = to

    window.frame = bounds
    window.isHidden = false
    window.rootViewController = from
    window.addSubview(context.containerView)
    window.setNeedsLayout()
    window.layoutIfNeeded()
}