import UIKit

func configure(textView: UITextView) {
    textView.textContainer.lineFragmentPadding = 0
    textView.textContainerInset = .zero
    textView.text = ""
    textView.frame.size.width = 200
}

final class AdequateTextView: UITextView {
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        guard let text = text, !text.isEmpty else {
            return .zero
        }
        return super.sizeThatFits(size)
    }
}


let normalTextView = UITextView()
configure(textView: normalTextView)
normalTextView.sizeToFit()
normalTextView.frame


let adequateTextView = AdequateTextView()
configure(textView: adequateTextView)
adequateTextView.sizeToFit()
adequateTextView.frame

// for comparison
let label = UILabel()
label.text = ""
label.frame.size.width = 200
label.sizeToFit()
label.frame
