package com.oracle.shop.check.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.oracle.entity.Hotel_room;
import com.oracle.util.DBHelper;

public class ShowRoomDao {
	QueryRunner qr =new QueryRunner(DBHelper.ds);
	public List<Hotel_room> showroom() throws SQLException{
		String sql ="SELECT * FROM `hotel_room`";
		List<Hotel_room> list=qr.query(sql,new BeanListHandler<Hotel_room>(Hotel_room.class));
		return list;
	}	

}
