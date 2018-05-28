package com.jk.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;

public class ImgUploadUtil {
	
	public  static   FileInputStream   downFile(String   fileName){
		
		
		// 获得upload文件夹的绝对路径

				String realPath = ServletActionContext.getServletContext().getRealPath("//upload")+ "//" +fileName;

				FileInputStream  fileInputStream=null;

				try {
					// 构建输入流
					fileInputStream = new FileInputStream(realPath);

				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		
				return  fileInputStream;
	}
	/**
	 * <pre>uploadImg(文件上传工具类)   
	 * 创建人：元华 
	 * 创建时间：2017-8-31 下午3:48:23    
	 * 修改人：元华    
	 * 修改时间：2017-8-31 下午3:48:23    
	 * 修改备注： 
	 * @param filePath  文件的缓存路径
	 * @param oldFileName   上传文件的名字
	 * @return</pre>   新的文件名
	 */
	public  static   String  uploadImg(String   filePath,String   oldFileName){
		
		//构建输入输出流
				BufferedInputStream   in=null;
				BufferedOutputStream   out=null;
				String imgName="";
				//构建输入流
				try {
					 in=new BufferedInputStream(new  FileInputStream(filePath));
				
					//获得要保存的文件夹的绝对路径
					String   savePath=ServletActionContext.getServletContext().getRealPath("//upload");
					
					//获得新的文件名   从旧的文件名中截取后缀名
					int begin = oldFileName.lastIndexOf(".");
					
					//获取到的后缀名
				    String   suffix=oldFileName.substring(begin);

				    //使用uuid+后缀名 组成新的文件名
				    imgName =UUID.randomUUID()+suffix;
					
				    //构建输出流
					out=  new BufferedOutputStream(new FileOutputStream(savePath+"//"+imgName));
				
					//读写文件
					byte  []   bytes=  new  byte[1024];
					
					//读取到文件的哪个位置
					int length = in.read(bytes);
					
					while(length>0){
						//写新的文件
						out.write(bytes, 0, length);
						//继续读
						length=in.read(bytes);
						
					}
					
					
					
					
					
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					
					try {
						 
						in.close();
						out.flush();
						out.close();
						
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					
					
				}
		
		return   imgName;
	}

}
