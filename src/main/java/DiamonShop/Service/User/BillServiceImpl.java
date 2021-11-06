package DiamonShop.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.BillDao;
import DiamonShop.Dto.CartDto;
import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.Bills;

@Service
public class BillServiceImpl implements IBillService {

	@Autowired
	private BillDao billDao;
	
	public int AddBills(Bills bill) {
		return billDao.AddBills(bill);
	}

	public void AddBillsDetail(HashMap<Integer, CartDto> carts) {
		long idBills = billDao.GetIdLastBills();
		
		for (Map.Entry<Integer, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId_product());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billDao.AddBillsDetail(billDetail);
		}
		
	}

}
