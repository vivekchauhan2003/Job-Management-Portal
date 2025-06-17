package com.example.JobManagementPortal.repository;

import com.example.JobManagementPortal.model.JobPost;
import org.springframework.stereotype.Repository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@Repository
public class JobRepo {

    private static final Logger logger = LoggerFactory.getLogger(JobRepo.class);

    // Thread-safe list to store JobPost objects
    private final List<JobPost> jobs = Collections.synchronizedList(new ArrayList<>(Arrays.asList(
            new JobPost(1, "Java Developer", "Must have good experience in core Java and advanced Java", 2,
                    List.of("Core Java", "J2EE", "Spring Boot", "Hibernate")),

            new JobPost(2, "Frontend Developer", "Experience in building responsive web applications using React", 3,
                    List.of("HTML", "CSS", "JavaScript", "React")),

            new JobPost(3, "Data Scientist", "Strong background in machine learning and data analysis", 4,
                    List.of("Python", "Machine Learning", "Data Analysis")),

            new JobPost(4, "Network Engineer", "Design and implement computer networks for efficient data communication", 5,
                    List.of("Networking", "Cisco", "Routing", "Switching")),

            new JobPost(5, "Mobile App Developer", "Experience in mobile app development for iOS and Android", 3,
                    List.of("iOS Development", "Android Development", "Mobile App"))
    )));

    // Method to return all JobPosts
    public List<JobPost> getAllJobs() {
        return new ArrayList<>(jobs); // Return a copy to avoid external modification
    }

    // Method to save a job post object into the list
    public void addJob(JobPost job) {
        jobs.add(job);
        System.out.println(jobs);
        logger.info("Job added: {}", job);
    }
}
