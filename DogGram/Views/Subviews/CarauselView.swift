//
//  CarauselView.swift
//  DogGram
//
//  Created by suraj kumar on 10/02/23.
//
import SwiftUI
struct CarauselView: View {
    @State var selection: Int = 1
    let maxCount: Int = 8
    @State var timerAdded: Bool = false
    var body: some View {
        TabView(selection: $selection) {
            ForEach(1..<maxCount) { count in
                Image("dog\(count)")
                    .resizable()
                    .scaledToFill()
                    .tag(count)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
        .animation(.default)
        
        .onAppear() {
            if !timerAdded {
                addTimer()
                
            }
        }
        
    }
    //MARK: Function
    func addTimer() {
        timerAdded = true
        let timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
            
            if selection == maxCount - 1 {
                selection = 1
            }else {
                selection +=  1
                
            }
        }
        timer.fire()
    }
}
struct CarauselView_Previews: PreviewProvider {
    static var previews: some View {
        CarauselView()
            .previewLayout(.sizeThatFits)
    }
}
