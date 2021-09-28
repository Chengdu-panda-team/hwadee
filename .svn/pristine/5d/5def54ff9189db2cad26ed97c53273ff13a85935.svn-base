package MaozaiTea.service.Impl;

import MaozaiTea.mapper.GoodsMapper;
import MaozaiTea.pojo.Goods;
import MaozaiTea.pojo.GoodsQuery;
import MaozaiTea.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsMapper goodsMapper;

    public List<Goods> getAllGoods() {
        return goodsMapper.getAllGoods();
    }

    public List<Goods> getGoodsByOr(Goods goods) {
        return goodsMapper.getGoodsByOr(goods);
    }

    public Goods getGoodsByID(int goodsID) {
        return goodsMapper.getGoodsByID(goodsID);
    }

    public int addGoods(Goods goods) {
        goodsMapper.addGoods(goods);
        return goods.getGoodsID();
    }

    public void deleteGoods(int goodsID) {
        goodsMapper.deleteGoods(goodsID);
    }

    public void updateGoods(Goods goods) {
        goodsMapper.updateGoods(goods);
    }

    //姓名、简介模糊查询，价格区间查询，其余属性为全匹配
    public List<Goods> getGoodsByOr2(GoodsQuery goodsQuery) {
        return goodsMapper.getGoodsByOr2(goodsQuery);
    }

    public int getCount(GoodsQuery goodsQuery) {
        return goodsMapper.getCount(goodsQuery);
    }
}
