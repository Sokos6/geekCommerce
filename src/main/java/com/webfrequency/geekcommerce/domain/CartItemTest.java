package com.webfrequency.geekcommerce.domain;
import java.math.BigDecimal;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

//To make the test case pass, assign the value 1 to the quantity field 
//of CartItem in the zero argument constructor of the CartItem class (as follows) and save the file
//
//public CartItem() {
//    this.quantity = 1;
//  }



public class CartItemTest {
  
  private CartItem cartItem;

  @Before
  public void setup() {
    cartItem = new CartItem();
  }
  
  @Test
  public void cartItem_total_price_should_be_eaual_to_product_unit_price_in_case_of_single_quantity() {
    //Arrange
    Product iphone = new Product("P1234","iPhone 5s", new BigDecimal(500));
    cartItem.setProduct(iphone);
    
    //Act
    BigDecimal totalPrice = cartItem.getTotalPrice();
    
    //Assert
    Assert.assertEquals(iphone.getUnitPrice(), totalPrice);
  }
}