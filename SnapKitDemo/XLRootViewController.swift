//
//  XLRootViewController.swift
//  SnapKitDemo
//
//  Created by knmk0002 on 16/6/27.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

import UIKit

class XLRootViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
        /// tableview
    let LeftCellIDF = "LeftChatCellIDF"
    let RightCellIDF = "RightChatCellIDF"
    let DataArr = ["小美在作文簿里写上长大后的愿望：一、我希望能有一个可爱的孩子；二、我还希望能有一个爱我的丈夫。结果，发现老师写了一句评语：请注意先后顺序。","有一次闺蜜喝多不小心冲进了男厕所，当着一张张惊慌失措的脸，这货竟然故作镇定的大声喊“怕什么啊！我又没带尺~~~”","知道吗？我真的好想带你出去体验一下KTV的魅力啊！知道什么是KTV吗？就是K你一顿，T你一脚，最后我再做个V的手势耶！","人的染色体有23对。有一天，教生物的老头慢悠悠地问：“染色体多少对啊，同学们。”角落里某二货大声答道：“64对啊！”老头淡定而严肃地点点头：“嗯，现在告诉我，你来地球的目的是什么？”","十一前几天在家上网，一好久不联系的大学同学，突然间qq、微信都在线了，还给我发了个祝福短信。第一反应就是这货要结婚了，果断编了个理由回他，“哥们，我‘十一’订婚，你来不来参加我的订婚宴啊？”果不其然，他回：“不好意思，我‘十一’结婚，看样子你也来不了了。”～省了500大洋","车上有对母子，小孩还在穿开裆裤，小孩一直在说话，大家都在看他，觉得他很可爱。小孩突然问他妈妈：“为什么对面的姐姐一直盯着我的小JJ看？”然后，就听到周围都在笑，对面的女孩（20岁左右）也脸红了，GC来了，他妈妈来了一句：“姐姐才没有看你的，人家看过的多了去了。”你让人家小姑娘情何以堪啊，周围的人都憋到内伤……","哥们在路上捡了条大狗，看可怜就带回家了……狗要占地盘，老在家撒尿，屡教不改。朋友终于忍耐不住，脱下裤子，在狗刚撒尿的地方也撒了一泡尿，并告诫此狗：这是老子的地盘。话说这狗从此再也没有在家撒过尿。","几个人在高尔夫更衣室，一手机响很久，一男人按了免提键。女：“亲爱的你在俱乐部吗？”男：“在。”女：“我看到一辆宝马，才不到两百万。”男人：“买。”女：“还有那个楼盘又放盘了， 6万一平。”男：“买。”女：“好爱你。”男：“也爱你。”旁边的男人们敬佩得目瞪口呆。男人挂了电话，问：“这是谁的手机？”","呵呵","呵呵，大傻X"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CreateUI()
        // Do any additional setup after loading the view.
    }
    func CreateUI() -> Void {
        self.title = "自动布局"
        let ChatTable:UITableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), style: UITableViewStyle.plain)
        self.view.addSubview(ChatTable)
        ChatTable.separatorStyle = UITableViewCellSeparatorStyle.none
        ChatTable.delegate = self
        ChatTable.dataSource = self
        ChatTable.register(XLLeftCell().classForCoder, forCellReuseIdentifier:LeftCellIDF)
        ChatTable.register(XLRightCell().classForCoder, forCellReuseIdentifier: RightCellIDF)
        ChatTable.estimatedRowHeight = 80
        ChatTable.rowHeight = UITableViewAutomaticDimension
    }
// delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: LeftCellIDF) as! XLLeftCell
            cell.ConfigCellWithContain(DataArr[indexPath.row])
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: RightCellIDF) as! XLRightCell
            cell.ConfigCellWithContain(DataArr[indexPath.row])
            return cell
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
