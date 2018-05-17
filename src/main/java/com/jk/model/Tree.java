package com.jk.model;

import java.io.Serializable;
import java.util.List;

/**
 * Created by new鹏 on 2018/5/15.
 */
public class Tree  implements Serializable {
    private static final long serialVersionUID = 356621288614880153L;
    private  Integer  id;
    private  String  text;
    private  String    url  ;
    private  Integer   pid;
    private Boolean checked=false;

    private List<Tree>   nodes;
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

    public List<Tree> getNodes() {
        return nodes;
    }

    public void setNodes(List<Tree> nodes) {
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
    public Tree() {

    }
}
