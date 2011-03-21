/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sl.staff.beans;

import el.dao.FeedBackAnswerDAO;
import el.dao.FeedBackDAO;
import el.model.FeedBack;
import el.model.FeedBackAnswer;
import el.model.Staff;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import sl.utils.beans.EachSession;

/**
 *
 * @author DINHDV
 */
@ManagedBean
@SessionScoped
public class FeedBackAnswerManagerBean implements Serializable {

    private FeedBack selectedFeedBack;
    private FeedBackAnswer feedBackAnswer;
    private FeedBackAnswerDAO feedBackAnswerDAO = new FeedBackAnswerDAO();
    private ArrayList<FeedBack> listFeedBacks;
    private FeedBackDAO feedBackDAO = new FeedBackDAO();
    private Staff currentStaff;

    /** Creates a new instance of FeedBackAnswerManagerBean */
    public FeedBackAnswerManagerBean() {
        loadListFeedBacks();
    }

    public FeedBackAnswer getFeedBackAnswer() {
        return feedBackAnswer;
    }

    public void setFeedBackAnswer(FeedBackAnswer feedBackAnswer) {
        this.feedBackAnswer = feedBackAnswer;
    }

    public FeedBack getSelectedFeedBack() {
        return selectedFeedBack;
    }

    public void setSelectedFeedBack(FeedBack selectedFeedBack) {
        this.selectedFeedBack = selectedFeedBack;
    }

    public ArrayList<FeedBack> getListFeedBacks() {
        return listFeedBacks;
    }

    public void setListFeedBacks(ArrayList<FeedBack> listFeedBacks) {
        this.listFeedBacks = listFeedBacks;
    }

    public Staff getCurrentStaff() {
        return currentStaff;
    }

    public void setCurrentStaff(Staff currentStaff) {
        this.currentStaff = currentStaff;
    }

    public void onRequestFeedBack(FeedBack feedBack) {
        this.selectedFeedBack = feedBack;
    }

    private void loadListFeedBacks() {
        try {
            this.listFeedBacks = feedBackDAO.list();
        } catch (Exception ex) {
            Logger.getLogger(FeedBackAnswerManagerBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String insertFeedBackAnswer() {
        try {
            feedBackAnswer.setStaff(getStaff());
            feedBackAnswer.setFeedBack(selectedFeedBack);
            feedBackAnswerDAO.insert(feedBackAnswer);
            return "messages";
        } catch (Exception ex) {
            Logger.getLogger(FeedBackAnswerManagerBean.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }

    }

    private Staff getStaff() {
        try {
            Object object = EachSession.getObjectFromSession("accountId");
            if (object != null) {
                if (object != null) {
                    if (object instanceof Staff) {
                        return currentStaff = (Staff) object;
                    }
                }
            }
            return null;
        } catch (Exception ex) {
            Logger.getLogger(FeedBackAnswerManagerBean.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}