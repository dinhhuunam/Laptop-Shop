<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand" href="#">Laptop Shop</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent" style="position: absolute; right: 100px">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cart.jsp">Cart <span class="badge badge-danger px-1">${ cart_list.size() }</span></a>
        </li>
      	<%
      	if(auth !=null){%>
      			<li class="nav-item">
                <a class="nav-link disabled" href="orders.jsp" tabindex="-1" aria-disabled="true">Orders</a>
	              </li>
	              <li class="nav-item">
	                <a class="nav-link" href="log-out">Logout</a>
	              </li>
	      	<%}else{ %>
	      		<li class="nav-item">
	            <a class="nav-link" href="login.jsp">Login</a>
	          </li>
      		<%}%>
      	 <li class="nav-item">
	            <a class="nav-link" href="registration.jsp">Register</a>
	     </li>
      </ul>
    </div>
  </div>
</nav>