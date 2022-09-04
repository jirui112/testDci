<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenTest.aspx.cs" Inherits="DciTest.MenTest" %>

<!DOCTYPE html>
<html>
    
 <head>
  <meta charset="utf-8" />
     
  <title></title>
     <script type="text/javascript" src="Scripts/jquery-3.4.1.js"></script>
     <link rel="stylesheet" href="Content/bootstrap.css" />
     <script type="text/javascript" src="Scripts/bootstrap.js"></script>
     <script>
         $(document).ready(function (e) {
             alert("加载");
             $.ajax({
                 'url': 'MenTest.aspx/Test1',
                 'data': '{}',
                 'dataType': 'json',
                 'contentType': 'application/json;charset=utf-8',
                 'type':'post',
                 'success': function (result) {
                     $("#sidebar").append(result.d);
                     $('#kks').attr('href');
                     $('#kks')[0].click();
                     $("#sidebar").toggleClass("active");
                     //alert($("#homeSubmenu2").attr("aria-expanded")); 查看菜单选项是否打开
                     $(this).toggleClass("active");
                     //设置滑轮位置
                     
                     if (sessionStorage.getItem('MenTop') != undefined && sessionStorage.getItem('MenTop') != "") {
                         alert("正在设置");
                         var senys = sessionStorage.getItem('MenTop');
                         $(document).scrollTop(senys)
                     }
                  }
        });
             $("#sidebarCollapse").on("click", function () {
                 $("#sidebar").toggleClass("active");
                 $(this).toggleClass("active");
             });
             $(document).on("click", function (e) {
                 //获取滑轮位置
                 var meny = $(document).scrollTop();
                 sessionStorage.setItem('MenTop', meny);
                
             })
         });

</script>
  <style type="text/css">
       .navbar {
  padding: 15px 10px;
  background: #fff;
  border: none;
  border-radius: 0;
  margin-bottom: 40px;
  box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
}

.navbar-btn {
  box-shadow: none;
  outline: none !important;
  border: none;
}

.line {
  width: 100%;
  height: 1px;
  border-bottom: 1px dashed #ddd;
  margin: 40px 0;
}


/* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */

.wrapper {
  display: flex;
  align-items: stretch;
}

#sidebar {
  min-width: 250px;
  max-width: 250px;
  background: #7386D5;
  color: #fff;
  transition: all 0.3s;
}

#sidebar a,
#sidebar a:hover,
#sidebar a:focus {
  color: inherit;
}

#sidebar {
  margin-left:-250px;
}
#sidebar.active {
  margin-left: 0;
}

#sidebar .sidebar-header {
  padding: 20px;
  background: #6d7fcc;
}

#sidebar ul.components {
  padding: 20px 0;
  border-bottom: 1px solid #47748b;
}

#sidebar ul p {
  color: #fff;
  padding: 10px;
}

#sidebar ul li a {
  padding: 10px;
  font-size: 1.1em;
  display: block;
}

#sidebar ul li a:hover {
  color: #7386D5;
  background: #fff;
}

#sidebar ul li.active > a,
a[aria-expanded="true"] {
  color: #fff;
  background: #6d7fcc;
}

a[data-toggle="collapse"] {
  position: relative;
}

a[aria-expanded="false"]::before,
a[aria-expanded="true"]::before {
  content: '\e259';
  display: block;
  position: absolute;
  right: 20px;
  font-family: 'Glyphicons Halflings';
  font-size: 0.6em;
}

a[aria-expanded="true"]::before {
  content: '\e260';
}

ul ul a {
  font-size: 0.9em !important;
  padding-left: 30px !important;
  background: #6d7fcc;
}

ul.CTAs {
  padding: 20px;
}

ul.CTAs a {
  text-align: center;
  font-size: 0.9em !important;
  display: block;
  border-radius: 5px;
  margin-bottom: 5px;
}

a.download {
  background: #fff;
  color: #7386D5;
}

a.article,
a.article:hover {
  background: #6d7fcc !important;
  color: #fff !important;
}


/* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */

#content {
  padding: 20px;
  min-height: 100vh;
  transition: all 0.3s;
}

#content p a {
  
}
@media (max-width: 768px) {
  #sidebar {
    margin-left: -250px;
  }
  #sidebar.active {
    margin-left: 0;
  }
}

  </style>
 </head>
    
 <body>

     <form id="form1" runat="server">

  <div class="wrapper">
  <!-- Sidebar Holder -->
  <nav id="sidebar">
  
    <div class="sidebar-header">
      <h3>Test</h3>
      
    </div>

   
  </nav>

  <!-- Page Content Holder -->
  <div id="content">
          <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                            </button>
      <div class="container-fluid">
    <h2>Collapsible Sidebar Using Bootstrap 3</h2>

      </div>

  </div>
</div>

         
     </form>

 </body>

</html>
