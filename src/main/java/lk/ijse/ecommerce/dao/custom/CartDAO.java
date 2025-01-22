package lk.ijse.ecommerce.dao.custom;

import lk.ijse.ecommerce.dao.SuperDAO;
import lk.ijse.ecommerce.entity.Cart;

public interface CartDAO extends SuperDAO {

    void save(Cart cart) throws Exception;
}
