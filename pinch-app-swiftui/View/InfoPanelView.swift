//
//  InfoPanelView.swift
//  pinch-app-swiftui
//
//  Created by Charles Roberts on 6/24/22.
//

import SwiftUI

struct InfoPanelView: View {
    var scale: CGFloat
    var offset: CGSize
    
    @State private var isInfoPanelVisible: Bool = false
    
    var body: some View {
        HStack {
            
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onTapGesture {
                    withAnimation(.easeOut) {
                        isInfoPanelVisible.toggle()
                    }
                }
            
            Spacer()
            
            if isInfoPanelVisible {
                HStack (spacing: 2) {
                    Image(systemName: "arrow.up.left.and.arrow.down.right")
                    Text("\(scale)")
                    
                    Spacer()
                    
                    Image(systemName: "arrow.left.and.right")
                    Text("\(offset.width)")
                    
                    Spacer()
                    
                    Image(systemName: "arrow.up.and.down")
                    Text("\(offset.height)")
                    
                    Spacer()
                }
                .font(.footnote)
                .padding(8)
                .background(.ultraThinMaterial)
                .cornerRadius(8)
                .frame(maxWidth: 420)
                
                Spacer()
            }
        }
    }
}

struct InfoPanelView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPanelView(scale: 1, offset: .zero)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
