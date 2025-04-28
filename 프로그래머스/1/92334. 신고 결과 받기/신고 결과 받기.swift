import Foundation

// 각 유저 한번에 한명 신고 가능
// - 신고 횟수 제한 없음, 서로 다른 유저를 계속 신고 가능
// - 한 유저를 여러 번 신고할 수도 있지만 동일한 유저에 대한 신고 횟수는 1회로 처리 ( 최대 신고 횟수 = 유저 수 )
// - k 번 이상 신고된 유저는 게시판 이용 정지
// 공백으로 구분 muzi(신고한 유저) frodo(신고된 유저) X

func solution(_ id_list: [String], _ report: [String], _ k: Int) -> [Int] {
    var reportedCount = [String: Int]()
    var userReportList = [String: Set<String>]()
    
    // report를 Set으로 변환 (중복 제거)
    let uniqueReports = Set(report)
    
    for r in uniqueReports {
        let parts = r.split(separator: " ").map { String($0) }
        let reporter = parts[0]
        let reported = parts[1]
        
        userReportList[reporter, default: []].insert(reported)
        reportedCount[reported, default: 0] += 1
    }
    
    // suspendedUsers를 Set으로 변환
    let suspendedUsers = Set(reportedCount.filter { $0.value >= k }.map { $0.key })
    
    var result = [Int]()
    
    for id in id_list {
        let reports = userReportList[id] ?? []
        let mailCount = reports.filter { suspendedUsers.contains($0) }.count
        result.append(mailCount)
    }
    
    return result
}

