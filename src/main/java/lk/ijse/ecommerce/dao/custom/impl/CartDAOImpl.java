package lk.ijse.ecommerce.dao.custom.impl;

import lk.ijse.ecommerce.dao.custom.CartDAO;
import lk.ijse.ecommerce.db.FactoryConfiguration;
import lk.ijse.ecommerce.entity.Cart;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class CartDAOImpl implements CartDAO {

    @Override
    public void save(Cart cart) throws Exception {
        Session session = FactoryConfiguration.getSession();
        Transaction transaction = session.beginTransaction();

        session.save(cart);

        transaction.commit();
        session.close();
    }
}
