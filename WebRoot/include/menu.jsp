<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
			<s:action name="showTopTenArticle" executeResult="true" ignoreContextParams="false"></s:action>
  			<s:action name="showCategory" executeResult="true" ignoreContextParams="false"></s:action>	
  			<s:action name="showAlbum" executeResult="true" ignoreContextParams="false"></s:action>	
  			<s:action name="showAllArticleByHot" executeResult="true" ignoreContextParams="false"></s:action>
    		<div id="main_right">
    			
    		
    			<div class="ck_right">
    				<span class="title_right">文章分类</span>
    				<ul>
	    				<s:iterator value="#request.categoryList" var="category">
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticleByCat?categoryid=${category.id}" class="link_a">${category.name}（${category.articlenum}）</a>
	    					</li>
	    				</s:iterator>
    				</ul>
    			</div>
    			
    			<div class="ck_right">
    				<span class="title_right">博客相册</span>
    				<ul>
    					<s:iterator value="#request.albumList" var="album">	
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showPhoto?albumname=${album}" class="link_a">${album}</a>
	    					</li>
	    				</s:iterator>
    				</ul>
    			</div>    		
    			
    			<div class="ck_right">
    				<span class="title_right">最新文章</span>
    				<ul>
    					<s:iterator value="#request.topTenArticle" var="topArticle">	
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticle?id=${topArticle.id}" class="link_a">${topArticle.title}</a>
	    					</li>
	    				</s:iterator>
    				</ul>
    			</div> 	
    			
    			<div class="ck_right">
    				<span class="title_right">推荐文章</span>
    				<ul>
    					<s:iterator value="#request.allArticleByHot" var="hotArticle">	
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticle?id=${hotArticle.id}" class="link_a">${hotArticle.title}</a>
	    					</li>
	    				</s:iterator>
    				</ul>
    			</div> 	
    			
    		</div>

