package MaozaiTea.mapper;

import MaozaiTea.pojo.Goods;
import MaozaiTea.pojo.GoodsQuery;

import java.util.List;

public interface GoodsMapper {
    List<Goods> getAllGoods();
    List<Goods> getGoodsByOr(Goods goods);
    Goods getGoodsByID(int goodsID);
    int addGoods(Goods goods);
    void deleteGoods(int goodsID);
    void updateGoods(Goods goods);
    List<Goods> getGoodsByOr2(GoodsQuery goodsQuery);
    int getCount(GoodsQuery goodsQuery);
}
