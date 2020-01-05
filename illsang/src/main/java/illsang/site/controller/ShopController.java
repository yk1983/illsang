package illsang.site.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/shop")
public class ShopController {

	private Logger log = LoggerFactory.getLogger(this.getClass());

	/**
	 * SHOP 페이지를 호출
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getProductLst() {
		ModelAndView mav = new ModelAndView("site/shop/product-lst");
		return mav;
	}
	
	/**
	 * 상품상세 페이지를 호출 
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(value = "/product-details", method = RequestMethod.GET)
	public ModelAndView getProductDtl() {
		ModelAndView mav = new ModelAndView("site/shop/product-dtl");
		return mav;
	}

	/**
	 * 장바구니 페이지를 호출 
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public ModelAndView getShopCartPage() {
		ModelAndView mav = new ModelAndView("site/shop/cart");
		return mav;
	}
	
	/**
	 * 장바구니 페이지를 호출 
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(value = "/cart", method = RequestMethod.POST)
	public ModelAndView addShopCart() {
		ModelAndView mav = new ModelAndView("site/shop/cart");
		return mav;
	}

	/**
	 * 결제 페이지를 호출 
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public ModelAndView getPaymentPage() {
		ModelAndView mav = new ModelAndView("site/shop/order");
		return mav;
	}

}
