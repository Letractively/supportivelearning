/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sl.client.beans;

import el.dao.StudentWorkDAO;
import el.model.Student;
import el.model.StudentWork;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import com.lowagie.text.BadElementException;
import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Image;
import com.lowagie.text.PageSize;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.faces.application.FacesMessage;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.servlet.ServletContext;
import org.primefaces.event.FileUploadEvent;

/**
 *
 * @author DINHDV
 */
@ManagedBean
@SessionScoped
public class StudentWorkBean implements Serializable {

    private Student student = new Student();
    private StudentWork studentWork = new StudentWork();
    private ArrayList<StudentWork> listStudentWorksOfStudent = new ArrayList<StudentWork>();
    private ArrayList<StudentWork> listMarks;
    private StudentWorkDAO studentWorkDAO = new StudentWorkDAO();

    /** Creates a new instance of StudentWorkBean */
    public StudentWorkBean() {
        loadStudentWorks();
    }

    public ArrayList<StudentWork> getListStudentWorksOfStudent() {
        return listStudentWorksOfStudent;
    }

    public void setListStudentWorksOfStudent(ArrayList<StudentWork> listStudentWorksOfStudent) {
        this.listStudentWorksOfStudent = listStudentWorksOfStudent;
    }

    public StudentWork getStudentWork() {
        return studentWork;
    }

    public void setStudentWork(StudentWork studentWork) {
        this.studentWork = studentWork;
    }

    public ArrayList<StudentWork> getListMarks() {
        return listMarks;
    }

    public void setListMarks(ArrayList<StudentWork> listMarks) {
        this.listMarks = listMarks;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    private void loadStudentWorks() {
        try {
            listStudentWorksOfStudent = studentWorkDAO.list();
        } catch (Exception ex) {
            Logger.getLogger(StudentWorkBean.class.getName()).log(Level.SEVERE, null, ex);
            listStudentWorksOfStudent = null;
        }
    }

    public void loadMarks(ActionEvent event) {
        try {
            this.listMarks = studentWorkDAO.listStudentWorkByRollNumber(student.getRollNumber());
        } catch (Exception ex) {
            Logger.getLogger(StudentWorkBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void postProcessXLS(Object document) {
        HSSFWorkbook wb = (HSSFWorkbook) document;
        HSSFSheet sheet = wb.getSheetAt(0);
        HSSFRow header = sheet.getRow(0);

        HSSFCellStyle cellStyle = wb.createCellStyle();
        cellStyle.setFillForegroundColor(HSSFColor.GREEN.index);
        cellStyle.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);

        for (int i = 0; i < header.getPhysicalNumberOfCells(); i++) {
            HSSFCell cell = header.getCell(i);

            cell.setCellStyle(cellStyle);
        }
    }

    public void preProcessPDF(Object document) throws IOException, BadElementException, DocumentException {
        Document pdf = (Document) document;
        pdf.open();
        pdf.setPageSize(PageSize.A4);

        ServletContext servletContext = (ServletContext) FacesContext.getCurrentInstance().getExternalContext().getContext();
        String logo = servletContext.getRealPath("") + File.separator + "images" + File.separator + "prime_logo.png";

        pdf.add(Image.getInstance(logo));
    }
    private static final int BUFFER_SIZE = 1024;

    /** Creates a new instance of FileUploadController */
    public void handleFileUpload(FileUploadEvent event) {
        ExternalContext extContext = FacesContext.getCurrentInstance().getExternalContext();
        File result = new File(extContext.getRealPath("/documents/assignmentFiles") + "//" + event.getFile().getFileName());
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(result);
            byte[] buffer = new byte[BUFFER_SIZE];
            int bulk;
            InputStream inputStream = event.getFile().getInputstream();
            while (true) {
                bulk = inputStream.read(buffer);
                if (bulk < 0) {
                    break;
                }
                fileOutputStream.write(buffer, 0, bulk);
                fileOutputStream.flush();
            }
            fileOutputStream.close();
            inputStream.close();
            FacesMessage msg = new FacesMessage("Succesful",
                    event.getFile().getFileName() + " is uploaded.");
            FacesContext.getCurrentInstance().addMessage(null, msg);
        } catch (IOException e) {
            e.printStackTrace();
            FacesMessage error = new FacesMessage("The files were not uploaded!");
            FacesContext.getCurrentInstance().addMessage(null, error);
        }
    }
}
