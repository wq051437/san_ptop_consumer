package com.jk.controller;

import com.jk.model.PageModel;
import com.jk.model.QyManagerBean;
import com.jk.service.SolrService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("solr")
@Controller
public class SolrController {

	@Autowired
	private SolrService solrService;

	@RequestMapping("getsolrList")
	@ResponseBody
	public PageModel<QyManagerBean> getSolrList(String searchName, Integer pageNow, PageModel pageModel) throws Exception {

		QyManagerBean zhiweiLittle = new QyManagerBean();
		if(pageNow ==null) {
			pageNow=1;
		}
		zhiweiLittle.setQyname(searchName);

		PageModel<QyManagerBean> solrlist=	solrService.getSolrList(pageModel,zhiweiLittle);

//		List<Zhiwei> pageList = solrlist.getPageList();

		return  solrlist;

	}

	@RequestMapping("deleteSolrIndexById")
	public void deletesolr(String id ) {

		solrService.deletesolr(id);
	}

	@RequestMapping("addsolr")
	public void addsolr(String id ) {
		QyManagerBean productAndCate = new QyManagerBean();
		productAndCate.setQyid(3);
//		productAndCate.setP_specifications("周录军111111");
//		productAndCate.setP_statues("合格");
//		productAndCate.setP_unit("sss");
//		productAndCate.setPid(4);
//		productAndCate.setProduct_category("帅哥");
//		productAndCate.setProduct_name("天路");
//		productAndCate.setProduct_price(888.88F);
//		productAndCate.setRemarks("hkahkahd");
		solrService.addsolr(productAndCate);


	}
}
