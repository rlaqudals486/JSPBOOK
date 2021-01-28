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
	/* 최신 파일 업로드 방식 */
	String fileUploadPath = "C:\\java102\\upload";
	
	File path = new File(fileUploadPath);
	DiskFileItemFactory factory = new DiskFileItemFactory();
	factory.setSizeThreshold(4096);
	factory.setRepository(path);
	
	ServletFileUpload upload = new ServletFileUpload(factory);
	List<FileItem> items = upload.parseRequest(request);
	Iterator<FileItem> iter = items.iterator();
	
	while (iter.hasNext()) {
		FileItem fileItem = (FileItem)iter.next();
		
		if (fileItem.isFormField()) {
			String name = fileItem.getFieldName();
			String value = fileItem.getString("utf-8");
			out.println(name + " = " + value + "<br>");
		}
		else {
			String fileFieldName = fileItem.getFieldName();
			String fileName = fileItem.getName();
			String contentType = fileItem.getContentType();
			
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			long fileSize = fileItem.getSize();
			File file = new File(path + "/" + fileName);
			fileItem.write(file);
			
			out.println("---------------------<br>");
			out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
			out.println("저장 파일 이름 : " + fileName + "<br>");
			out.println("파일 콘텐츠 유형 : " + contentType + "<br>");
			out.println("파일 크기 : " + fileSize);
		}
	}
	
//	DiskFileUpload upload = new DiskFileUpload();
	
	/* 파일 최대 크기 설정 */
//	upload.setSizeMax(1000000);
	/* 버퍼 메모리 설정 */
//	upload.setSizeThreshold(4096);
	/* 파일 저장 위치 설정 */
//	upload.setRepositoryPath(path);
	
//	List items = upload.parseRequest(request);
//	Iterator params = items.iterator();
	
	/* 다음 요소가 존재 시 while문 실행 */
//	while (params.hasNext()) {
//		/* 다음 요소를 하나 꺼내와서 FileItem 클래스 타입의 변수에 대입 */
//		FileItem fileItem = (FileItem)params.next();
//		
//		/* 가져온 요소가 파일인지 일반 데이터인지 확인 */
//		if (fileItem.isFormField()) {
//			/* request 내장 객체의 파라미터 이름을 가져오기 */
//			String name = fileItem.getFieldName();
//			/* 해당 파라미터의 데이터 가져오기 */
//			String value = fileItem.getString("utf-8");
//			out.println(name + " = " + value + "<br>");
//		}
//		else {
//			/* 파라미터의 이름을 가져옴 */
//			String fileFieldName = fileItem.getFieldName();
//			/* 파일의 경로를 포함한 이름을 가져옴 */
//			String fileName = fileItem.getName();
//			/* 파일의 타입을 확인 */
//			String contentType = fileItem.getContentType();
//			
//			/* 위에서 받아온 경로 및 파일 이름 중 파일 이름만 가져옴 */
//			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
//			long fileSize = fileItem.getSize();
//			/* 서버에 저장될 파일 전체 경로 설정 */
//			File file = new File(path + "/" + fileName);
//			/* 파일을 지정된 위치에 저장 */
//			fileItem.write(file);
//			
//			out.println("---------------------<br>");
//			out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
//			out.println("저장 파일 이름 : " + fileName + "<br>");
//			out.println("파일 콘텐츠 유형 : " + contentType + "<br>");
//			out.println("파일 크기 : " + fileSize);
//		}
//	}
	%>
</body>
</html>