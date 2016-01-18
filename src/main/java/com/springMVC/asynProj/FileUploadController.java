/**
 * 
 */
package com.springMVC.asynProj;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * @author vvardhanz
 *
 */

/**
 * Handles requests for the application file upload requests
 */
@Controller
public class FileUploadController {
	  private static final  Logger logger = LoggerFactory.getLogger(FileUploadController.class); 
	
	  /**
	    * Upload single file using Spring Controller
	    */
	  @RequestMapping(value="/uploadFile", method=RequestMethod.GET)
	    public @ResponseBody String provideUploadInfo() {
	        return "You can upload a file by posting to this same URL.";
	    }
	  
	   @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	   public @ResponseBody
	   String uploadFileHandler(@RequestParam("name") String name,
			                    @RequestParam("file") MultipartFile file) {
		   if (!file.isEmpty()) {
			   try {
				
				   byte[] bytes= file.getBytes();
				//Creating the directory  to store files. 
				String rootPath = System.getProperty("catalina.home");   
				File dir = new File(rootPath + File.separator + "tmpFiles"); 
				if(!dir.exists())
				   dir.mkdirs();
				
				//Creating the file on server
				File serverFile = new File(dir.getAbsolutePath() + File.separator + name);
				BufferedOutputStream  stream  = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				
				
				logger.info("Server file Location=" + serverFile.getAbsolutePath());
				
				return "You successfully uploaded file="+ name;
				
			 } catch(Exception e){
				   
				  return  "You failed to upload " + name + e.getMessage();
			   }  
		   } else {
			   
			   return "You failed to upload" + name  +"because the file was empty."; 
		   }
	   }
		   
}
