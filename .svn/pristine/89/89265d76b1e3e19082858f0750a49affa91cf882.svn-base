package MaozaiTea.pojo;

import java.util.ArrayList;
import java.util.List;

public class Page {
    private int curPage;
    private int pageCount;
    private int pageSize;
    private List arrayList;

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public void setArrayList(List arrayList) {
        this.arrayList = arrayList;
    }

    public int getCurPage() {
        return curPage;
    }

    public int getPageCount() {
        return pageCount;
    }

    public int getPageSize() {
        return pageSize;
    }

    public List getArrayList() {
        return arrayList;
    }

    public Page(int curPage, int pageCount, int pageSize, List arrayList) {
        if (pageCount < 1) pageCount = 1;
        if (curPage > pageCount) curPage = pageCount;
        this.curPage = curPage;
        this.pageCount = pageCount;
        this.pageSize = pageSize;
        this.arrayList = arrayList;
    }

    public static int getPageNum(int itemNum, int size) {
        int res = itemNum / size;
        if (itemNum % size != 0) ++res;
        return res;
    }

    @Override
    public String toString() {
        return "Page{" +
                "curPage=" + curPage +
                ", pageCount=" + pageCount +
                ", pageSize=" + pageSize +
                ", arrayList=" + arrayList +
                '}';
    }
}
