import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var memberTableView: UITableView!
    
    @IBOutlet weak var rightButton: UIButton!
    
    
    
    var members = [Member]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        memberTableView.register (UINib(nibName: "MemberTableViewCell", bundle: nil),forCellReuseIdentifier:"Cell")
        
        memberTableView.delegate = self
        memberTableView.dataSource = self
        
        loadSampleMember()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MemberTableViewCell
        
        let member = members[indexPath.row]
        cell.memberImageView.image = member.photo
        cell.memberName.text = member.name
        cell.teamName.text = member.team
        
        return cell
    }
    
    //セルの編集許可
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }

    //スワイプしたセルを削除　※arrayNameは変数名に変更してください
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            members.remove(at: indexPath.row)
            memberTableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    
    @IBAction func tappedRightButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toAdd", sender: self)
    }
    
    private func loadSampleMember() {
            let photo1 = UIImage(named: "anri")
            let photo2 = UIImage(named: "bannot")
        
        guard let member1 = Member(photo: photo1, name: "中野杏梨", team: "メディア開発統括部Web1グループ", year: "19卒", whatever: "色気研究家")
            else {
                fatalError("Unable to instantiate cosme1")
            }
        guard let member2 = Member(photo: photo2, name: "坂野琢也", team: "BSコマース開発第２グループ", year: "19卒", whatever: "女の子がいれば元気いっぱい！")
            else {
                fatalError("Unable to instantiate cosme2")
            }
            members += [member1, member2]
        
    }




}

