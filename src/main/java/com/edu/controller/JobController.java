package com.edu.controller;

import java.util.HashMap;
import java.util.List;

import com.edu.entities.Job;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.edu.service.JobService;

@Controller
public class JobController {
    @Autowired
    private JobService jobService;

    @RequestMapping(value = "JobManagement")
    public String returnJobPage() {
        return "JobManagement";
    }

    @RequestMapping(value = "/showAddJob")
    public String returnAddPage(Model model) {
        Job job = new Job();
        model.addAttribute("job",job);
        return "addJob";
    }

    @RequestMapping(value = "/showJob", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody
    List<HashMap<String, String>> getJob(@RequestParam(name = "jobId") int id) {
        List<HashMap<String, String>> getJob = jobService.getJob(id);
        return getJob;
    }

    @RequestMapping(value = "/updateJob", method = RequestMethod.POST, produces = {MediaType.APPLICATION_JSON_VALUE})
    public @ResponseBody
    void update(@RequestParam int jobId, @RequestParam String jobName, @RequestParam String company) {
        jobService.updateJob(jobId, jobName, company);
    }

    @GetMapping(value = "/listJob", produces = {MediaType.APPLICATION_JSON_VALUE})
    public @ResponseBody
    List<Job> getAllJob() {
        return jobService.getJobs();
    }

    @PostMapping("/addJob")
    public String addJob(@ModelAttribute("job")Job job){
        jobService.saveJob(job);
        return "redirect:/JobManagement";
    }
    @GetMapping("/deleteJob")
    public String deleteJob(@RequestParam("id") int id){
        jobService.deleteJob(id);
        return "redirect:/JobManagement";
    }

}
