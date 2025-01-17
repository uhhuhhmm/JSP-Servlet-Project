<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">
body {
  align-items: center;
  background-color: #000;
  display: flex;
  justify-content: center;
  height: 100vh;
}

.form {
  background-color: #15172b;
  border-radius: 20px;
  box-sizing: border-box;
  height: 500px;
  padding: 20px;
  width: 320px;
}

.title {
  color: #eee;
  font-family: sans-serif;
  font-size: 36px;
  font-weight: 600;
  margin-top: 30px;
}

.subtitle {
  color: #eee;
  font-family: sans-serif;
  font-size: 16px;
  font-weight: 600;
  margin-top: 10px;
}

.input-container {
  height: 50px;
  position: relative;
  width: 100%;
}

.ic1 {
  margin-top: 40px;
}

.ic2 {
  margin-top: 30px;
}

.input {
  background-color: #303245;
  border-radius: 12px;
  border: 0;
  box-sizing: border-box;
  color: #eee;
  font-size: 18px;
  height: 100%;
  outline: 0;
  padding: 4px 20px 0;
  width: 100%;
}

.cut {
  background-color: #15172b;
  border-radius: 10px;
  height: 20px;
  left: 20px;
  position: absolute;
  top: -20px;
  transform: translateY(0);
  transition: transform 200ms;
  width: 76px;
}

.cut-short {
  width: 50px;
}

.input:focus ~ .cut,
.input:not(:placeholder-shown) ~ .cut {
  transform: translateY(8px);
}

.placeholder {
  color: #65657b;
  font-family: sans-serif;
  left: 20px;
  line-height: 14px;
  pointer-events: none;
  position: absolute;
  transform-origin: 0 50%;
  transition: transform 200ms, color 200ms;
  top: 20px;
}

.input:focus ~ .placeholder,
.input:not(:placeholder-shown) ~ .placeholder {
  transform: translateY(-30px) translateX(6px) scale(0.75);
}

.input:not(:placeholder-shown) ~ .placeholder {
  color: #808097;
}

.input:focus ~ .placeholder {
  color: #dc2f55;
}

.submit {
  background-color: #08d;
  border-radius: 12px;
  border: 0;
  box-sizing: border-box;
  color: #eee;
  cursor: pointer;
  font-size: 18px;
  height: 50px;
  margin-top: 38px;
  // outline: 0;
  text-align: center;
  width: 100%;
}

.submit:active {
  background-color: #06b;
}
</style>
</head>
<body>
<form method="post" action="testLogin261.jsp">
<div class="form">
      <div class="title">Hello, JSP</div>
      <div class="subtitle">Login</div>
      <div class="input-container ic1">
        <input id="userid" name="id" class="input" type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="userid" class="placeholder">USERID</label>
      </div>
      <div class="input-container ic2">
        <input id="userpwd" name="pwd" class="input" type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="userpwd" class="placeholder">PASSWORD</label>
      </div>
<!--       <div class="input-container ic2"> -->
<!--         <div class="cut cut-short"></div> -->
<!--         <label for="email" class="placeholder">Email</> -->
<!--         <input id="email" class="input" type="text" placeholder=" " /> -->
<!--       </div> -->
      <button type="submit" class="submit" value="로그인">login</button>
    </div>
</form>

<!-- 	<form method="post" action="testLogin261.jsp"> -->
	
<!-- 		<label for="userid"> 아이디 : </label> -->
<!-- 		<input type="text" name="id" id="userid"><br> -->
		
<!-- 		<label for="userpwd"> 암 &nbsp; 호 : </label> -->
<!-- 		<input type="password" name="pwd" id="userpwd"><br> -->
		
<!-- 		<input type="submit" value="로그인"> -->
	
<!-- 	</form> -->
</body>
</html>