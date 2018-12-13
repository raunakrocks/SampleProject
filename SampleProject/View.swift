import UIKit

class View {
    let viewModel: ViewModel
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        self.viewModel.delegate = self
    }
}

extension View: Delegate {
    func update() {
        print("Updated")
    }
}
