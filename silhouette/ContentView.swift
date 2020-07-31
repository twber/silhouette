import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        // black background
        let rect = CGRect(x: 50, y: 220, width: 300, height: 200)
        let myImage = UIView(frame: rect)
        myImage.backgroundColor = UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 0.5)
        // remove background
        let mosImage = UIImage(named: "mos.png")
        let mosImageView = UIImageView(image: mosImage)
        // remove body
        let silhouetteImage = UIImage(named: "mosque.png")
        let silhouetteImageView = UIImageView(image: silhouetteImage)
        // remove body + black background + mask
        //myImage.mask = silhouetteImageView
        // remove body + black background + addsubview
        //myImage.addSubview(silhouetteImageView)
        //remove background + pattern + mask
        //myImage.mask = mosImageView
        // remove background + pattern + addsubvie
        myImage.addSubview(mosImageView)
        
        let gridImage = UIImage(named: "pattern")
        var gridImageView = UIImageView(frame: rect)
        gridImageView = UIImageView(image: gridImage)
        
        // remove body + + pattern + mask
        //gridImageView.mask = silhouetteImageView
        
        // remove body + pattern + addSubview
        gridImageView.frame = silhouetteImageView.frame
        gridImageView.addSubview(silhouetteImageView)
        
        // remove background + mask
        //gridImageView.mask = mosImageView
        
        // remove background + addSubview
        //gridImageView.frame = mosImageView.frame
        //gridImageView.addSubview(mosImageView)
        
        view.addSubview(myImage)
        view.addSubview(gridImageView)
        //mask 將實心部份填滿，addsubView 去背部份透漏下層顯色
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
