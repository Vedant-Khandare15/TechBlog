<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="com.tech.blog.dao.PostDao"%>

<div class="row">
    
<%

   PostDao d = new PostDao(ConnectionProvider.getConnection());
  
   int cid = Integer.parseInt(request.getParameter("cid"));
    List<Post> posts = null;
    if(cid==0){
      posts = d.getAllPosts();
    }
   else
   {
      posts = d.getPostByCatId(cid);
    }
    if(posts.size() == 0)
    {
      out.println("<h5 class=' display-5 mt-2 text-center '>No Posts in This Category</h5>");
      return;
    }
    
   for(Post p:posts)
   {
     %>
     <div class="col-md-6 mt-2">
         <div class="card">
             <img class="card-img-top" src="pics/<%= p.getpPic()%>" alt="Card image cap">
             <div class="card-body">
                 <b><%= p.getpTitle()%></b>
                 <p><%= p.getpContent()%></p>
                 <pre><%= p.getpCode()%></pre>
             </div>
         </div>
     </div>
     <%
   }

%>

</div>