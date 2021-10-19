package mybatis.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import mybatis.vo.EmpVO;

public class EmpDAO {
	
	private SqlSessionTemplate ss; // config.xml파일에서 현재 DAO를 정의할 때
		// <property>를 정의하면서 반드시 setSs(..)를 통해 저장되도록 한다.

	public void setSs(SqlSessionTemplate ss) {
		this.ss = ss;
	}

	public EmpVO[] search(String searchType ,String searchValue) {
		EmpVO[] ar = null;
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("searchType", searchType);
		map.put("searchValue", searchValue);
		
		List<EmpVO> list = ss.selectList("emp.search",map);
		
		if(list != null && list.size() > 0) {
			ar = new EmpVO[list.size()];
			list.toArray(ar);
		}
		return ar;
	}
}
