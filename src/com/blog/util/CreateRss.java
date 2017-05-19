package com.blog.util;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import com.blog.po.Article;

public class CreateRss {
	public static void PublishRss(List<Article> list,String filePath){
		try{
			//文件输出流
			FileWriter  fw=new FileWriter(filePath);
			//缓冲流
			BufferedWriter bw=new BufferedWriter(fw);
			//头部声明
			bw.write("<?xml version=\"1.0\" encoding=\"gbk\"?>\r\n");
			bw.write("<rss version=\"2.0\" xmlns:atom=\"http://www.w3.org/2005/Atom\"\r\n");
			bw.write("xmlns:cf=\"http://www.microsoft.com/schemas/rss/core/2005\"\r\n");
			bw.write("xmlns:dc=\"http://purl.org/dc/elements/1.1/\"\r\n");
			bw.write("xmlns:trackback=\"http://madskills.com/public/xml/rss/module/trackback/\"\r\n");
			bw.write("xmlns:wfw=\"http://wellformedweb.org/CommentAPI/\"\r\n");
			bw.write("xmlns:slash=\"http://purl.org/rss/1.0/modules/slash/\"\r\n>");
			bw.write("<channel>\r\n");																		
			//标题
			bw.write("<title>jun的博客</title>\r\n");		
			//链接地址
			bw.write("<link>http://localhost:8080/sfblog/index.jsp</link>\r\n");	
			//频道描述
			bw.write("<description>文艺小清新的博客</description>\r\n");			
			for(Article art : list) {
				//栏目
				bw.write("<item>\r\n");		
				//栏目标题
				bw.write("<title>" + art.getTitle()+"</title>\r\n");		
				//栏目链接地址
				bw.write("<link>http://localhost:8080/sfblog/showArticle?id=" + art.getId() + "</link>\r\n");
				//栏目描述
				bw.write("<description>" + art.getContent() + "</description>\r\n");
				//点击量
				bw.write("<author>" + art.getHasread() + "</author>\r\n");	
				//发布时间
				bw.write("<pubDate>" + art.getDatetime() + "</pubDate>\r\n");			
				bw.write("</item>\r\n");
			}
			bw.write("</channel>\r\n");
			bw.write("</rss>\r\n");
			//关闭流
			bw.close();
			fw.close();
		}catch(IOException e){
			e.printStackTrace();
		}
	}
}
