package com.marketingappdb.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.marketingappdb.entities.Lead;
import com.marketingappdb.service.LeadService;

@Controller
public class LeadController {
	
	@Autowired
	private LeadService leadService;
	
	@RequestMapping("/createlead")
	public String viewCreateLeadPage()
	{
		return "create_new_lead";
	}
	
	@RequestMapping("/savelead")
	public String saveOneLead(@ModelAttribute("lead") Lead lead,ModelMap model)
	{
		leadService.saveLead(lead);
		model.addAttribute("saveMsg", "Record is saved!!");
		return "create_new_lead";
	}
	
	@RequestMapping("/listleads")
	public String getAllLeads(ModelMap model)
	{
		List<Lead> leads = leadService.listAll();
		model.addAttribute("leads", leads);
		return "search_result";
	}
	
	@RequestMapping("/delete")
	public String deleteOneLead(@RequestParam("id") long id,ModelMap model)
	{
		leadService.deleteLeadById(id);
		
		List<Lead> leads = leadService.listAll();
		model.addAttribute("leads", leads);
		return "search_result";
	}
	
	@RequestMapping("/update")
	public String updateOneLead(@RequestParam("id") long id,ModelMap model)
	{
		Lead lead = leadService.findOneLeadById(id);
		if(lead!=null)
		{
			model.addAttribute("lead", lead);
			return "update_lead";
		}else {
			model.addAttribute("error", "No record found");
			return "error_page";
		}
	}
}
