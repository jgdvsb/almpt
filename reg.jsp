<%@ page import="java.util.*, java.io.*,org.apache.poi.poifs.filesystem.*, org.apache.poi.hssf.usermodel.*, org.apache.poi.hssf.util.*, org.apache.poi.hssf.util.*" %> 
 
 <%
String city = request.getParameter("city");
System.out.println("city" + city);
HSSFRow row1;
		HSSFCell cell;
			HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream("./webapps/ROOT/reg.xls"));
			HSSFSheet sheet = workbook.getSheet("reg");
			System.out.println("JGD lastRow>>>" + sheet.getPhysicalNumberOfRows());
			int lastRow = 0;
			for ( lastRow = 1; lastRow < sheet.getPhysicalNumberOfRows(); lastRow++) {
				HSSFRow row = sheet.getRow(lastRow);
				cell = row.getCell((short) 1);
				//String lastCell = cell.getStringCellValue();
				if (cell == null) {
					//cell = row.getCell((short) 2);
					//emailAdd = cell.getStringCellValue();
					break;
				}
			}
System.out.println("lastRow>>>" + lastRow);

			row1 = sheet.getRow(lastRow);
			HSSFCellStyle cellHeaderStyle = workbook.createCellStyle();

			HSSFCell cellCity = row1.createCell((short) 1);
			HSSFCell cellDate = row1.createCell((short) 2);
			HSSFCell cellName = row1.createCell((short) 3);
			HSSFCell cellPhone = row1.createCell((short) 4);
			HSSFCell cellEmail = row1.createCell((short) 5);


			cellCity.setCellValue(request.getParameter("city"));
			cellDate.setCellValue(request.getParameter("date"));
			cellName.setCellValue(request.getParameter("name"));
			cellPhone.setCellValue(request.getParameter("phone"));
			cellEmail.setCellValue(request.getParameter("email"));

			FileOutputStream outXls = new FileOutputStream("./webapps/ROOT/reg.xls"	);
			workbook.write(outXls);
			outXls.close();	
%>
			<jsp:forward page="event.htm" />