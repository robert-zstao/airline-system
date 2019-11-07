<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>航空管理登陆</title>
</head>

<style>
		body{
		padding:0;
		margin:0;
		}
      .login-img{
            width: 100%;
            height: 644px;
            background:url("images/2.jpg") no-repeat center ;
            background-size:100%,100%;
            margin:auto;
            border-radius: 5px;
        }
        form{
            width: 280px;
            height: 260px;
            position: relative;
            background: rgba(255,255,255,0.8);
            left: 40%;
            top: 13%;
            border-radius: 6px;
        }
        .first{
            width: 280px;
            height: 60px;
            margin: 10px auto;
            font-size: 16px;
            font-weight: bold;
        }

        .checkbox{
            font-size: 14px;
            margin-left: 20px;
        }
        .button-1{
            width: 100%;
            height: 40px;
            margin:10px auto ;
            
        }
        label{
            width: 280px;
            float: left;
            height: 25px;
            margin-left: 20px;
            line-height: 21px;
            cursor: pointer;
            margin-bottom: 5px;
            margin-top: 5px;
        }
        .two{
            width:220px;
            height: 20px;
            padding: 3px 6px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            margin-left: 20px;
            background-color: #fff;
            border-radius: 4px;
            /*box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);*/
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }
        .btn{
            width: 235px;
            height: 35px;
            float: left;
            margin-left:20px ;
            background: #00adffb0;
            font-size: 16px;
            border-radius:10px;
        }
        .select{
          width: 280px;
            height: 30px;
            margin-top:25px;
            font-size: 15px;
            margin-left:20px;
            }
    </style>
    <script type="text/javascript">
    		
    
    
    </script>
    
<body>
    <div class="login-img">
        <form action="login" method="post" id="form" name ="form">
            <div class="one">
                <div class="first">
                    <label for="user">用户名</label>
                    <input type="text" class="two" id="user" placeholder="请输入用户名" name="user">
                </div>
                <div class="first">
                    <label for="password">密 码</label>
                    <input type="password" class="two" id="password" placeholder="请输入密码" name ="password">
                </div>
                <div class="select">
                		营业员<input type="radio" value="1" name="radio" checked>
                		管理员<input type="radio" value="2" name="radio" >
                </div>
                <div class="button-1">
                    <button type="submit" class="btn">登 录</button>
                </div>
            </div>
        </form>

    </div>
</body>
</html>