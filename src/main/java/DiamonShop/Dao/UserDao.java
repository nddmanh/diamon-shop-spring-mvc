package DiamonShop.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Entity.MapperUser;
import DiamonShop.Entity.Users;

@Repository
public class UserDao extends BaseDao {
	public int AddAccount(Users user) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO users ");
		sql.append("( ");
		sql.append("   user, ");
		sql.append("   password, ");
		sql.append("   display_name, ");
		sql.append("   address ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("   '" + user.getUser() + "', ");
		sql.append("   '" + user.getPassword() +"', ");
		sql.append("   '" + user.getDisplay_name() + "', ");
		sql.append("   '" + user.getAddress() + "' ");
		sql.append(")");

		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	private boolean checkUser(Users user) {
        String CHECK_USER = "SELECT * FROM users WHERE user ='" + user.getUser() + "' LIMIT 1";
        List<Users> listUsers = _jdbcTemplate.query(CHECK_USER, new MapperUser());
        int count = listUsers.size();
        if (count > 0) {
        	return true;
        }
        return false;
    }
	
	public Users GetUserByAccount(Users user) {
		String sql = "SELECT * FROM users WHERE user ='" + user.getUser() + "'";
		if (checkUser(user)) {
			Users result = _jdbcTemplate.queryForObject(sql, new MapperUser());
			return result;
		}
		return null;
	}
	
}
