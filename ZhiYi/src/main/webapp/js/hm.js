 @charset "utf-8";
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:16/180% Arial, Helvetica, sans-serif, "微软雅黑","黑体";background:#eee;text-align:center;}

table {border-collapse:collapse;border-spacing:0;}

td,th {padding:0;}


.clear {clear:both;}
.clear:before,.clear:after {content:"";display:table;}
.clear:after {clear:both;}

/* form-div */
.form-div{background-color:rgba(255,255,255,0.27); border-radius:10px; border:1px solid #aaa; width:424px; margin:0 auto;padding:30px 0 20px 0px; font-size:12px;box-shadow:inset 0px 0px 10px rgba(255,255,255,0.5),0px 0px 15px rgba(75,75,75,0.3); text-align:left;}

.form-div input[type="text"], .form-div input[type="password"], .form-div input[type="email"]{width:268px; margin:10px; line-height:20px; font-size:16px;}
.form-div input[type="checkbox"]{margin:20px 0 20px 10px;}
.form-div input[type="button"],.form-div input[type="submit"].form-div input[type="reset"]{margin:10px 20px 0 0;}

.form-div table{margin:0 auto; text-align:right; color:rgba(64,64,64,1.00);}
.form-div table img{vertical-align:middle; margin:0 0 5px 0;}
.footer{color:rgba(64,64,64,1.00); font-size:12px; margin-top:30px;}
.form-div .buttons{float:right;}
.form-div .resets{float:right;}

input[type="text"], input[type="password"], input[type="email"] {
    border-radius:8px;
    box-shadow:inset 0 2px 5px #eee;
    padding:10px;
    border:1px solid #D4D4D4;
    color:#333333;
    margin-top:5px;
}
input[type="text"]:focus, input[type="password"]:focus, input[type="email"]:focus {
    border:1px solid #50afeb;
	outline:none;
}
input[type="button"], input[type="submit"], input[type="reset"] {
    padding:7px 15px;
    background-color:#3c6db0;
    text-align:center;
    border-radius:5px;
    overflow:hidden;
    min-width:80px;
    border:none;
	color:#FFF;
	box-shadow:1px 1px 1px rgba(75,75,75,0.3);
}
input[type="button"]:hover, input[type="submit"]:hover, input[type="reset"]:hover {
    background-color:#5a88c8;
}
input[type="button"]:active, input[type="submit"]:active, input[type="reset"]:active {
    background-color:#5a88c8;
}