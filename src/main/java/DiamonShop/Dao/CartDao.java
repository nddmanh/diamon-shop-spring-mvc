package DiamonShop.Dao;

import java.util.HashMap;

import DiamonShop.Dto.CartDto;
import DiamonShop.Dto.ProductsDto;

public class CartDao extends BaseDao {
	
	ProductDao productsDao = new ProductDao();
	
	public CartDto AddCart(int id, HashMap<Integer, CartDto> cart) {
		CartDto itemCart = new CartDto();
		ProductsDto product = productsDao.FindProductByID(id);
		if(product != null) {
			itemCart.setProduct(product);
			itemCart.setQuanty(1);
			itemCart.setTotalPrice(product.getPrice());
		}
		return itemCart;
	}
	
}