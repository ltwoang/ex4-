package com.javaweb.controller.admin;



import com.javaweb.model.dto.BuildingDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import com.javaweb.model.response.BuildingSearchResponse;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller(value="buildingControllerOfAdmin")
public class BuildingController {
    @GetMapping("/admin/building-list")
    public ModelAndView buildingList(@ModelAttribute BuildingDTO buildingDTO, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/list");
        mav.addObject("modelSearch", buildingDTO);
        // Xuong DB - Lay Data ok roi
        List<BuildingSearchResponse> responseList = new ArrayList<>();
        BuildingSearchResponse item1 = new BuildingSearchResponse();
        item1.setName("ACM Building");
        item1.setAddress("130 Quang Trung, Pham Ngu Lao, Quan 1");
        item1.setNumberOfBasement(2L);
        item1.setManagerName("Anh Long");
        item1.setManagerPhone("0900000001");

        BuildingSearchResponse item2 = new BuildingSearchResponse();
        item2.setName("Building MA");
        item2.setAddress("Nguyen Hue, Tan Mai, Quan 3");
        item2.setNumberOfBasement(3L);
        item2.setManagerName("Anh Hai");
        item2.setManagerPhone("0900000002");

        responseList.add(item1);
        responseList.add(item2);

        mav.addObject("buildingList", responseList);
        return mav;
    }
    @GetMapping("/admin/building-edit")
    public ModelAndView buildingEdit(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/edit");
        return mav;
    }

}
