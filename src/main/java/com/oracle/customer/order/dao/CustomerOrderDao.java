package com.oracle.customer.order.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.oracle.entity.Hotel_order;
import com.oracle.util.DBHelper;

public class CustomerOrderDao {
	
	public List<Hotel_order> queryByIntro(int uid) throws SQLException {
		
		QueryRunner qer = new QueryRunner(DBHelper.ds);
		String sql = "SELECT\r\n" + 
				"hotel_order.oontime,\r\n" + 
				"hotel_order.oouttime,\r\n" + 
				"hotel_order.omoney,\r\n" + 
				"hotel_order.ohouse,\r\n" + 
				"hotel_order.onumber,\r\n" + 
				"hotel_order.ooderstate\r\n" + 
				"from hotel_order,user_admin\r\n" + 
				"where \r\n" + 
				"hotel_order.uid=user_admin.uid\r\n" + 
				" AND user_admin.uid=?\r\n" + 
				"";
		
		return qer.query(sql,uid, new BeanListHandler<Hotel_order>(Hotel_order.class));
		
	}
	
	public List<Hotel_order> queryByDetails() throws SQLException {
		
		QueryRunner qy = new QueryRunner(DBHelper.ds);
		String sql = "SELECT\r\n" + 
				"hotel_order.onumber,\r\n" + 
				"hotel_order.oname,\r\n" + 
				"hotel_order.ophone,\r\n" + 
				"hotel_order.ohouse,\r\n" + 
				"hotel_order.ocount,\r\n" + 
				"hotel_order.omoney,\r\n" + 
				"hotel_order.oontime,\r\n" + 
				"hotel_order.oouttime,\r\n" + 
				"hotel_order.ooderstate\r\n" + 
				"FROM\r\n" + 
				"hotel_order\r\n";
		
		return qy.query(sql, new BeanListHandler<Hotel_order>(Hotel_order.class));
	}

}
