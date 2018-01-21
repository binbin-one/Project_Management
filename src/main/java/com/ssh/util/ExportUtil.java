package com.ssh.util;

import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

public class ExportUtil {

    /*   因为我这里这个函数要在action类里调用，
        下面要导出的数据要在数据库里先查询出来，
        所以里面的函数要传过来一个service对象，
        也就是业务逻辑类的对象，
        以用来实现相应的业务逻辑
       */
    public String export(List list)throws Exception
    {
        //取出要显示的数据
//        List scoreList=new ArrayList();
//        scoreList=scoreService.queryExcelData(startTime,endTime);


                 /*设置表头：对Excel每列取名
                  *(必须根据你取的数据编写)
                  */
        String []tableHeader={
                "项目编号","项目名称","项目简介","创建日期","项目金额","项目类型","付款状态","项目状态","备注","客户姓名","产品名称","用户姓名"
        };
    /*
                 *下面的都可以拷贝不用编写
                 */
        short cellNumber=(short)tableHeader.length;//表的列数
        HSSFWorkbook workbook = new HSSFWorkbook(); //创建一个excel
        HSSFCell cell = null; //Excel的列
        HSSFRow row = null; //Excel的行
        CellStyle style = workbook.createCellStyle(); //设置表头的类型
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        HSSFCellStyle style1 = workbook.createCellStyle(); //设置数据类型
        style1.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        style1.setFillForegroundColor(HSSFColor.LIGHT_BLUE.index);
        style1.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
        style1.setFillBackgroundColor(HSSFColor.LIGHT_BLUE.index);
        HSSFFont font = workbook.createFont(); //设置字体
        HSSFSheet sheet = workbook.createSheet("sheet1"); //创建一个sheet
        HSSFHeader header = sheet.getHeader();//设置sheet的头
        try {              /**
         *根据是否取出数据，设置header信息
         *
         */
            if(list.size() < 1 ){
                header.setCenter("查无资料");
            }else{
                header.setCenter("检查表");
                row = sheet.createRow(0);
                row.setHeight((short)400);
                for(int k = 0;k < cellNumber;k++){
                    cell = row.createCell(k);//创建第0行第k列
                    cell.setCellValue(tableHeader[k]);//设置第0行第k列的值
                    cell.setCellStyle(style1);
                    sheet.setColumnWidth(k,4000);//设置列的宽度
                    font.setColor(HSSFColor.WHITE.index); // 设置单元格字体的颜色.
                    font.setFontHeight((short)350); //设置单元字体高度
                    font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
                    style1.setFont(font);//设置字体风格
                    cell.setCellStyle(style1);
                }
                /*
                 * // 给excel填充数据
                 *
                 */
                for(int i = 0 ;i < list.size() ;i++){
                    Object[] score = (Object[]) list.get(i);//获取score对象
                    row = sheet.createRow((short) (i + 1));//创建第i+1行
                    row.setHeight((short)400);//设置行高

                    //设置项目编号
                    if(score!=null){
                        cell = row.createCell(0);//创建第i+1行第0列
                        cell.setCellValue(i+1);//设置第i+1行第0列的值
                        cell.setCellStyle(style);//设置风格
                    }

                    //设置项目名称
                    if(score != null){
                        cell = row.createCell(1);//创建第i+1行第0列
                        cell.setCellValue(score[0]==null?"":score[0].toString());//设置第i+1行第0列的值
                        cell.setCellStyle(style);//设置风格
                    }

                    //设置项目简介
                    if(score!= null){
                        cell = row.createCell(2); //创建第i+1行第1列

                        cell.setCellValue(score[1]==null?"":score[1].toString());//设置第i+1行第1列的值

                        cell.setCellStyle(style); //设置风格
                    }

                    //设置创建日期
                    if(score != null){
                        cell = row.createCell(3);
                        cell.setCellValue(score[2]==null?"":score[2].toString().substring(0,10));
                        cell.setCellStyle(style);
                    }

                    //设置项目金额
                    if(score != null){
                        cell = row.createCell(4);
                        cell.setCellValue(score[3]==null?"":score[3].toString());
                        cell.setCellStyle(style);
                    }

                    //设置类型状态
                        cell = row.createCell(5);
                        cell.setCellValue(score[4].toString().equals(0)?"试用":"正式");
                        cell.setCellStyle(style);

                    //设置付款状态
                    if(score!= null){
                        cell = row.createCell(6);
                        cell.setCellValue(score[5].toString().equals("0")?"未结款":(score[5].toString().equals("1")?"结款中":"已结款"));
                        cell.setCellStyle(style);
                    }
                    //设置备注
                    if(score!= null){
                        cell = row.createCell(7);
                        cell.setCellValue(score[7]==null?"":score[7].toString().equals(0)?"无效":"有效");
                        cell.setCellStyle(style);
                    }
                    //设置项目状态
                    if(score!= null){
                        cell = row.createCell(8);
                        cell.setCellValue(score[6]==null?"":score[6].toString());
                        cell.setCellStyle(style);
                    }
                    //设置客户姓名
                    if(score!= null){
                        cell = row.createCell(9);
                        cell.setCellValue(score[8]==null?"":score[8].toString());
                        cell.setCellStyle(style);
                    }
                    //设置产品名称
                    if(score!= null){
                        cell = row.createCell(10);
                        cell.setCellValue(score[9]==null?"":score[9].toString());
                        cell.setCellStyle(style);
                    }
                    //设置用户姓名
                    if(score!= null){
                        cell = row.createCell(11);
                        cell.setCellValue(score[10]==null?"":score[10].toString());
                        cell.setCellStyle(style);
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        HttpServletResponse response = null;//创建一个HttpServletResponse对象
        OutputStream out = null;//创建一个输出流对象
        try {
            response = ServletActionContext.getResponse();//初始化HttpServletResponse对象
            out = response.getOutputStream();//
            response.setHeader("Content-disposition","attachment; filename="+"score.xls");//filename是下载的xls的名，建议最好用英文
            response.setContentType("application/msexcel;charset=UTF-8");//设置类型
            response.setHeader("Pragma","No-cache");//设置头
            response.setHeader("Cache-Control","no-cache");//设置头
            response.setDateHeader("Expires", 0);//设置日期头
            workbook.write(out);
            out.flush();

        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            try{

                if(out!=null){
                    out.close();
                }

            }catch(IOException e){
                e.printStackTrace();
            }

        }

        return null;
    }
}
