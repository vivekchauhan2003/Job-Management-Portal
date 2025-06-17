<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.JobManagementPortal.model.JobPost" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post Details</title>

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

        .card {
            border: none;
            border-radius: 0.75rem;
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
            background-color: var(--card-bg);
            padding: 2rem;
            color: var(--card-text);
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 1rem;
            color: var(--primary-color);
        }

        .card-text strong {
            color: var(--secondary-color);
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
            font-size: 0.8rem;
            font-weight: 500;
        }

        @media (max-width: 768px) {
            .navbar-brand {
                font-size: 1.25rem;
            }
            .page-title {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>

<%
    JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
%>

<nav class="navbar navbar-expand-lg navbar-dark sticky-top">
    <div class="container">
        <a class="navbar-brand" href="#"><i class="fas fa-briefcase me-2"></i>Telusko Jobs</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="https://telusko.com/">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container my-5">
    <h1 class="page-title">Job Post Details</h1>
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
            <div class="card">
                <h5 class="card-title"><%= myJobPost.getPostProfile() %></h5>
                <p class="card-text">
                    <strong>Description:</strong> <%= myJobPost.getPostDesc() %>
                </p>
                <p class="card-text">
                    <strong>Experience Required:</strong> <%= myJobPost.getReqExperience() %> years
                </p>
                <p class="card-text">
                    <strong>Technology Stack:</strong>
                    <div class="tech-stack">
                        <% for (String tech : myJobPost.getPostTechStack()) { %>
                            <span class="tech-badge"><%= tech %></span>
                        <% } %>
                    </div>
                </p>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
