package DiamonShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.CategoryDao;
import DiamonShop.Dao.SlideDao;
import DiamonShop.Entity.Categories;
import DiamonShop.Entity.Slides;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlideDao sildeDao;
	@Autowired
	private CategoryDao categoryDao;

	public List<Slides> GetDataSlides() {
		return sildeDao.GetDataSlides();
	}

	public List<Categories> GetDataCategories() {
		return categoryDao.GetDataCategories();
	}
	
}
