package DiamonShop.Service.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	@Autowired
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
}
