package Test;

import com.ly.pojo.User;
import com.ly.utils.MyBatisUtils;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

public class UserTest {
    @Test
    //查询 id=2 的课程信息
    public void findByIdTest() {

        SqlSession session = MyBatisUtils.getSession();
        User user = session.selectOne("mapper.UserMapper.findById", 2);
        System.out.println(user);
        session.commit();
        // 关闭SqlSession
        session.close();
    }

    @Test
    //查询出所有计算机学院开设的课程信息
    public void findBySid() {

        SqlSession session = MyBatisUtils.getSession();
        List<Object> user =
                session.selectList("mapper.UserMapper.findBySid", 1);
        for(Object o : user){
            System.out.println(o);
        }
        session.commit();
        // 关闭SqlSession
        session.close();
    }

    @Test
//修改id=4的课时数
    public void updateCourse() {
        SqlSession session = MyBatisUtils.getSession();
        User user=session.selectOne("mapper.UserMapper.findById", 4);

        user.setHours(40);
        int result =session.update("mapper.UserMapper.updateCourse", user);

        System.out.println(user);
        session.commit();

        session.close();
    }


    @Test
    //插入一条课程记录
    public void addCourse() {

        SqlSession session = MyBatisUtils.getSession();
        User user= new User();
        user.setId(5);
        user.setName("大数据存储");
        user.setHours(32);
        user.setSid(1);
        int result =
                session.insert("mapper.UserMapper.addCourse",user);
        if (result > 0) {
            System.out.println("成功插入" + result + "条数据");
        } else {
            System.out.println("插入失败");
        }
        System.out.println(user);
        session.commit();

        session.close();
    }

    @Test
    //输出所有的学院开设的课程信息
    public void findAllTest() {

        SqlSession session = MyBatisUtils.getSession();
        List<Object> user=
                session.selectList("mapper.UserMapper.findAll");
        for(Object o : user){
            System.out.println(o);
        }
        session.commit();
        // 关闭SqlSession
        session.close();
    }}






