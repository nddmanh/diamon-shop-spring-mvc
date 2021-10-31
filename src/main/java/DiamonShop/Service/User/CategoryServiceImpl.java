package DiamonShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.ProductDao;
import DiamonShop.Dto.ProductsDto;
@Service
public class CategoryServiceImpl implements ICategoryService{

	@Autowired
	private ProductDao productDao;
	
	public List<ProductsDto> GetAllProductsByID(int id) {
		return productDao.GetAllProductsByID(id);
	}
	
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		return productDao.GetDataProductsPaginate(id, start, totalPage);
	}

}
