<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
@import url('https://fonts.googleapis.com/css?family=Roboto:300,400');

* {
    margin:0;
    padding:0
}
a,a:hover{
  text-decoration: none;
}
.myform-area{
  overflow: hidden;
  padding: 60px 0;
  background: #08FF00;
  position: relative;
  padding-top: 100px;
  padding-bottom: 100px;
}
.myform-area .form-area{
  position: relative;
  background: #008080;
  width: 100%;
  height: 400px;
  overflow: hidden;
  box-shadow: 0 0 40px 0 #e1e1e1;
}

.myform-area .form-area .form-content,
.myform-area .form-area .form-input{
    position: relative;
    width: 50%;
    height: 100%;
    float: left;
    box-sizing: border-box;
}

.myform-area .form-area .form-content{
  width: 50%;
  padding: 40px 30px;
}

.myform-area .form-area .form-content h2{
  color: #fff;
  font-size: 50px;
  font-family: Times New Roman;
  font-weight: Bold;
  font-style: italic;
}
.myform-area .form-area .form-content p{
  color: #fff;
  font-size: 15px;
  font-family: Times New Roman;
  font-weight: Bold;
  font-style: italic;
}
.myform-area .form-area .form-content a i{
    margin-right: 10px;
}

.myform-area .form-area .form-input{
  background-color: white;
  position: relative;
  overflow: hidden;
  box-shadow: 0 0 40px 0 #e1e1e1;
}
.myform-area .form-area .form-input{
    width: 50%;
    background: #fff;
    padding: 40px 30px;
}

.myform-area .form-area .form-input h2{
  margin-bottom: 20px;
    color: #07315B;
}

.myform-area .form-area .form-input input{
    position: relative;
    height: 60px;
    padding: 20px 0;
}
.myform-area .form-area .form-input textarea{
    height: 120px;
    padding: 20px 0;
}

.myform-area .form-area .form-input input,
.myform-area .form-area .form-input textarea{
    text-transform: capitalize;
    width: 100%;
    box-sizing: border-box;
    outline: none;
    border: none;
    border-bottom: 2px solid #e1e1e1;
    color: #07315B;
}
.myform-area .form-area .form-input form .form-group{
    position: relative;
}
.myform-area .form-area .form-input form .form-group label{
    position: absolute;
    text-transform: capitalize;
    top: 20px;
    left: 0;
    pointer-events: none;
    font-size: 14px;
    color: #595959;
    margin-bottom: 0;
    transition: all .6s;
}
.myform-area .form-area .form-input input:focus ~ label,
.myform-area .form-area .form-input textarea:focus ~ label,
.myform-area .form-area .form-input input:valid ~ label,
.myform-area .form-area .form-input textarea:valid ~ label{
    top: -5px;
    opacity: 0;
    left: 0;
    color: rgba(103,58,183);
    font-size: 12px;
    color: #07315B;
    font-weight: bold;
}
.myform-area .form-area .form-input input:focus,
.myform-area .form-area .form-input textarea:focus,
.myform-area .form-area .form-input input:valid,
.myform-area .form-area .form-input textarea:valid{
    border-bottom: 2px solid rgba(103,58,183);
}
.myform-area .form-area .form-text{
    margin-top: 30px;
}
.myform-area .form-area .form-text span a{
    color: rgba(103,58,183);
}
.myform-area .form-area .myform-button{
    margin-top: 30px;
}
.myform-area .form-area .myform-button .myform-btn{
    width: 100%;
    height: 50px;
    font-size: 17px;
    background: #008080;
    border: none;
    border-radius: 50px;
    color: #fff;
    cursor: pointer;
    -webkit-transition: all .5s;
    -o-transition: all .5s;
    transition: all .5s;
}
.myform-area .form-area .myform-button .myform-btn:hover{
    background: #006400;
    color: #fff;
}
</style>
</head>
<section class="myform-area">
              <div class="container">
                  <div class="row justify-content-center">
                      <div class="col-lg-8">
                          <div class="form-area login-form">
                              <div class="form-content">
                                  <h2>Welcome to SSV Bikes & Cars!!</h2>
                                  <p>By logging in you agree to our Terms & Conditions.</p>
                              </div>
                              <div class="form-input">
                                  <form method = "post">
                                      <div class="form-group">
                                          <input type="text" value="" name="username" id="username" required>
                                          <label>User Name</label>
                                      </div>
                                      <div class="form-group">
                                          <input type="password"  value="" id="password" name="password" required>
                                          <label>password</label>
                                      </div>
                                      <div class="myform-button">
                                          <a href="index"><button class="myform-btn">Login</button></a>
                                      </div>
                                  </form>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </section>