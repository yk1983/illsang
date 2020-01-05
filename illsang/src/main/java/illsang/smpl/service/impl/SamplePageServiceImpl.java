package illsang.smpl.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.smpl.dao.SamplePageDAO;
import illsang.smpl.service.SamplePageService;

@Service
public class SamplePageServiceImpl implements SamplePageService {

	private static final Logger log = LoggerFactory.getLogger(SamplePageServiceImpl.class);
	
	@Autowired
	SamplePageDAO dao;

	@Override
	public List<Map<String, Object>> getSampleList(Map<String, Object> map) {
		return dao.getSampleList(map);
	}

	@Override
	public Map<String, Object> getSampleOne(Map<String, Object> map) {
		return dao.getSampleOne(map);
	}

	@Override
	public void insertSampleData(Map<String, Object> map) {
		dao.insertSampleData(map);
	}

	@Override
	public void updateSampleData(Map<String, Object> map) {
		dao.updateSampleData(map);
	}

	@Override
	public void deleteSampleData(Map<String, Object> map) {
		dao.deleteSampleData(map);
	}

	@Override
	public int findUserNo(Map<String, Object> map) {
		return dao.findUserNo(map);
	}
	
	
}
