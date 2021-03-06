package MaozaiTea.pojo;

//用于模糊查询Goods类的查询类，存放Goods信息外加用于查询的价格区间[lowPrice, highPrice]
public class GoodsQuery {
    private int goodsQueryID;
    private String goodsQueryName;
    private String goodsQueryImg;
    private String goodsQueryCategory;
    private String goodsQueryInf;
    private Double goodsQueryLowPrice;
    private Double goodsQueryHighPrice;
    private int goodsQueryStart;
    private int goodsQueryPageSize;

    public void setGoodsQueryID(int goodsQueryID) {
        this.goodsQueryID = goodsQueryID;
    }

    public void setGoodsQueryName(String goodsQueryName) {
        this.goodsQueryName = goodsQueryName;
    }

    public void setGoodsQueryImg(String goodsQueryImg) {
        this.goodsQueryImg = goodsQueryImg;
    }

    public void setGoodsQueryCategory(String goodsQueryCategory) {
        this.goodsQueryCategory = goodsQueryCategory;
    }

    public void setGoodsQueryInf(String goodsQueryInf) {
        this.goodsQueryInf = goodsQueryInf;
    }

    public void setGoodsQueryLowPrice(Double goodsQueryLowPrice) {
        this.goodsQueryLowPrice = goodsQueryLowPrice;
    }

    public void setGoodsQueryHighPrice(Double goodsQueryHighPrice) {
        this.goodsQueryHighPrice = goodsQueryHighPrice;
    }

    public void setGoodsQueryStart(int goodsQueryStart) {
        this.goodsQueryStart = goodsQueryStart;
    }

    public void setGoodsQueryPageSize(int goodsQueryPageSize) {
        this.goodsQueryPageSize = goodsQueryPageSize;
    }

    public int getGoodsQueryID() {
        return goodsQueryID;
    }

    public String getGoodsQueryName() {
        return goodsQueryName;
    }

    public String getGoodsQueryImg() {
        return goodsQueryImg;
    }

    public String getGoodsQueryCategory() {
        return goodsQueryCategory;
    }

    public String getGoodsQueryInf() {
        return goodsQueryInf;
    }

    public Double getGoodsQueryLowPrice() {
        return goodsQueryLowPrice;
    }

    public Double getGoodsQueryHighPrice() {
        return goodsQueryHighPrice;
    }

    public int getGoodsQueryStart() {
        return goodsQueryStart;
    }

    public int getGoodsQueryPageSize() {
        return goodsQueryPageSize;
    }

    @Override
    public String toString() {
        return "GoodsQuery{" +
                "goodsQueryID=" + goodsQueryID +
                ", goodsQueryName='" + goodsQueryName + '\'' +
                ", goodsQueryImg='" + goodsQueryImg + '\'' +
                ", goodsQueryCategory='" + goodsQueryCategory + '\'' +
                ", goodsQueryInf='" + goodsQueryInf + '\'' +
                ", goodsQueryLowPrice=" + goodsQueryLowPrice +
                ", goodsQueryHighPrice=" + goodsQueryHighPrice +
                ", goodsQueryStart=" + goodsQueryStart +
                ", goodsQueryPageSize=" + goodsQueryPageSize +
                '}';
    }
}