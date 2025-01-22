package lk.ijse.ecommerce.dto;

import lk.ijse.ecommerce.entity.OrderDetails;
import lk.ijse.ecommerce.entity.Users;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrdersDTO {
    private int orderId;
    private Date date;
    private double total;
    private List<OrderDetails> orderDetails;
    private Users user;
}
