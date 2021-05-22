<?php echo file_get_contents("html/header.html"); ?>
<div class="container-fluid" style="padding-top:50px;">
  <img width="100%" height="60" src="http://www.rdplast.in/wp-content/uploads/2018/01/contact-us-banner-1024x303.jpg" class="img-fluid" alt="Responsive image">
</div>
<div class="container text-center" style="padding-top:50px;">
  <h1>Contact Us</h1>
  <hr>
  <p>Please use the form below to get in touch with the team</p>
  <div class="alert alert-sucess"></div>
  <form method="POST" action="handleContactUs.php">
    <div class="container">
      <div class="form-group">
        <label for="inputEmail">Email address</label>
        <input type="email" class="form-control" id="inputEmail" name="email" aria-describedby="emailHelp" placeholder="Enter email" required>
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        <small class="form-text invalid-feedback" style="display:block"></small>
      </div>
      <div class="col">
        <label for="name">Enter Your Name</label>
        <input type="text" class="form-control" id="inputFName" name="name" aria-describedby="nameHelp" placeholder="Enter your Name" required>
        <small id="nameHelp" class="form-text text-muted"></small>
        <small class="form-text invalid-feedback" style="display:block"></small>
      </div>
      <div class="col">
        <label for="inputLName">Enter Subject</label>
        <input type="text" class="form-control" id="inputSubject" name="subject" aria-describedby="nameHelp" placeholder="Enter your subject" required>
        <small id="subjectHelp" class="form-text text-muted"></small>
        <small class="form-text invalid-feedback" style="display:block"></small>
      </div>
      <div class="form-group">
        <label for="inputMessage">Enter Your Message</label>
        <textarea class="form-control" id="inputMessage" rows="5" name="message" placeholder="Enter your message here" required></textarea>
        <small class="form-text invalid-feedback" style="display:block"></small>
      </div>
      <div class="form-check text-left">
        <input class="form-check-input" name="optin" type="checkbox" value="1" id="optin">
        <label class="form-check-label" style="float: left;"for="opt-in-check-box">
          Please check the box to receive news of promotions and offers from Bluespec.
        </label>
      </div>
      <button type="submit" class="btn btn-block btn-success">Submit</button>
    </div>
  </form>
</div>