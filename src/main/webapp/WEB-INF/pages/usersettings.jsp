<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 

</head>
<body>

<div class="profile-container">
  <!-- Sidebar -->
  <aside class="profile-sidebar">
    <div class="profile-pic"></div>
    <h2>Name Surname</h2>
    <p class="member-since">MEMBER SINCE 2025</p>

    <nav class="profile-nav">
      <a href="${pageContext.request.contextPath}/pages/userprofile.jsp"><span>👤</span> Personal Info</a>
      <a href="${pageContext.request.contextPath}/pages/userbookinghistory.jsp"><span>⏰</span> Booking History</a>
      <a href="${pageContext.request.contextPath}/pages/usersettings.jsp"><span>⚙️</span> Settings</a>
      <a href="${pageContext.request.contextPath}/pages/login.jsp"><span>📕</span> Logout</a>
    </nav>
  </aside>
<!-- Main content -->
  <section class="profile-main">
    <div class="container">
        <h1>Change Personal Information</h1>
        
        <div class="form-card">
            <form>
                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">Name</label>
                        <div class="form-control-wrapper">
                            <input type="text" class="form-control" value="Name Surname">
                            <button type="button" class="clear-button">×</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-label">username</label>
                        <div class="form-control-wrapper">
                            <input type="text" class="form-control" value="username">
                            <button type="button" class="clear-button">×</button>
                        </div>
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">Phone Number</label>
                        <div class="form-control-wrapper">
                            <input type="tel" class="form-control" value="9802838383">
                            <button type="button" class="clear-button">×</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Address</label>
                        <div class="form-control-wrapper">
                            <input type="text" class="form-control" value="Kathmandu">
                            <button type="button" class="clear-button">×</button>
                        </div>
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">Age</label>
                        <div class="form-control-wrapper">
                            <input type="number" class="form-control" value="19">
                            <button type="button" class="clear-button">×</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Email</label>
                        <div class="form-control-wrapper">
                            <input type="email" class="form-control" value="nameemail@gmail.com">
                            <button type="button" class="clear-button">×</button>
                        </div>
                    </div>
                </div>
                
                <button type="submit" class="btn">Save Changes</button>
            </form>
        </div>
        
        <div class="form-card">
            <h2 style="margin-bottom: 20px;">Change Password</h2>
            <form>
                <div class="password-field">
                    <label class="form-label">Current Password</label>
                    <input type="password" class="form-control">
                </div>
                
                <div class="password-field">
                    <label class="form-label">New Password</label>
                    <input type="password" class="form-control">
                </div>
                
                <div class="password-field">
                    <label class="form-label">Retype Password</label>
                    <input type="password" class="form-control">
                </div>
                 <button type="submit" class="btn">Save Changes</button>
            </form>
        </div>
    </div>

 </section>
 </div>

</body>
</html>
<style>
     * {
      box-sizing: border-box;
    }

    body {
      display: flex;
      font-family: Arial, sans-serif;
      margin: 0;
    }

    .profile-container {
      display: flex;
      width: 100%;
      height: 100vh;
    }

    .profile-sidebar {
      background-color: #f0f0f0;
      width: 250px;
      padding: 20px;
      height: 1080px;
    }

    .profile-sidebar h2 {
      margin-bottom: 5px;
    }

    .profile-sidebar .member-since {
      font-size: 12px;
      color: #007BFF;
      margin-bottom: 20px;
    }

    .profile-pic {
      width: 100px;
      height: 100px;
      background-color: #ccc;
      border-radius: 50%;
      margin-bottom: 10px;
      
    }

    .profile-nav a {
      display: block;
      padding: 10px;
      margin: 10px 0;
      text-decoration: none;
      color: black;
      background: #e0e0e0;
      border-radius: 5px;
    }

    .profile-nav a.active {
      background: #add8ff;
      font-weight: bold;
    }

    .profile-main {
      flex-grow: 1;
      background-color: #1e1e1e;
      color: white;
      padding: 30px;
      height: max-content;
    }
      

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #fff;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
        }

        .form-card {
            background-color: #fff;
            border-radius: 8px;
            padding: 55px;
            margin-bottom: 35px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
        }
        .form-card h2{
        color: black;
        }

        .form-row {
            display: flex;
            flex-wrap: wrap;
            margin: 0 -10px;
        }

        .form-group {
            flex: 1 0 300px;
            padding: 0 10px;
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-size: 14px;
        }

        .form-control {
            width: 90%;
            padding: 12px;
            background-color: #f0eef1;
            border: none;
            border-radius: 5px;
            color: #333;
            font-size: 14px;
            position: relative;
        }

        .form-control-wrapper {
            position: relative;
        }

        .clear-button {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            color: #999;
            cursor: pointer;
            font-size: 16px;
        }

        .btn {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 12px 24px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #555;
        }

        .password-field {
            margin-bottom: 20px;
        }

        @media (max-width: 600px) {
            .form-group {
                flex: 1 0 100%;
            }
        }
    </style>
