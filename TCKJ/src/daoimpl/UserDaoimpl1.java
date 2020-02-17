package daoimpl;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import dao.UserDao1;
import entity.Domain;
import entity.Goods1;
import entity.Goods2;
import entity.Goods3;
import entity.Goods4;
import entity.Message;
import entity.Order;
import entity.User;
import util.JDBCTemple;
import util.ParamSeter;
import util.ResultSeter;

public class UserDaoimpl1 implements UserDao1{
	User user;
	Goods1 goods;
	Goods2 goods2;
	Goods3 goods3;
	Goods4 goods4;
	Order order;
	Domain domain;
	Message message;
	List<User> userlist;
	List<Goods1> goodslist;
	List<Goods2> goodslist2;
	List<Goods3> goodslist3;
	List<Goods4> goodslist4;
	List<Order> orderlist;
	List<Domain> domainlist;
	List<Message> messagelist;
	JDBCTemple jdbcTemple=new JDBCTemple();
	String sqllogin="select * from t_user where username=? and password=?";
	String sqlregister="INSERT INTO t_user(username,Password,tel,email,type,time) "
			+ "VALUES(?,?,?,?,0,now())";
	String sqlcx="select username from t_user where username=?";
	String sqlgoods="SELECT * FROM t_goods1";
	String sqlgoods2="SELECT * FROM t_goods2";
	String sqlgoods3="SELECT * FROM t_goods3";
	String sqlgoods4="SELECT * FROM t_goods4";
	String sqlorder="INSERT INTO t_order(userid,goodsname,price,type)"
			+ "VALUES(?,?,?,'否')";
	String sqlorder1="INSERT INTO t_order(userid,time,goodsname,price,type,time2,tel,email,address,username)"
			+"VALUES(?,now(),?,?,'否','30',?,?,?,?)";
	String sqlordermessage="select * FROM t_order WHERE userid=?";
	String sqlpassword="UPDATE t_user SET password=? where id=?";
	String sqlregister1="INSERT INTO t_domainname(userid,name,suffix,time) values(?,?,?,now())";
	String sqldomain="SELECT * FROM t_domainname";
	String sqldeldomain="delete from t_domainname where id=?";
	String sqlseleuser="SELECT * FROM t_user";
	String sqlorder2="select * FROM t_order";
	String sqlinsertmessage="INSERT INTO t_opinion(username,tel,email,message,date) values(?,?,?,?,now())";
	String sqlselemessage="select * FROM t_opinion";
	String sqlcxdomain="select * from t_domainname where name=? and suffix=?";
	String sqldeleorder="delete from t_order where id=?";
	@Override
	public User DaoDl(final String name, final String password) {//��¼
		try {
			jdbcTemple.query(sqllogin, new ParamSeter() {
				
				@Override
				public void setValue(PreparedStatement stmt) {
					try {
						stmt.setString(1, name);
						stmt.setString(2, password);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}					
				}
			}, new ResultSeter() {
				
				@Override
				public void handler(ResultSet rs) {
					try {
						while(rs.next()){
							user = new User();
							user.setUserid(rs.getInt(1));
							user.setUsername(rs.getString(2));
							user.setPassword(rs.getString(3));
							user.setTel(rs.getString(4));
							user.setEmail(rs.getString(5));
							user.setType(rs.getInt(6));
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	@Override
	public int DaoRegister(final String name, final String password, final String tel, final String email) {//ע��
		int row = jdbcTemple.update(sqlregister, new ParamSeter() {			
			@Override
			public void setValue(PreparedStatement stmt) {
				try {
					stmt.setString(1, name);
					stmt.setString(2, password);
					stmt.setString(3, tel);
					stmt.setString(4, email);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		} );
		return row;
	}
	
	@Override
	public User DaoCx(final String name) {//��֤
		try {
			jdbcTemple.query(sqlcx, new ParamSeter() {		
				@Override
				public void setValue(PreparedStatement stmt) {
					try {
						stmt.setString(1, name);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			}, new ResultSeter() {				
				@Override
				public void handler(ResultSet rs) {
					try {
						while(rs.next()){
							user = new User();
							user.setUsername(rs.getString(1));
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}	
				}
			});
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	@Override
	public List<Goods1> DaoGoods1() {//��Ʒ��Ϣ
		try {
			jdbcTemple.query(sqlgoods, new ParamSeter() {
				
				@Override
				public void setValue(PreparedStatement stmt) {
					// TODO Auto-generated method stub
					
				}
			}, new ResultSeter() {
				
				@Override
				public void handler(ResultSet rs) {
					goodslist=new ArrayList<Goods1>();
					try {
						while(rs.next()){
							 goods = new Goods1();
							 goods.setGoodsid(rs.getInt(1));
							 goods.setType(rs.getString(2));
							 goods.setPrice(rs.getString(3));
							 goods.setVersions(rs.getString(4));
							 goods.setCpu(rs.getString(5));
							 goods.setMemory(rs.getString(6));
							 goods.setCapacity(rs.getString(7));
							 goods.setMirror(rs.getString(8));
							 goods.setBandwidth(rs.getString(9));							
							 goodslist.add(goods);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return goodslist;
	}

	@Override
	public List<Goods2> DaoGoods2() {
		try {
			jdbcTemple.query(sqlgoods2, new ParamSeter() {
				
				@Override
				public void setValue(PreparedStatement stmt) {
					// TODO Auto-generated method stub
					
				}
			}, new ResultSeter() {
				
				@Override
				public void handler(ResultSet rs) {
					goodslist2=new ArrayList<Goods2>();
					try {
						while(rs.next()){
							 goods2 = new Goods2();
							 goods2.setGoodsid(rs.getInt(1));
							 goods2.setType(rs.getString(2));
							 goods2.setPrice(rs.getString(3));
							 goods2.setVersions(rs.getString(4));							 
							 goods2.setMemory(rs.getString(5));
							 goods2.setCapacity(rs.getString(6));							 
							 goods2.setDatebase(rs.getString(7));
							 goods2.setOperatingSystem(rs.getString(8));							 
							 goodslist2.add(goods2);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return goodslist2;
	}

	@Override
	public List<Goods3> DaoGoods3() {
		try {
			jdbcTemple.query(sqlgoods3, new ParamSeter() {
				
				@Override
				public void setValue(PreparedStatement stmt) {
					// TODO Auto-generated method stub
					
				}
			}, new ResultSeter() {
				
				@Override
				public void handler(ResultSet rs) {
					goodslist3=new ArrayList<Goods3>();
					try {
						while(rs.next()){
							 goods3 = new Goods3();
							 goods3.setGoodsid(rs.getInt(1));
							 goods3.setType(rs.getString(2));
							 goods3.setPrice(rs.getString(3));
							 goods3.setVersions(rs.getString(4));							 
							 goods3.setCapacity(rs.getString(5));
							 goods3.setBandwidth(rs.getString(6));
							 goodslist3.add(goods3);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return goodslist3;
	}
	@Override
	public List<Goods4> DaoGoods4() {
		try {
			jdbcTemple.query(sqlgoods4, new ParamSeter() {
				
				@Override
				public void setValue(PreparedStatement stmt) {
					// TODO Auto-generated method stub
					
				}
			}, new ResultSeter() {
				
				@Override
				public void handler(ResultSet rs) {
					goodslist4=new ArrayList<Goods4>();
					try {
						while(rs.next()){
							 goods4 = new Goods4();
							 goods4.setGoodsid(rs.getInt(1));
							 goods4.setType(rs.getString(2));
							 goods4.setPrice(rs.getString(3));
							 goods4.setVersions(rs.getString(4));							 
							 goods4.setCont1(rs.getInt(5));
							 goods4.setCont2(rs.getInt(6));
							 goods4.setCont3(rs.getInt(7));
							 goods4.setCont4(rs.getInt(8));
							 goodslist4.add(goods4);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return goodslist4;
	}
	@Override
	public int DaoOrder(final int userid, final String goodsname, final String price) {//����
		int row = jdbcTemple.update(sqlorder, new ParamSeter() {			
			@Override
			public void setValue(PreparedStatement stmt) {
				try {
					stmt.setInt(1, userid);
					stmt.setString(2, goodsname);
					stmt.setString(3, price);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		});
		return row;
	}
	
	@Override
	public int DaoOrder1(final int userid, final String username, final String tel, final String email, final String address,final String goodsname,final String price) {//����2
		int row = jdbcTemple.update(sqlorder1, new ParamSeter() {
			
			@Override
			public void setValue(PreparedStatement stmt) {				
				try {
//					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//�������ڸ�ʽ
//					String date = df.format(new Date());// new Date()Ϊ��ȡ��ǰϵͳʱ��
					stmt.setInt(1, userid);				
					stmt.setString(2, goodsname);
					stmt.setString(3, price);
					stmt.setString(4, tel);
					stmt.setString(5, email);
					stmt.setString(6, address);
					stmt.setString(7, username);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}							
			}
		});
		return row;
	}
	@Override
	public List<Order> DaoOrderMessage(final int userid) {//������Ϣ
		try {
			jdbcTemple.query(sqlordermessage, new ParamSeter() {				
				@Override
				public void setValue(PreparedStatement stmt) {
					try {
						stmt.setInt(1, userid);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}					
				}
			}, new ResultSeter() {
				@Override
				public void handler(ResultSet rs) {
					orderlist = new ArrayList<Order>();
					try {
						while(rs.next()){
							 order = new Order();
							 order.setOrderid(rs.getInt(1));
							 order.setUserid(rs.getInt(2));
							 order.setTime(rs.getString(3));
							 order.setGoodsname(rs.getString(4));
							 order.setPrice(rs.getString(5));
							 order.setType(rs.getString(6));
							 order.setTime2(rs.getString(7));
							 order.setTel(rs.getString(8));
							 order.setEmail(rs.getString(9));
							 order.setAdress(rs.getString(10));
							 order.setUsername(rs.getString(11));
							 orderlist.add(order);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			});
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderlist;
	}
	@Override
	public int DaoPassword(final int userid,final String password) {//�޸�����
		int row = jdbcTemple.update(sqlpassword, new ParamSeter() {
			
			@Override
			public void setValue(PreparedStatement stmt) {
				try {
					stmt.setString(1, password);
					stmt.setInt(2, userid);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		} );
		return row;
	}
	
	@Override
	public int DaoRegisterDomain(final int userid, final String name, final String suffix) {//ע������
		int row = jdbcTemple.update(sqlregister1, new ParamSeter() {
			
			@Override
			public void setValue(PreparedStatement stmt) {
			try {
				stmt.setInt(1, userid);
				stmt.setString(2, name);
				stmt.setString(3, suffix);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
			}
		});
		return row;
	}
	@Override
	public List<Domain> SeleDaoDomain() {//�����б�
		try {
			jdbcTemple.query(sqldomain, new ParamSeter() {
				
				@Override
				public void setValue(PreparedStatement stmt) {
					// TODO Auto-generated method stub
					
				}
			}, new ResultSeter() {
				
				@Override
				public void handler(ResultSet rs) {
					 domainlist = new ArrayList<Domain>();
					 try {
						while(rs.next()){
							  domain = new Domain();
							  domain.setDamainid(rs.getInt(1));
							  domain.setUserid(rs.getInt(2));
							  domain.setName(rs.getString(3));
							  domain.setSuffix(rs.getString(4));
							  domain.setTime(rs.getString(5));
							  domainlist.add(domain);
						 }
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			});
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return domainlist;
	}
	@Override
	public List<Order> SeleOrder() {//�����б�
		try {
			jdbcTemple.query(sqlorder2, new ParamSeter() {
				
				@Override
				public void setValue(PreparedStatement stmt) {
					// TODO Auto-generated method stub
					
				}
			},new ResultSeter() {
				
				@Override
				public void handler(ResultSet rs) {
					 orderlist = new ArrayList<Order>();
					try {
						while(rs.next()){
							 order = new Order();
							 order.setOrderid(rs.getInt(1));
							 order.setUserid(rs.getInt(2));
							 order.setTime(rs.getString(3));
							 order.setGoodsname(rs.getString(4));
							 order.setPrice(rs.getString(5));
							 order.setType(rs.getString(6));
							 order.setTime2(rs.getString(7));
							 order.setTel(rs.getString(8));
							 order.setEmail(rs.getString(9));
							 order.setAdress(rs.getString(10));
							 order.setUsername(rs.getString(11));
							 orderlist.add(order);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			} );
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderlist;
	}
	@Override
	public List<Message> SeleMessage() {//�����б�
		try {
			jdbcTemple.query(sqlselemessage, new ParamSeter() {
				
				@Override
				public void setValue(PreparedStatement stmt) {
					// TODO Auto-generated method stub
					
				}
			}, new ResultSeter() {
				
				@Override
				public void handler(ResultSet rs) {
					messagelist = new ArrayList<Message>();
					try {
						while(rs.next()){
							 message = new Message();
							 message.setId(rs.getInt(1));
							 message.setName(rs.getString(2));
							 message.setTel(rs.getString(3));
							 message.setEmail(rs.getString(4));
							 message.setMessage(rs.getString(5));
							 message.setDate(rs.getString(6));
							 messagelist.add(message);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			});
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return messagelist;
	}
	@Override
	public List<User> SeleUser() {//�û��б�
		try {
			jdbcTemple.query(sqlseleuser, new ParamSeter() {
				
				@Override
				public void setValue(PreparedStatement stmt) {
					// TODO Auto-generated method stub
					
				}
			},new ResultSeter() {
				
				@Override
				public void handler(ResultSet rs) {
					 userlist = new ArrayList<User>();
					 try {
						while(rs.next()){
							 user = new User(); 
							 user.setUserid(rs.getInt(1));
							 user.setUsername(rs.getString(2));
							 user.setPassword(rs.getString(3));
							 user.setTel(rs.getString(4));
							 user.setEmail(rs.getString(5));
							 user.setType(rs.getInt(6));
							 user.setTime(rs.getString(7));
							 userlist.add(user);
						 }
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			});
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userlist;
	}
	@Override
	public int DaoDeleDomain(final int id) {//ɾ������
		int row = jdbcTemple.update(sqldeldomain,new ParamSeter() {			
			@Override
			public void setValue(PreparedStatement stmt) {
				try {
					stmt.setInt(1, id);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		});
		return row;
	}
	@Override
	public int DaoInsertMessage(final String name, final String message, final String tel, final String email) {//��������
		int row = jdbcTemple.update(sqlinsertmessage, new ParamSeter() {
			
			@Override
			public void setValue(PreparedStatement stmt) {
				try {
					stmt.setString(1, name);
					stmt.setString(2, tel);
					stmt.setString(3, email);
					stmt.setString(4, message);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		});
		return row;
	}
	
	@Override
	public Domain DaoCxDomain(final String name, final String suffix) {//��������
		try {
			jdbcTemple.query(sqlcxdomain, new ParamSeter() {
				
				@Override
				public void setValue(PreparedStatement stmt) {
					try {
						stmt.setString(1, name);
						stmt.setString(2, suffix);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			}, new ResultSeter() {
				
				@Override
				public void handler(ResultSet rs) {
					try {
						while(rs.next()){
							 domain = new Domain();
							 domain.setDamainid(rs.getInt(1));
							 domain.setUserid(rs.getInt(2));
							 domain.setName(rs.getString(3));
							 domain.setSuffix(rs.getString(4));
							 domain.setTime(rs.getString(5));
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			});
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return domain;
	}
	
	@Override
	public int DaoDeleOrder(final int id) {//删除订单
		int row = jdbcTemple.update(sqldeleorder, new ParamSeter() {
			
			@Override
			public void setValue(PreparedStatement stmt) {
				try {
					stmt.setInt(1, id);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		});
		return row;
	}

}
