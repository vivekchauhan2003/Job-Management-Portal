<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Portal</title>
    
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
            --success-color: #10b981;
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
            font-size: 1.75rem;
        }
        
        .nav-link {
            color: rgba(255, 255, 255, 0.85) !important;
            font-weight: 500;
            transition: all 0.3s ease;
            padding: 0.5rem 1rem;
            border-radius: 0.375rem;
            font-size: 1.1rem;
        }
        
        .nav-link:hover {
            color: white !important;
            background-color: rgba(255, 255, 255, 0.1);
        }
        
        .action-card {
            border: none;
            border-radius: 0.75rem;
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            background-color: white;
            height: 100%;
            display: flex;
            flex-direction: column;
            overflow: hidden;
        }
        
        .action-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1);
        }
        
        .card-body {
            padding: 2.5rem;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            flex-grow: 1;
        }
        
        .action-icon {
            font-size: 3rem;
            margin-bottom: 1.5rem;
            color: var(--primary-color);
        }
        
        .action-btn {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            border: none;
            padding: 0.75rem 2rem;
            font-weight: 600;
            letter-spacing: 0.5px;
            transition: all 0.3s ease;
            border-radius: 0.5rem;
            font-size: 1.1rem;
            width: auto;
            margin-top: 1rem;
        }
        
        .action-btn:hover {
            background: linear-gradient(135deg, var(--secondary-color), var(--primary-color));
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .card-title {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 1rem;
            color: var(--dark-color);
            text-align: center;
        }
        
        .card-text {
            color: #64748b;
            text-align: center;
            margin-bottom: 1.5rem;
        }
        
        @media (max-width: 768px) {
            .navbar-brand {
                font-size: 1.5rem;
            }
            
            .card-body {
                padding: 1.5rem;
            }
            
            .action-icon {
                font-size: 2.5rem;
            }
            
            .card-title {
                font-size: 1.3rem;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fas fa-briefcase me-2"></i> JobPortal Pro
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
                        <a class="nav-link" href="viewalljobs">
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
        <div class="row g-4">
            <!-- View Jobs Card -->
            <div class="col-lg-6">
                <div class="action-card">
                    <div class="card-body">
                        <i class="fas fa-search action-icon"></i>
                        <h3 class="card-title">Browse Available Jobs</h3>
                        <p class="card-text">
                            Explore our extensive database of job listings from top companies across various industries.
                        </p>
                        <a href="/viewalljobs" class="btn action-btn">
                            <i class="fas fa-arrow-right me-2"></i>View All Jobs
                        </a>
                    </div>
                </div>
            </div>
            
            <!-- Add Job Card -->
            <div class="col-lg-6">
                <div class="action-card">
                    <div class="card-body">
                        <i class="fas fa-plus-circle action-icon"></i>
                        <h3 class="card-title">Post a New Job</h3>
                        <p class="card-text">
                            Add your job listing to our platform and connect with qualified candidates.
                        </p>
                        <a href="/addjob" class="btn action-btn">
                            <i class="fas fa-arrow-right me-2"></i>Add New Job
                        </a>
                    </div>
                </div>
            </div>
        </div>
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