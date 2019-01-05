package com.project.skip.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.project.adminUser.pageInfo.service.PageInfoService;
import com.project.announInfo.service.AnnounInfoService;
import com.project.categorySecond.service.CategorySecondService;
import com.project.content.service.ContentBottomService;
import com.project.content.service.ContentTopService;
import com.project.content.service.InsideNewsService;
import com.project.domain.AnnounInfo;
import com.project.domain.CategorySecond;
import com.project.domain.ContentBottom;
import com.project.domain.ContentTop;
import com.project.domain.InsideNews;
import com.project.domain.PageInfo;

@Controller
@Namespace("/")
@ParentPackage("struts-default")
@Scope("prototype")
public class SkipAction {
	
	@Autowired
	private CategorySecondService categorySecondService;
	
	@Autowired
	private AnnounInfoService announInfoService;
	
	@Autowired
	private ContentTopService contentTopService;
	
	@Autowired
	private InsideNewsService insideNewsService;
	
	@Autowired
	private ContentBottomService contentBottomService;
	
	@Autowired
	private PageInfoService pageInfoService;
	
	private Integer number;
	
	private Integer csid;
	
	private Integer anno;
	
	private Integer nid;
	
	private Integer cbid;
	
	public Integer getCbid() {
		return cbid;
	}

	public void setCbid(Integer cbid) {
		this.cbid = cbid;
	}

	public Integer getNid() {
		return nid;
	}

	public void setNid(Integer nid) {
		this.nid = nid;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}
	
	public Integer getCsid() {
		return csid;
	}

	public void setCsid(Integer csid) {
		String csName=categorySecondService.findCategorySecondNameByCsid(csid);
		//ActionContext.getContext().getValueStack().set("csName", csName);
		ActionContext.getContext().getSession().put("csName", csName);
		this.csid = csid;
	}
	
	public Integer getAnno() {
		return anno;
	}

	public void setAnno(Integer anno) {
		ContentTop contentTop = contentTopService.findNoticeBullByCtid(anno);
		ActionContext.getContext().getValueStack().set("tContent", contentTop.gettContent());
		this.anno = anno;
	}

	@Action(value="skip_*",results={
		@Result(name="skip_*",location="/WEB-INF/jsp/content/aboutMaster_{1}.jsp")
	})
	public String skipPage(){
		List<CategorySecond> list=categorySecondService.findCategorySecondByCid(number);
		ActionContext.getContext().getSession().put("list", list);
		
		PageInfo pageInfo = pageInfoService.getPageInfoByCsid(csid);
		if(pageInfo != null){
			if(pageInfo.getCategorySecond().getCsid() == 28){
				ActionContext.getContext().getSession().put("regist", pageInfo.getpContent());
			}else{
				ActionContext.getContext().getValueStack().set("pageInfo", pageInfo.getpContent());
			}
		}
		/*if(number==2){
			List<InsideNews> InsideNewsList=insideNewsService.getInsideNews();
			ActionContext.getContext().getValueStack().set("InsideNewsList", InsideNewsList);
		}*/
		return "skip_*";
	}
	
	@Action(value="turn_*",results={
			@Result(name="turn_*",location="/WEB-INF/jsp/content/aboutMaster_{1}.jsp")
	})
	public String turnPage(){
		PageInfo pageInfo = pageInfoService.getPageInfoByCsid(csid);
		if(pageInfo != null){
			ActionContext.getContext().getValueStack().set("pageInfo", pageInfo.getpContent());
		}
		return "turn_*";
	}
	
	@Action(value="inside_*",results={
			@Result(name="inside_*",location="/WEB-INF/jsp/inside/aboutContentT_{1}.jsp")
	})
	public String insidePage(){
		/*AnnounInfo announInfo = announInfoService.getContentTopByAnno(anno);
		ActionContext.getContext().getValueStack().set("announInfo", announInfo.getAnnounNews());*/
		return "inside_*";
	}
	
	@Action(value="new_*",results={
			@Result(name="new_*",location="/WEB-INF/jsp/inside/aboutContentB_{1}.jsp")
	})
	public String insidePages(){
		/*ContentBottom contentBottom = contentBottomService.getContentBottomByCbid(cbid);
		ActionContext.getContext().getValueStack().set("contentBottom", contentBottom.getbContent());*/
		return "new_*";
	}
	
	@Action(value="trade_*",results={
			@Result(name="trade_*",location="/WEB-INF/jsp/inside/aboutTradeNews_{1}.jsp")
	})
	public String insideNews(){
		/*InsideNews insideNews = insideNewsService.getInsideNewsByNid(nid);
		ActionContext.getContext().getValueStack().set("insideNews", insideNews.getNewsContent());*/
		return "trade_*";
	}
}
