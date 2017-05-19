package com.blog.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Article;
import com.blog.po.Category;
import com.blog.po.Comment;
import com.blog.service.ArticleService;
import com.blog.service.CategoryService;
import com.blog.service.ClickrateService;
import com.blog.service.CommentService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowArticle extends ActionSupport{
	private int id;
	private ArticleService articleService;
	private CategoryService categoryService;
	private CommentService commentService;
	private ClickrateService clickrateService;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public ArticleService getArticleService() {
		return articleService;
	}
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	public CategoryService getCategoryService() {
		return categoryService;
	}
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	public CommentService getCommentService() {
		return commentService;
	}
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}
	public ClickrateService getClickrateService() {
		return clickrateService;
	}
	public void setClickrateService(ClickrateService clickrateService) {
		this.clickrateService = clickrateService;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		Article article=articleService.showArticle(id);
		String username=article.getUsername();
		int categoryid=article.getCategoryid();
		Category category=categoryService.queryByIdCategory(categoryid);
		String categoryName=category.getName();
		List<Comment> allComment=commentService.getAllComment(id);
		int commentNum=commentService.getCommentNum(id);
		String IP = request.getRemoteAddr();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String stime = sdf.format(new Date());
		Date time = sdf.parse(stime);
		if(!clickrateService.isVistor(id, IP, time)){
			article.setHasread(article.getHasread()+1);
		}
		articleService.updateArticle(article);
		request.setAttribute("art", article);
		request.setAttribute("categoryName", categoryName);
		request.setAttribute("commentList", allComment);
		request.setAttribute("commentNum", commentNum);
		request.setAttribute("username", username);
		return this.SUCCESS;
	}
}
