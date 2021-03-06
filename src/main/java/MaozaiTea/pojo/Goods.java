package MaozaiTea.pojo;

public class Goods {
    private int goodsID;
    private String goodsName;
    private String goodsImg;
    private Double goodsPrice;
    private String goodsCategory;
    private String goodsInf;

    public void setGoodsID(int goodsID) {
        this.goodsID = goodsID;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg;
    }

    public void setGoodsPrice(double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public void setGoodsCategory(String goodsCategory) {
        this.goodsCategory = goodsCategory;
    }

    public void setGoodsInf(String goodsInf) {
        this.goodsInf = goodsInf;
    }

    public int getGoodsID() {
        return goodsID;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public String getGoodsImg() {
        return goodsImg;
    }

    public Double getGoodsPrice() {
        return goodsPrice;
    }

    public String getGoodsCategory() {
        return goodsCategory;
    }

    public String getGoodsInf() {
        return goodsInf;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "goodsID=" + goodsID +
                ", goodsName='" + goodsName + '\'' +
                ", goodsImg='" + goodsImg + '\'' +
                ", goodsPrice=" + goodsPrice +
                ", goodsCategory='" + goodsCategory + '\'' +
                ", goodsInf='" + goodsInf + '\'' +
                '}';
    }
}
