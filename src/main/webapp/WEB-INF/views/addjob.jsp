<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Portal</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
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
        
        .card {
            border: none;
            border-radius: 0.75rem;
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            background-color: white;
        }
        
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
        }
        
        .card-header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 1.5rem;
            border-bottom: none;
        }
        
        .form-label {
            font-weight: 600;
            color: var(--dark-color);
            margin-bottom: 0.5rem;
        }
        
        .form-control, .form-select {
            border: 1px solid #d1d5db;
            border-radius: 0.5rem;
            padding: 0.75rem 1rem;
            transition: all 0.3s ease;
        }
        
        .form-control:focus, .form-select:focus {
            border-color: var(--accent-color);
            box-shadow: 0 0 0 0.25rem rgba(59, 130, 246, 0.25);
        }
        
        .btn-primary {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            border: none;
            padding: 0.75rem 1.5rem;
            font-weight: 600;
            letter-spacing: 0.5px;
            text-transform: uppercase;
            transition: all 0.3s ease;
            width: 100%;
            border-radius: 0.5rem;
        }
        
        .btn-primary:hover {
            background: linear-gradient(135deg, var(--secondary-color), var(--primary-color));
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .tech-stack-container {
            max-height: 200px;
            overflow-y: auto;
            border: 1px solid #d1d5db;
            border-radius: 0.5rem;
            padding: 0.5rem;
        }
        
        .tech-stack-container option {
            padding: 0.5rem 1rem;
            border-radius: 0.375rem;
            margin: 0.25rem 0;
            transition: all 0.2s ease;
        }
        
        .tech-stack-container option:hover {
            background-color: var(--accent-color);
            color: white;
        }
        
        @media (max-width: 768px) {
            .navbar-brand {
                font-size: 1.25rem;
            }
            
            .card {
                margin: 0 1rem;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fas fa-briefcase me-2"></i>JobPortal Pro
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="home"><i class="fas fa-home me-1"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewalljobs"><i class="fas fa-list me-1"></i> All Jobs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://telusko.com/"><i class="fas fa-envelope me-1"></i> Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header text-center">
                        <h2 class="mb-0"><i class="fas fa-plus-circle me-2"></i>Post a New Job</h2>
                    </div>
                    <div class="card-body p-4">
                        <form action="handleForm" method="post">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="postId" class="form-label">
                                            <i class="fas fa-id-card me-2"></i>Post ID
                                        </label>
                                        <input type="text" class="form-control" id="postId" name="postId" required>
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="postProfile" class="form-label">
                                            <i class="fas fa-user-tie me-2"></i>Post Profile
                                        </label>
                                        <input type="text" class="form-control" id="postProfile" name="postProfile" required>
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <div class="mb-3">
                                        <label for="postDesc" class="form-label">
                                            <i class="fas fa-align-left me-2"></i>Post Description
                                        </label>
                                        <textarea class="form-control" id="postDesc" name="postDesc" rows="3" required></textarea>
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="reqExperience" class="form-label">
                                            <i class="fas fa-business-time me-2"></i>Required Experience (years)
                                        </label>
                                        <input type="number" class="form-control" id="reqExperience" name="reqExperience" min="0" required>
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="postTechStack" class="form-label">
                                            <i class="fas fa-code me-2"></i>Tech Stack (Select multiple)
                                        </label>
                                        <div class="tech-stack-container">
                                            <select multiple class="form-select" id="postTechStack" name="postTechStack" required>
                                                <option value="Java">Java</option>
                                                <option value="JavaScript">JavaScript</option>
                                                <option value="Python">Python</option>
                                                <option value="C++">C++</option>
                                                <option value="C#">C#</option>
                                                <option value="Ruby">Ruby</option>
                                                <option value="Swift">Swift</option>
                                                <option value="TypeScript">TypeScript</option>
                                                <option value="Go">Go</option>
                                                <option value="Kotlin">Kotlin</option>
                                                <option value="Rust">Rust</option>
                                                <option value="PHP">PHP</option>
                                                <option value="HTML5">HTML5</option>
                                                <option value="CSS3">CSS3</option>
                                                <option value="React">React</option>
                                                <option value="Angular">Angular</option>
                                                <option value="Vue.js">Vue.js</option>
                                                <option value="Node.js">Node.js</option>
                                                <option value="Express.js">Express.js</option>
                                                <option value="Django">Django</option>
                                                <option value="Flask">Flask</option>
                                                <option value="Ruby on Rails">Ruby on Rails</option>
                                                <option value="Laravel">Laravel</option>
                                                <option value="Spring Boot">Spring Boot</option>
                                                <option value="TensorFlow">TensorFlow</option>
                                                <option value="PyTorch">PyTorch</option>
                                                <option value="Kubernetes">Kubernetes</option>
                                                <option value="Docker">Docker</option>
                                                <option value="AWS">AWS</option>
                                                <option value="Azure">Azure</option>
                                                <option value="Google Cloud">Google Cloud</option>
                                                <option value="SQL">SQL</option>
                                                <option value="MongoDB">MongoDB</option>
                                                <option value="PostgreSQL">PostgreSQL</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-12 mt-4">
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fas fa-paper-plane me-2"></i>Submit Job Posting
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
            
            // Enhance multiple select
            const techStackSelect = document.getElementById('postTechStack');
            if (techStackSelect) {
                techStackSelect.addEventListener('focus', function() {
                    this.size = 6; // Show 6 options when focused
                });
                
                techStackSelect.addEventListener('blur', function() {
                    this.size = 1;
                });
            }
        });
    </script>
</body>
</html>