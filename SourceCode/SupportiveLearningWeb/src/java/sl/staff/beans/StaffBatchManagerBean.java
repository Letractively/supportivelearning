/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sl.staff.beans;

import el.dao.StaffDAO;
import el.model.Batch;
import el.model.Staff;
import el.model.Subject;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import sl.admincp.beans.SubjectManagerBean;
import sl.client.beans.LoginBean;
import sl.utils.beans.EachSession;
import sl.utils.beans.LoginService;
import sl.utils.beans.SessionManager;
import sl.utils.beans.UtilCheckLoginBean;

/**
 *
 * @author DINH
 */
@ManagedBean
@SessionScoped
public class StaffBatchManagerBean extends UtilCheckLoginBean implements Serializable {

    private ArrayList<Batch> listBatchs;
    //private static String pageRequest = "index.jsf";
    private static final String REDIRECT = "?faces-redirect=true";
    private Staff staff;
    private StaffDAO staffDAO = new StaffDAO();
    private static boolean panelGroupHaveBatchs;
    private static boolean panelGroupHaveNotBatchs;
    private static boolean panelGroupManagerAssignment;
    private String txt1;

    /** Creates a new instance of StaffBatchManagerBean */
    public StaffBatchManagerBean() {
        super();
        panelGroupHaveBatchs = true;
        panelGroupHaveNotBatchs = false;
        FacesContext context = FacesContext.getCurrentInstance();
        HttpServletRequest request = (HttpServletRequest) context.getExternalContext().getRequest();
        if (SessionManager.getSession("accountId") == null) {
            // LoginService.loginService(request.getRequestURI());
        } else {
            try {
                int accountId = Integer.valueOf(SessionManager.getSession("accountId").toString());
                staff = staffDAO.getStaffByAccountId(accountId);
                if (staff.getId() > 0) {
                    loadListBatchs();
                }
            } catch (Exception ex) {
                Logger.getLogger(StaffBatchManagerBean.class.getName()).log(Level.SEVERE, null, ex);
                //   LoginService.loginService("");
            }
        }
    }

    @PostConstruct
    public void init() {
    }
    @ManagedProperty(value = "#{subjectManagerBean}")
    private SubjectManagerBean subjectManagerBean;

    public SubjectManagerBean getSubjectManagerBean() {
        return subjectManagerBean;
    }

    public void setSubjectManagerBean(SubjectManagerBean subjectManagerBean) {
        this.subjectManagerBean = subjectManagerBean;
    }

    public String getTxt1() {
        return txt1;
    }

    public void setTxt1(String txt1) {
        this.txt1 = txt1;
    }

//    public List<String> complete(String query) {
//        List<String> results = new ArrayList<String>();
//
//        for (int i = 0; i < 10; i++) {
//            results.add(query + i);
//        }
//
//        return results;
//    }
    public List<Subject> complete(String query) {
        return subjectManagerBean.getListSubjects();
    }

    public boolean isPanelGroupManagerAssignment() {
        return panelGroupManagerAssignment;
    }

    public void setPanelGroupManagerAssignment(boolean panelGroupManagerAssignment) {
        StaffBatchManagerBean.panelGroupManagerAssignment = panelGroupManagerAssignment;
    }

    public boolean isPanelGroupHaveBatchs() {
        return panelGroupHaveBatchs;
    }

    public void setPanelGroupHaveBatchs(boolean panelGroupHaveBatchs) {
        StaffBatchManagerBean.panelGroupHaveBatchs = panelGroupHaveBatchs;
    }

    public boolean isPanelGroupHaveNotBatchs() {
        return panelGroupHaveNotBatchs;
    }

    public void setPanelGroupHaveNotBatchs(boolean panelGroupHaveNotBatchs) {
        StaffBatchManagerBean.panelGroupHaveNotBatchs = panelGroupHaveNotBatchs;
    }

    public ArrayList<Batch> getListBatchs() {
        return listBatchs;
    }

    public void setListBatchs(ArrayList<Batch> listBatchs) {
        this.listBatchs = listBatchs;
    }

    public Staff getStaff() {
        return staff;
    }

    public void setStaff(Staff staff) {
        this.staff = staff;
    }

    private void loadListBatchs() {
        try {
            if (staff.getId() != 0) {
                this.listBatchs = staffDAO.getListBatchsByStaffId(staff.getId());
                if (listBatchs.isEmpty()) {
                    this.setPanelGroupHaveNotBatchs(true);
                    this.setPanelGroupHaveBatchs(false);
                } else {
                    this.setPanelGroupHaveNotBatchs(false);
                    this.setPanelGroupHaveBatchs(true);
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(StaffBatchManagerBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
