
import UIKit

var memoArray: [String] = []

class MemoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var memoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        memoTableView.dataSource = self
        memoTableView.delegate = self
        
        for i in 1...100 {
            memoArray.append(String(i))
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // TODO: 테이블뷰 갱신
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
        cell.textLabel?.text = memoArray[indexPath.row]
//        if indexPath.row == 0 {
//            cell.textLabel?.text = "첫번째 셀"
//        }
//        else if indexPath.row == 1 {
//            cell.textLabel?.text = "두번째 셀"
//        }
//        else if indexPath.row == 2 {
//            cell.textLabel?.text = "세번째 셀"
//        }
        return cell
    }
    
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            if let detailVC = segue.destination as? DetailViewController {
                detailVC.memoString = "밥 하기"
//                detailVC.memoLabel.text = "밥 하기"
//                segue.destination.
            }
        }
    }
}

