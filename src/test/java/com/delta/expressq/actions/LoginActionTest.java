package com.delta.expressq.actions;

import org.apache.struts2.StrutsTestCase;
import org.apache.struts2.dispatcher.mapper.ActionMapping;

import com.opensymphony.xwork2.ActionProxy;

public class LoginActionTest extends StrutsTestCase{
	/**
	 * Tests that success is returned when a valid username and password are entered.
	 * @throws Exception
	 */
	public void testLoginSuccess() throws Exception{
		request.setParameter("userName", "matt");
		request.setParameter("password", "test");
		ActionProxy proxy = getActionProxy("/loginUser");
		LoginAction loginAction = (LoginAction) proxy.getAction();
        String result = proxy.execute();
        assertTrue("Problem There were errors present in fieldErrors but there should not have been any errors present", loginAction.getFieldErrors().size() == 0);
        assertEquals("Result returned form executing the action was not success but it should have been.", "success", result);
	}
	
	/**
	 * Tests that login is returned when an invalid username and password are entered.
	 * @throws Exception
	 */
	public void testLoginFail() throws Exception{
		request.setParameter("userName", "mattfail");
		request.setParameter("password", "test");
		ActionProxy proxy = getActionProxy("/loginUser");
		LoginAction loginAction = (LoginAction) proxy.getAction();
        String result = proxy.execute();	
        assertEquals("Result returned form executing the action was not login but it should have been.", "login", result);
	}
	
	/**
	 * Tests that when /login is called the login page is presented to the user
	 */
	public void testGetLoginPage() {
		ActionMapping mapping = getActionMapping("/login");
		assertNotNull(mapping);
        assertEquals("/", mapping.getNamespace());
        assertEquals("login", mapping.getName());
	}
	
}
