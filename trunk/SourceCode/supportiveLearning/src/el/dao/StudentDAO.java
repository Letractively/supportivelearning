/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package el.dao;

import el.model.Clazz;
import el.model.Role;
import el.model.Student;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author DINHDV
 */
public class StudentDAO extends AbstractDAO<Student> {

    //private SchoolData schoolData = new SchoolData();
    public StudentDAO() {

        SchoolData.getListStudents();
    }

    @Override
    public boolean insert(Student student) throws Exception {
        String sql = "{call Ins_Student (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
        Connection conn = null;
        int a = 0;
        try {
            conn = getConnection();
            CallableStatement stmt = conn.prepareCall(sql);
            stmt.setInt(1, student.getClazz().getId());
            stmt.setInt(2, student.getCourse().getId());
            stmt.setString(3, student.getName());
            stmt.setString(4, student.getAddress());
            stmt.setString(5, student.getEmail());
            stmt.setString(6, student.getPhone());
            stmt.setString(7, student.getUserName());
            stmt.setString(8, student.getPassword());
            stmt.setDate(9, (Date) student.getBirthDay());
            stmt.setBoolean(10, student.getGender());
            stmt.setDate(11, (Date) student.getDateCreate());
            a = stmt.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return a == 1 ? true : false;
    }

    @Override
    public boolean update(Student student) throws Exception {
        String sql = "{call Udp_StudentById (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
        Connection conn = null;
        int a = 0;
        try {
            conn = getConnection();
            CallableStatement stmt = conn.prepareCall(sql);
            stmt.setInt(1, student.getId());
            stmt.setInt(2, student.getClazz().getId());
            stmt.setInt(3, student.getCourse().getId());
            stmt.setString(4, student.getName());
            stmt.setString(5, student.getAddress());
            stmt.setString(6, student.getEmail());
            stmt.setString(7, student.getPhone());
            stmt.setString(8, student.getUserName());
            stmt.setString(9, student.getPassword());
            stmt.setDate(10, (Date) student.getBirthDay());
            stmt.setBoolean(11, student.getGender());
            stmt.setDate(12, (Date) student.getDateCreate());
            a = stmt.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return a == 1 ? true : false;
    }

    @Override
    public boolean delete(Student student) throws Exception {
        String sql = "{call Del_StudentById (?)}";
        Connection conn = null;
        int a = 0;
        try {
            conn = getConnection();
            CallableStatement stmt = conn.prepareCall(sql);
            stmt.setInt(1, student.getId());
            a = stmt.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return a == 1 ? true : false;
    }

    @Override
    public ArrayList<Student> list() throws Exception {
        ArrayList<Student> students = new ArrayList<Student>();
        Connection conn = null;
        String sql = "Sel_Students";
        try {
            conn = getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rsstudents = stmt.executeQuery(sql);
            while (rsstudents.next()) {
                RoleDAO roleDAO = new RoleDAO();
                Role role = roleDAO.getRoleById(rsstudents.getInt("RoleId"));
                ClazzDAO clazzDAO = new ClazzDAO();
                Clazz clazz = clazzDAO.getClazzById(rsstudents.getInt("ClazzId"));
                Student student = new Student();
                student.setId(rsstudents.getInt("StudentId"));
                student.setName(rsstudents.getString("FullName"));
                student.setUserName(rsstudents.getString("UserName"));
                student.setPassword(rsstudents.getString("Password"));
                student.setDateCreate(rsstudents.getDate("DateCreation"));
                student.setRole(role);
                student.setClazz(clazz);
                student.setBirthDay(rsstudents.getDate("BirthDay"));
                student.setGender(rsstudents.getBoolean("Gender"));
                student.setPhone(rsstudents.getString("Phone"));
                student.setEmail(rsstudents.getString("Email"));
                student.setAddress(rsstudents.getString("Address"));

                students.add(student);

            }
        } finally {
            if (conn != null) {
                conn.close();
            }
        }

        return students;
    }

    public Student getStudentById(Student s) throws Exception {
        Student student = new Student();
        Connection conn = null;
        String sql = "{call Sel_StudentById (?)}";
        CallableStatement cstmt = null;
        try {
            conn = getConnection();
            cstmt.setInt(1, s.getId());
            cstmt = conn.prepareCall(sql);
            ResultSet rsstudents = cstmt.executeQuery(sql);
            while (rsstudents.next()) {
                RoleDAO roleDAO = new RoleDAO();
                Role role = roleDAO.getRoleById(rsstudents.getInt("RoleId"));
                ClazzDAO clazzDAO = new ClazzDAO();
                Clazz clazz = clazzDAO.getClazzById(rsstudents.getInt("ClazzId"));
                student.setId(rsstudents.getInt("StudentId"));
                student.setName(rsstudents.getString("FullName"));
                student.setUserName(rsstudents.getString("UserName"));
                student.setPassword(rsstudents.getString("Password"));
                student.setDateCreate(rsstudents.getDate("DateCreation"));
                student.setRole(role);
                student.setClazz(clazz);
                student.setBirthDay(rsstudents.getDate("BirthDay"));
                student.setGender(rsstudents.getBoolean("Gender"));
                student.setPhone(rsstudents.getString("Phone"));
                student.setEmail(rsstudents.getString("Email"));
                student.setAddress(rsstudents.getString("Address"));
            }
        } finally {
            if (conn != null) {
                conn.close();
            }
        }

        return student;
    }
}