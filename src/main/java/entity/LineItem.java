package entity;

import java.io.Serializable;

public class LineItem implements Serializable {

    private Product product;
    private int quantity;

    public LineItem() {
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        double total = product.getPrice() * quantity;
        return total;
    }
}
