package DiamonShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dto.ProductsDto;

@Service
public interface IProductService {
	@Autowired
	public ProductsDto GetProductByID(int id);
	
	public List<ProductsDto> GetProductByIDCategory(int id);
}