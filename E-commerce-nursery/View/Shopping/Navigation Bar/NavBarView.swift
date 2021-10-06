//
//  NavBarView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/17/21.
//

import SwiftUI
import LTMorphingLabel

public struct MorphingText: UIViewRepresentable {
    public typealias UIViewType = LTMorphingLabel
    
    var text: String
    var morphingEffect: LTMorphingEffect
    var moprhingEnabled: Bool = true
    var font: UIFont
    var textColor: UIColor
    var textAlignment: NSTextAlignment
    
    public init(_ text: String,
                effect: LTMorphingEffect = .scale,
                font: UIFont = .systemFont(ofSize: 16),
                textColor: UIColor = .black,
                textAlignment: NSTextAlignment = .center
    ) {
        self.text = text
        self.morphingEffect = effect
        self.font = font
        self.textColor = textColor
        self.textAlignment = textAlignment
    }

    public func makeUIView(context: Context) -> UIViewType {
        let label = LTMorphingLabel(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 50)))
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }

    public func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.text = text
        uiView.font = font
        uiView.morphingEnabled = moprhingEnabled
        uiView.morphingEffect = morphingEffect
        uiView.textColor = textColor
        uiView.textAlignment = textAlignment
    }
}

struct NavBarView: View {
    
    @EnvironmentObject var viewModel : RegisterViewModel
    
    var body: some View {
        HStack {
            NavigationLink(
                destination: CartView(),
                label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.trailing, 60)
            })
            
            MorphingText(
                "PlantHouse",
                effect: .evaporate,
                font: UIFont.systemFont(ofSize: 20),
                textColor: UIColor(red: 10 / 255, green: 132 / 255, blue: 10 / 255, alpha: 0.0),
                textAlignment: .center
            )
            .frame(maxWidth: 200, maxHeight: 100)
            .padding(.trailing, 20)
            
            Button(action: {
                viewModel.signOut()
            }, label: {
                Text("Sign Out")
                    .frame(width: 80, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .accentColor(.blue)
                    
            }).padding(.trailing, 1)
        }
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
            .previewLayout(.sizeThatFits)
    }
}
