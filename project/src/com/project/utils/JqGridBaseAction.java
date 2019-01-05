package com.project.utils;

import java.util.Collections;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.project.domain.User;

public abstract  class JqGridBaseAction<T> extends ActionSupport{
	private List<T> gridModel = Collections.emptyList();  
    private Integer rows = 0;  
    private Integer page = 0;  
    private Integer total = 0;  
    private Integer record = 0;  
    private String sord;  
    private String sidx;  
    private String search; 
    private String name;
   
    public abstract int getResultSize();  
   
    public abstract List<T> listResults(int from, int length, String name);  
   
    public String refreshGridModel() {  
        try {  
            List<T> results = Collections.emptyList();  
            record = this.getResultSize();  
            int from = rows * (page - 1);  
            int length = rows;  
            results = this.listResults(from, length, name);  
            this.setGridModel(results);  
            total = (int) Math.ceil((double) record / (double) rows);  
            return "success";  
        } catch (Exception e) {  
            e.printStackTrace();  
            this.addActionError(e.getMessage());  
            return ERROR;  
        }  
    }  
   
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<T> getGridModel() {  
        return gridModel;  
    }  
    public void setGridModel(List<T> gridModel) {  
        this.gridModel = gridModel;  
    }  
    public Integer getRows() {  
        return rows;  
    }  
    public void setRows(Integer rows) {  
        this.rows = rows;  
    }  
    public Integer getPage() {  
        return page;  
    }  
    public void setPage(Integer page) {  
        this.page = page;  
    }  
    public Integer getTotal() {  
        return total;  
    }  
    public void setTotal(Integer total) {  
        this.total = total;  
    }  
    public Integer getRecord() {  
        return record;  
    }  
    public void setRecord(Integer record) {  
        this.record = record;  
    }  
    public String getSord() {  
        return sord;  
    }  
    public void setSord(String sord) {  
        this.sord = sord;  
    }  
    public String getSidx() {  
        return sidx;  
    }  
    public void setSidx(String sidx) {  
        this.sidx = sidx;  
    }  
    public String getSearch() {  
        return search;  
    }  
    public void setSearch(String search) {  
        this.search = search;  
    }  
}
