package com.carrotlab.propertymanagement.util;

import org.springframework.data.domain.Page;

import java.util.List;

public class NavigatePage<T> {

    private Page<T> page;

    private int[] navigatePages;    //导航的页序号
    private int navigatePageNums;   //导航的页序号总数

    private int totalPages;   //总页面数
    private long totalElements;  //总元素数量

    private int number; //当前第几页
    private int size;   //一页最多有多少条数据
    private int numberOfElements; //当前页有多少条数据
    private List<T> content; //数据集合
    private boolean isHasContent; //是否有数据
    private boolean first; //是否是首页
    private boolean last; //是否是最后一页
    private boolean isHasNext; //是否有下一页
    private boolean isHasPrevious; //是否有上一页

    public NavigatePage() {
    }

    public NavigatePage(Page<T> page, int navigatePageNums) {

        this.page = page;
        this.navigatePageNums = navigatePageNums;

        totalPages = page.getTotalPages();
        totalElements = page.getTotalElements();

        number = page.getNumber();
        size = page.getSize();
        numberOfElements = page.getNumberOfElements();
        content = page.getContent();
        isHasContent = page.hasContent();
        first = page.isFirst();
        last = page.isLast();
        isHasNext = page.hasNext();
        isHasPrevious = page.hasPrevious();

        calculateNavigatePages();

    }

    private void calculateNavigatePages() {

        int[] navigatePages;
        int totalPages = getTotalPages();
        int num = getNumber();

        if(totalPages <= navigatePageNums) {
            //导航页数量 小于等于 页面总数时
            navigatePages = new int[totalPages];
            for(int i = 0; i < totalPages; i++)
                navigatePages[i] = i+1;
        } else {
            //导航页数量 大于 页面总数时
            navigatePages = new int[navigatePageNums];
            int startNum = num - navigatePageNums/2;
            int endNum = num + navigatePageNums/2;

            if(startNum < 1) {
                startNum = 1;
                for(int i = 0; i < navigatePageNums; i++) {
                    navigatePages[i] = startNum++;
                }
            } else if( endNum > totalPages ) {
                endNum = totalPages;
                for (int i = navigatePageNums-1; i>=0; i--){
                    navigatePages[i] = endNum--;
                }
            } else {
                for(int i = 0; i< navigatePageNums; i++) {
                    navigatePages[i] = startNum++;
                }
            }
        }

        this.navigatePages = navigatePages;

    }

    public Page<T> getPage() {
        return page;
    }

    public void setPage(Page<T> page) {
        this.page = page;
    }

    public int[] getNavigatePages() {
        return navigatePages;
    }

    public void setNavigatePages(int[] navigatePages) {
        this.navigatePages = navigatePages;
    }

    public int getNavigatePageNums() {
        return navigatePageNums;
    }

    public void setNavigatePageNums(int navigatePageNums) {
        this.navigatePageNums = navigatePageNums;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public long getTotalElements() {
        return totalElements;
    }

    public void setTotalElements(long totalElements) {
        this.totalElements = totalElements;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getNumberOfElements() {
        return numberOfElements;
    }

    public void setNumberOfElements(int numberOfElements) {
        this.numberOfElements = numberOfElements;
    }

    public List<T> getContent() {
        return content;
    }

    public void setContent(List<T> content) {
        this.content = content;
    }

    public boolean isHasContent() {
        return isHasContent;
    }

    public void setHasContent(boolean hasContent) {
        isHasContent = hasContent;
    }

    public boolean isFirst() {
        return first;
    }

    public void setFirst(boolean first) {
        this.first = first;
    }

    public boolean isLast() {
        return last;
    }

    public void setLast(boolean last) {
        this.last = last;
    }

    public boolean isHasNext() {
        return isHasNext;
    }

    public void setHasNext(boolean hasNext) {
        isHasNext = hasNext;
    }

    public boolean isHasPrevious() {
        return isHasPrevious;
    }

    public void setHasPrevious(boolean hasPreviou) {
        isHasPrevious = hasPreviou;
    }
}
