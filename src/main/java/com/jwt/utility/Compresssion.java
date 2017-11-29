package com.jwt.utility;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;

import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.stream.ImageOutputStream;

import org.springframework.web.multipart.commons.CommonsMultipartFile;


public class Compresssion {

	
	
	public static File compress(String path,String name) throws IOException{
		
		CommonsMultipartFile multipartFile = null;
	
     BufferedImage image = ImageIO.read(multipartFile.getInputStream());

     File compressedImageFile = new File(name);
     OutputStream os =new FileOutputStream(compressedImageFile);

     Iterator<ImageWriter>writers =  ImageIO.getImageWritersByFormatName("jpg");
     ImageWriter writer = (ImageWriter) writers.next();

     ImageOutputStream ios = ImageIO.createImageOutputStream(os);
     writer.setOutput(ios);

     ImageWriteParam param = writer.getDefaultWriteParam();
     
     param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
     param.setCompressionQuality(0.5f);
     writer.write(null, new IIOImage(image, null, null), param);
     
     os.close();
     ios.close();
     writer.dispose();
     
     
	return compressedImageFile;
	}
	
	
	
	
	
}
