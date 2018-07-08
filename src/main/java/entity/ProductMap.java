package entity;

import java.util.HashMap;
import java.util.Map;

public class ProductMap {

    static Map<String, Product> map = new HashMap<>();

    static {
        map.put("8601", new Product("8601", "86 (the band) - True Life Songs and Pictures", 14.95));
        map.put("pf01", new Product("pf01", "Paddlefoot - The first CD", 12.95));
        map.put("jr01", new Product("jr01", "Joe Rut - Genuine Wood Grained Finish", 14.95));
    }

    public static Product getProduct(String productCode) {
        return map.get(productCode);
    }
}
