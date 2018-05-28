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
		
		
		// ���upload�ļ��еľ���·��

				String realPath = ServletActionContext.getServletContext().getRealPath("//upload")+ "//" +fileName;

				FileInputStream  fileInputStream=null;

				try {
					// ����������
					fileInputStream = new FileInputStream(realPath);

				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		
				return  fileInputStream;
	}
	/**
	 * <pre>uploadImg(�ļ��ϴ�������)   
	 * �����ˣ�Ԫ�� 
	 * ����ʱ�䣺2017-8-31 ����3:48:23    
	 * �޸��ˣ�Ԫ��    
	 * �޸�ʱ�䣺2017-8-31 ����3:48:23    
	 * �޸ı�ע�� 
	 * @param filePath  �ļ��Ļ���·��
	 * @param oldFileName   �ϴ��ļ�������
	 * @return</pre>   �µ��ļ���
	 */
	public  static   String  uploadImg(String   filePath,String   oldFileName){
		
		//�������������
				BufferedInputStream   in=null;
				BufferedOutputStream   out=null;
				String imgName="";
				//����������
				try {
					 in=new BufferedInputStream(new  FileInputStream(filePath));
				
					//���Ҫ������ļ��еľ���·��
					String   savePath=ServletActionContext.getServletContext().getRealPath("//upload");
					
					//����µ��ļ���   �Ӿɵ��ļ����н�ȡ��׺��
					int begin = oldFileName.lastIndexOf(".");
					
					//��ȡ���ĺ�׺��
				    String   suffix=oldFileName.substring(begin);

				    //ʹ��uuid+��׺�� ����µ��ļ���
				    imgName =UUID.randomUUID()+suffix;
					
				    //���������
					out=  new BufferedOutputStream(new FileOutputStream(savePath+"//"+imgName));
				
					//��д�ļ�
					byte  []   bytes=  new  byte[1024];
					
					//��ȡ���ļ����ĸ�λ��
					int length = in.read(bytes);
					
					while(length>0){
						//д�µ��ļ�
						out.write(bytes, 0, length);
						//������
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
