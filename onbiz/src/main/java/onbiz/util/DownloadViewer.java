package onbiz.util;


import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class DownloadViewer extends AbstractView{

	//현재 다운로드할 파일의 위치 (공통설정파일에서 호출)
	@Value("${upload0}")
	private String upload;

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, 
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String fname = (String)model.get("downloadFile");

		File file = new File(upload+fname);
		System.out.println("# Viewer연결 #");
		System.out.println("전체 파일명 : " + file.getPath());
		System.out.println("파일명 : " + file.getName());
		System.out.println("파일 길이 : " + (int)file.length());

		response.setContentType("application/download; charset=UTF-8");
		response.setContentLength((int)file.length());
		fname = URLEncoder.encode(fname,"utf-8").replaceAll("\\+", " ");
		response.setHeader("Content-Disposition", "attachment;filename=\""+fname+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");

		FileInputStream fis = new FileInputStream(file);
		OutputStream out = response.getOutputStream();
		FileCopyUtils.copy(fis, out);
		out.flush();
	}
}