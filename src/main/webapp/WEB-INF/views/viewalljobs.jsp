<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        :root {
            --primary-color: #2563eb;
            --secondary-color: #1e40af;
            --accent-color: #3b82f6;
            --dark-color: #1e293b;
            --light-color: #f8fafc;
            --card-bg: #ffffff;
            --card-text: #334155;
            --card-border: #e2e8f0;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f1f5f9;
            color: var(--dark-color);
            line-height: 1.6;
        }
        
        .navbar {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .navbar-brand {
            font-weight: 700;
            letter-spacing: 0.5px;
            color: white !important;
            font-size: 1.5rem;
        }
        
        .nav-link {
            color: rgba(255, 255, 255, 0.85) !important;
            font-weight: 500;
            transition: all 0.3s ease;
            padding: 0.5rem 1rem;
            border-radius: 0.375rem;
        }
        
        .nav-link:hover {
            color: white !important;
            background-color: rgba(255, 255, 255, 0.1);
        }
        
        .page-title {
            color: var(--dark-color);
            font-weight: 700;
            margin-bottom: 2rem;
            position: relative;
            padding-bottom: 0.5rem;
            text-align: center;
        }
        
        .page-title:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 4px;
            background: linear-gradient(90deg, var(--primary-color), var(--secondary-color));
            border-radius: 2px;
        }
        
        .job-card {
            border: none;
            border-radius: 0.75rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            transition: all 0.3s ease;
            background-color: var(--card-bg);
            height: 100%;
            overflow: hidden;
            margin-bottom: 1.5rem;
        }
        
        .job-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
        }
        
        .card-header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 1rem 1.5rem;
            border-bottom: none;
        }
        
        .card-title {
            font-weight: 600;
            font-size: 1.25rem;
            margin-bottom: 0.5rem;
        }
        
        .card-body {
            padding: 1.5rem;
            color: var(--card-text);
        }
        
        .job-meta {
            display: flex;
            align-items: center;
            margin-bottom: 0.5rem;
        }
        
        .job-meta i {
            margin-right: 0.5rem;
            color: var(--primary-color);
            width: 20px;
            text-align: center;
        }
        
        .tech-stack {
            display: flex;
            flex-wrap: wrap;
            gap: 0.5rem;
            margin-top: 1rem;
        }
        
        .tech-badge {
            background-color: #e0e7ff;
            color: var(--primary-color);
            padding: 0.25rem 0.75rem;
            border-radius: 9999px;
            font-size: 0.75rem;
            font-weight: 500;
        }
        
        .empty-state {
            text-align: center;
            padding: 3rem;
            color: #64748b;
        }
        
        .empty-state i {
            font-size: 3rem;
            color: #cbd5e1;
            margin-bottom: 1rem;
        }
        
        @media (max-width: 768px) {
            .navbar-brand {
                font-size: 1.25rem;
            }
            
            .page-title {
                font-size: 1.5rem;
            }
            
            .card-body {
                padding: 1rem;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fas fa-briefcase me-2"></i> Jobs
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="home">
                            <i class="fas fa-home me-1"></i> Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="viewalljobs">
                            <i class="fas fa-list me-1"></i> All Jobs
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://telusko.com/">
                            <i class="fas fa-envelope me-1"></i> Contact
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container my-5">
        <h1 class="page-title">Available Job Positions</h1>
        
        <c:choose>
            <c:when test="${not empty jobPosts}">
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
                    <c:forEach var="jobPost" items="${jobPosts}">
                        <div class="col">
                            <div class="job-card">
                                <div class="card-header">
                                    <h5 class="card-title mb-0">
                                        <i class="fas fa-user-tie me-2"></i>${jobPost.postProfile}
                                    </h5>
                                </div>
                                <div class="card-body">
                                    <div class="job-meta">
                                        <i class="fas fa-file-alt"></i>
                                        <span>${jobPost.postDesc}</span>
                                    </div>
                                    
                                    <div class="job-meta">
                                        <i class="fas fa-business-time"></i>
                                        <span>Experience: ${jobPost.reqExperience} years</span>
                                    </div>
                                    
                                    <div class="job-meta">
                                        <i class="fas fa-code"></i>
                                        <span>Technology Stack:</span>
                                    </div>
                                    
                                    <div class="tech-stack">
                                        <c:forEach var="tech" items="${jobPost.postTechStack}">
                                            <span class="tech-badge">${tech}</span>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:when>
            <c:otherwise>
                <div class="empty-state">
                    <i class="far fa-folder-open"></i>
                    <h3>No Job Listings Available</h3>
                    <p>There are currently no job postings. Please check back later.</p>
                </div>
            </c:otherwise>
        </c:choose>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        // Add active class to current nav item
        document.addEventListener('DOMContentLoaded', function() {
            const navLinks = document.querySelectorAll('.nav-link');
            const currentUrl = window.location.pathname.split('/').pop() || 'home';
            
            navLinks.forEach(link => {
                const linkUrl = link.getAttribute('href');
                if (linkUrl === currentUrl) {
                    link.classList.add('active');
                    link.style.color = 'white';
                    link.style.backgroundColor = 'rgba(255, 255, 255, 0.2)';
                }
            });
        });
    </script>
</body>
</html>