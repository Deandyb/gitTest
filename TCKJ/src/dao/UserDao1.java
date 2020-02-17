package dao;

import java.util.List;

import entity.Domain;
import entity.Goods1;
import entity.Goods2;
import entity.Goods3;
import entity.Goods4;
import entity.Message;
import entity.Order;
import entity.User;

public interface UserDao1 {
	public abstract User DaoDl(String name,String password);//��¼
	public abstract User DaoCx(String name);//��֤�û����Ƿ����
	public abstract int DaoRegister(String name,String password,String tel,String email);//ע��
	public abstract List<Goods1> DaoGoods1();//��Ʒ��Ϣ
	public abstract List<Goods2> DaoGoods2();//��Ʒ��Ϣ
	public abstract List<Goods3> DaoGoods3();//��Ʒ��Ϣ
	public abstract List<Goods4> DaoGoods4();//��Ʒ��Ϣ
	public abstract int DaoOrder(int userid,String goodsname,String price);//����
	public abstract int DaoOrder1(int userid,String username,String tel,String email,String address,String goodsname,String price);//����
	public abstract List<Order> DaoOrderMessage(int userid);//��ʾ������Ϣ
	public abstract int DaoPassword(int userid,String password);//�޸�����
	public abstract int DaoRegisterDomain(int userid,String name,String suffix);//ע������
	public abstract List<Domain> SeleDaoDomain();//����ע���б�
	public abstract List<Order> SeleOrder();//�����б�
	public abstract List<Message> SeleMessage();//�����б�
	public abstract List<User> SeleUser();//�û��б�
	public abstract int DaoDeleDomain(int id);//ɾ������
	public abstract int DaoInsertMessage(String name,String message,String tel,String email);//��������
	public abstract Domain DaoCxDomain(String name,String suffix);//��֤�������Ƿ����
	public abstract int DaoDeleOrder(int id);//删除订单
}
