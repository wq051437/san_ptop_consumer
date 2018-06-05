
package com.jk.service;


import com.jk.model.PageModel;
import com.jk.model.QyManagerBean;


public interface SolrService {

	PageModel<QyManagerBean> getSolrList(PageModel pageModel, QyManagerBean zhiweiLittle) throws Exception;

	void deletesolr(String id);

	void addsolr(QyManagerBean zhiwei);

}
