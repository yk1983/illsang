package illsang.smpl.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.comm.dao.AbstractDAO;

@Repository
public class SamplePageDAO extends AbstractDAO {

	public List<Map<String, Object>> getSampleList(Map<String, Object> map) {
		return selectList("sample.getSampleList", map);
	}

	public Map<String, Object> getSampleOne(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("sample.getSampleOne", map);
	}

	public void insertSampleData(Map<String, Object> map) {
		insert("sample.insertSample", map);
	}

	public void updateSampleData(Map<String, Object> map) {
		update("sample.updateSample", map);
	}

	public void deleteSampleData(Map<String, Object> map) {
		delete("sample.deleteSample", map);
	}

	public int findUserNo(Map<String, Object> map) {
		return (Integer) selectOne("sample.findUserNo", map);
	}

}
