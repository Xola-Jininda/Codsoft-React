<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="My_Portfolio.aspx.cs" Inherits="MyPortfolio.Presentation_Layer.Forms.My_Portfolio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="../Styles/StyleSheet2.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
        <h1>Xola Jininda</h1>
        <p>Entry-Level Software Developer</p>
    </header>
    
    <div class="container">
        <section id="about">
            <h2>About Me</h2>
            <img src="../Images/myPic.jpg" alt="John Doe" class="profile-image"/>
            <p>Hi! I am Xola Jininda, a passionate software developer with a love for coding and problem-solving. I have experience in ASP.NET, C#, and front-end development.</p>
        </section>
        
        <section id="skills">
            <h2>Skills</h2>
            <ul>
                <li>ASP.NET</li>
                <li>C#</li>
                <li>HTML & CSS</li>
                <li>JavaScript</li>
                <li>SQL</li>
            </ul>
        </section>
        
        <section id="projects">
            <h2>Projects</h2>
            <div class="project">
                <h5>Project One</h5>
                <img src="../Images/Screenshot%202024-03-26%20095706.png" alt="Project One"/>
                <p>Donation System, people donate items, receipients create accounts and order items they want. Admins can manage orders, donations and orders, they can also produce reports. For items that are not collected, admins can schedule them for waste collection companies to order and come collect them, companies need to create accounts too in order to proceed. The systems in easy to use with intuitive design and clear design, offering great user experience (UX). </p>
            </div>
            <div class="project">
                <h3>Project Two</h3>
                <img src="../Images/libraryManager.png"" alt="Project Two"/>
                <p>Library Management System, admins can login and manage hand-in/hand-out of books. Keep track of students who haven't returned books. System also allows admins(staff) to add/delete new books and students.</p>
            </div>
        </section>
        
        <section id="resume">
            <h2>Resume</h2>
            <a href="Xola%20Jininda%20CV.pdf" download>Download My Resume</a>
        </section>
        
        <section id="contact">
            <h2>Contact</h2>
            <p>Email: <a href="mailto:nimthandex@gmail.com">nimthandex@gmail.com</a></p>
            <p>Phone: (073) 729-1300</p>
        </section>
    </div>
    
    <footer>
        <p>&copy; 2024 Xola Jininda. All rights reserved.</p>
    </footer>
        <br />
        <br />

    </form>
</body>
</html>
