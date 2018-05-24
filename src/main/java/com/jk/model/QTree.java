package com.jk.model;

import java.io.Serializable;
import java.util.List;

/**
 * Created by new鹏 on 2018/5/15.
 */
public class QTree implements Serializable {


    private static final long serialVersionUID = 4764893897892974178L;
    private  Integer  id;
    private  String  text;
    private  String    url  ;
    private  Integer   pid;
    private Boolean checked=false;

    private List<QTree>   nodes;
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }

    public List<QTree> getNodes() {
        return nodes;
    }

    public void setNodes(List<QTree> nodes) {
        this.nodes = nodes;
    }

    @Override
    public String toString() {
        return "Tree{" +
                "id=" + id +
                ", text='" + text + '\'' +
                ", url='" + url + '\'' +
                ", pid=" + pid +
                ", checked=" + checked +
                ", nodes=" + nodes +
                '}';
    }
    public QTree() {

    }
}
