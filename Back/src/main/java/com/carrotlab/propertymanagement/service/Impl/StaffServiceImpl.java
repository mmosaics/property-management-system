package com.carrotlab.propertymanagement.service.Impl;

import com.carrotlab.propertymanagement.dao.StaffDAO;
import com.carrotlab.propertymanagement.model.Staff;
import com.carrotlab.propertymanagement.service.StaffService;
import com.carrotlab.propertymanagement.util.NavigatePage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class StaffServiceImpl implements StaffService {

    private StaffDAO staffDAO;

    @Autowired
    public StaffServiceImpl(StaffDAO staffDAO) {
        this.staffDAO = staffDAO;
    }

    @Override
    public NavigatePage<Staff> list(int start, int size, int navigatePageNum) {
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        Pageable pageable = new PageRequest(start, size, sort);
        Page<Staff> page = staffDAO.findAll(pageable);

        return new NavigatePage<>(page, navigatePageNum);
    }

    @Override
    public Staff get(int id) {
        return  staffDAO.findOne(id);
    }

    @Override
    public void update(Staff staff) {
        staffDAO.save(staff);
    }

    @Override
    public void add(Staff staff) {
        staffDAO.save(staff);
    }

    @Override
    public void delete(int id) {
        staffDAO.delete(id);
    }
}
