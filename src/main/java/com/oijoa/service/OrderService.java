package com.oijoa.service;

import java.util.List;
import com.oijoa.domain.Order;

public interface OrderService {

  List<Order> list() throws Exception;

}
