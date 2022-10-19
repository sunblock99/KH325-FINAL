package com.kh.tour.travelMap.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.tour.tour.model.vo.Tour;
import com.kh.tour.travelMap.model.service.TravelMapService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@RequestMapping("/map") // 요청 url의 '/board'가 생략되서 사용할수 있다. view는 안먹힌다!!
@Controller
public class TravelMapController {

	@Autowired
	private TravelMapService service;
	
	
	@GetMapping("/travelMap")
	public String list(Model model, @RequestParam Map<String, String> param) {
		log.info("param : " + param.toString());
		
		List<Tour> list = service.getTravelMapList(param);
		
		model.addAttribute("list",list);
		model.addAttribute("param",param);
		return "/map/travelMap";
	}
	
	@GetMapping("/error")
	public String error() {
		log.info("에러 페이지 호출!!");
		return "/common/error.jsp";
	}
}