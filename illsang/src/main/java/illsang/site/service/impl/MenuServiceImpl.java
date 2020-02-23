package illsang.site.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.site.dao.MenuDAO;
import illsang.site.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService {
	
	private Logger log = LoggerFactory.getLogger(MenuServiceImpl.class);
	
	@Autowired
	private MenuDAO dao;

	@Override
	public void saveMenuImage() throws Exception {
		
		String filePath = "C:\\file_test.jpg";
		File file = new File(filePath);
		int fileLength = (int) file.length();
		InputStream fin = new FileInputStream(file);
	}
	
}
