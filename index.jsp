<%-- 
    Document   : Calc
    Created on : 23 Feb, 2022, 2:43:16 PM
    Author     : raju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Calculator </title>
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	 <style type="text/css">
	 	.m1
	 	{
	 		border:3px solid black!important;
	 		border-radius: 50px!important;
	 		font-weight: bolder;
                        background-color: black!important;
	 		box-shadow: 3px 3px 10px aqua;
	 	}
                .m1:hover
                {
                    box-shadow: 3px 3px 80px aqua;
                }
	 </style>
</head>
<body>
    <div class="container-fluid bg-dark  p-5  " style=" background-color: black!important;">
	<div class="container bg-dark m1 my-5 p-5  w-50">
		<h1 style="color: red;  text-align: center;">Calculator</h1>
		  <div class="mb-3 p-5 align-items-center ">
                      <form action="" method="POST">
		  		<label  class="form-label w-40 text-danger">Enter First Number</label>
                                <input type="text" class="form-control " name="n1"  required placeholder="Enter any number ">

		  <label class="form-label w-40 text-danger">Enter Second Number</label>
                  <input type="text" name="n2" class="form-control  " required  placeholder="Enter any number">
		  <input type="submit" class=" mt-2 btn-sm btn-warning"  name="A" value="Addition" >
		  <input type="submit" class="  mt-2 btn-sm btn-primary"  name="A" value="Subscraction" >
		  <input type="submit" class="  mt-2 btn-sm btn-info"     name="A" value="Multiplication" >
		  <input type="submit" class=" mt-2 btn-sm btn-danger"  name="A" value="Division" >
<!--<button type="submit" name="a" value="add">Addition</button>-->
                  
                        </form>
                      <h1 style="color: white"><% 
          String s1=request.getParameter("n1");
          String s2=request.getParameter("n2");
          String s3=request.getParameter("A");
//          out.print(s3);
         if(s1!=null && s2!=null)
         {
          try
          {
          double  c=Double.parseDouble(s1);
          double d =Double.parseDouble(s2);
          
            if(s3.equals("Addition"))
            {
              double  a=c+d;
              out.print("Addition ="+a);
            }
            if(s3.equals("Subscraction"))
            {
              double  a=c-d;
              out.print("Subscraction ="+a);
            }
            if(s3.equals("Multiplication"))
            {
              double  a=c*d;
              out.print("Multiplication ="+a);
            }
            if(s3.equals("Division"))
            {
              double  a=c/d;
              out.print("Division ="+a);
            }
            
          }catch(Exception ex){out.print(" Plese Enter only Number");
          } 
         }
        %></h1>
		</div>
	</div>
</div>


<!-- Option 2: Separate Popper and Bootstrap JS -->

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    
</body>
</html>
 

