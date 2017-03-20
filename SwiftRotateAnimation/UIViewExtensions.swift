import UIKit

extension UIView {
	func rotate360Degrees(_ duration: CFTimeInterval = 1.0, completionDelegate: CAAnimationDelegate? = nil) {
		let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
		rotateAnimation.fromValue = 0.0
		rotateAnimation.toValue = CGFloat(M_PI * 2.0)
		rotateAnimation.duration = duration
		
		if let delegate: CAAnimationDelegate = completionDelegate {
			rotateAnimation.delegate = delegate
		}
		self.layer.add(rotateAnimation, forKey: nil)
	}
	func fadeIn(_ duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
		UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseIn, animations: {
			self.alpha = 1.0
			}, completion: completion)	}
	
	func fadeOut(_ duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
		UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseIn, animations: {
			self.alpha = 0.0
			}, completion: completion)
	}
}
