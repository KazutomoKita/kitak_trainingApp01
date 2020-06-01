
import UIKit

class MemberAddViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var addTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTableView.register (UINib(nibName: "MemberAddTableViewCell", bundle: nil),forCellReuseIdentifier:"addCell")
        
        addTableView.delegate = self
        addTableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "addCell", for: indexPath) as! MemberAddTableViewCell

        return cell
    }




}
