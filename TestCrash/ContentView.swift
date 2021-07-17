
import SwiftUI

struct ContentView: View {
    @StateObject var testViewModel = TestViewModel()
    
    var body: some View {
        GeometryReader { proxy in
            
            ScrollView {
                
                VStack(alignment: .leading, spacing:0) {
                    
                    TabView {
                        
                        ForEach(testViewModel.images, id: \.self) { image in
                            Image(image)
                        }
                        
                    }.tabViewStyle(PageTabViewStyle())
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding()
                    .frame(width: proxy.size.width, height: proxy.size.height/2.5)
                    
                }
                Button(action: {
                    testViewModel.removeFirst()
                }) {
                    Text("Remove first item from list")
                }
                
            }
            
            
        }.frame(maxWidth: .infinity).background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
