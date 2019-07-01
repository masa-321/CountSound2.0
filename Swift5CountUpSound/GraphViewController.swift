//
//  GraphViewController.swift
//  Swift5CountUpSound
//
//  Created by 藤田優作 on 2019/06/13.
//  Copyright © 2019 藤田優作. All rights reserved.
//

import UIKit
import Charts


class GraphViewController: UIViewController {
    
    var chart: CombinedChartView!
    var lineDataSet: LineChartDataSet!
    var bubbleDataSet: BubbleChartDataSet!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    //combineDataを結合グラフに設定する
        let combinedData = CombinedChartData()
        //結合グラフに線グラフのデータ読み出し
        combinedData.lineData = generateLineData()
        //グラフのサイズ設定、座標設定
        chart = CombinedChartView(frame: CGRect(x: 0, y: 20, width: self.view.frame.width , height:  self.view.frame.height - 20))
        
        //chartのデータにcombinedDataを挿入する
        chart.data = combinedData
        
        //chartを出力
        self.view.addSubview(chart)

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func generateLineData() -> LineChartData
    {
        
        //リストを作り、グラフのデータを追加する方法(GitHubにあったCombinedChartViewとかMPAndroidChartのWikiを参考にしている)
        let values: [Double] = [111,254,321,512,214,444,967,101,765,228,726,253,20,123,512,448, 557, 223, 465, 291,979, 134, 864, 481, 405, 711, 1106, 411, 455, 800]
        let
        date: [Double] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
        
        //DataSetを行うために必要なEntryの変数をつくる データによって入れるデータが違うため複数のentriesが必要になる？
        var entries: [ChartDataEntry] = Array()
        for (i, value) in values.enumerated(){
            entries.append(ChartDataEntry(x: date[i], y: value, icon: UIImage(named: "icon", in: Bundle(for: self.classForCoder), compatibleWith: nil)))
        }
        //データを送るためのDataSet変数をリストで作る
        var linedata: [LineChartDataSet] = Array()
        
        //リストにデータを入れるためにデータを成形している
        //データの数値と名前を決める
        lineDataSet = LineChartDataSet(entries: entries, label: "Line chart unit test data")
        lineDataSet.drawIconsEnabled = false
        //グラフの線の色とマルの色を変えている
        lineDataSet.colors = [NSUIColor.red]
        lineDataSet.circleColors = [NSUIColor.red]
        //上で作ったデータをりリストにappendで入れる
        linedata.append(lineDataSet)
        
        //データを返す
        return LineChartData(dataSets: linedata)
        }
    
   
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


