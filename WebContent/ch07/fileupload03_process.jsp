<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>apache commons 라이브러리로 파일 업로드</title>
</head>
<body>
	<%
	String fileUploadPath = "C:\\java102\\upload";
	
	// 최신 방식
	File path = new File(fileUploadPath);
	DiskFileItemFactory factory = new DiskFileItemFactory();
	factory.setSizeThreshold(4096);
	factory.setRepository(path);
	
	ServletFileUpload upload = new ServletFileUpload(factory);
	List<FileItem> items = upload.parseRequest(request);
	Iterator<FileItem> iter = items.iterator();
	
	while (iter.hasNext()) {
		FileItem item = iter.next ();

		if (!item.isFormField()) {
			String fileName = item.getName();
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			File file = new File(fileUploadPath + "/" + fileName);
			item.write(file);
		}
	}
	
	
	/* DiskFileUpload upload = new DiskFileUpload(); */
	
	/* request 내장 객체에서 multipart/form-data 방식의 데이터를 모두 가져옴 */
	/* List items = upload.parseRequest(request);
	
	Iterator params = items.iterator(); */
	
//	while (params.hasNext()) {
//		FileItem fileItem = (FileItem)params.next();
//		
//		/* 가져온 request의 데이터가 파일인지 일반 데이터인지 확인 */
//		if (!fileItem.isFormField()) {
//			/* 업로드된 파일이름 가져오기 */
//			String fileName = fileItem.getName();
//			/* substring : 지정된 index에서 부터 끝까지의 문자열을 잘라내어 반환 */
//			/* lastIndexOf : 지정된 문자열을 해당 문자열의 끝에서부터 검색하여 문자열이 있는 index 위치를 알려줌 */
//			/* 경로를 제외한 파일 이름만 가져옴 */
//			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
//			File file = new File(fileUploadPath + "/" + fileName);
//			/* 지정된 경로 파일을 저장 */
//			fileItem.write(file);
//		}
//	}
	%>
</body>
</html>