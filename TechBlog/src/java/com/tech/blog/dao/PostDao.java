package com.tech.blog.dao;

import java.sql.*;
import java.util.ArrayList;
import com.tech.blog.entities.Category;
import com.tech.blog.entities.Post;
import java.util.List;

public class PostDao {

    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }

    
    /**
     *
     * @return
     */
    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> list = new ArrayList<>();

        try {
            String q = "select * from categories";
            Statement st = con.createStatement();
            ResultSet set = st.executeQuery(q);

            while (set.next()) {
                int cid = set.getInt("cid");
                String name = set.getString("name");
                String description = set.getString("description");

                Category c = new Category(cid, name, description);
                list.add(c);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
    /*
    public boolean savePost(Post p){
        boolean f = false;
        
        try{
            String q = "insert into posts(pTitle, pContent, pCode, pPic, catId, userId) values(?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString (1,p.getpTitle());
            pstmt.setString (2,p.getpContent());
            pstmt.setString (3,p.getpCode());
            pstmt.setString (4, p.getpPic());
            pstmt.setInt (5, p.getCatId());
            pstmt.setInt (6, p.getpUserId());
            
            pstmt.executeUpdate();
            f=true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        
        return f;
    }
    */
    
    public boolean savePost(Post p) {
    boolean f = false;

    try {
        String q = "INSERT INTO posts(pTitle, pContent, pCode, pPic, catId, userId) VALUES(?,?,?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(q);

        // Setting parameters
        pstmt.setString(1, p.getpTitle());
        pstmt.setString(2, p.getpContent());
        pstmt.setString(3, p.getpCode());
        pstmt.setString(4, p.getpPic());
        pstmt.setInt(5, p.getCatId());
        pstmt.setInt(6, p.getpUserId());

        // Logging the prepared statement
        System.out.println("Executing query: " + pstmt.toString());

        // Execute the update and check the result
        int rowsAffected = pstmt.executeUpdate();
        if (rowsAffected > 0) {
            f = true;
        } else {
            System.out.println("No rows inserted.");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return f;
}
    
    
    // get all the posts
    public List<Post> getAllPosts()
    {
        List<Post> list = new ArrayList<>();
        
        // fetch all the post 
        try{
            PreparedStatement p = con.prepareStatement("select * from posts order by pid desc");
            
            ResultSet set =  p.executeQuery();
            
            while(set.next())
            {
                int pid=set.getInt("pid");
                String pTitle=set.getString("pTitle");
                String pContent=set.getString("pContent");
                String pcode=set.getString("pCode");
                String pPic=set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");
                int catId = set.getInt("catId");
                int userId = set.getInt("userId");
                
                Post post = new Post(pid, pTitle, pContent, pcode, pPic, date, catId, userId);
                
                list.add(post);
                
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public List<Post> getPostByCatId(int catId)
    {
        List<Post> list = new ArrayList<>();
        
        // fetch all the post by id
        
        try{
            PreparedStatement p = con.prepareStatement("select * from posts where catId=?");
            p.setInt(1, catId);
            
            ResultSet set =  p.executeQuery();
            
            while(set.next())
            {
                int pid=set.getInt("pid");
                String pTitle=set.getString("pTitle");
                String pContent=set.getString("pContent");
                String pcode=set.getString("pCode");
                String pPic=set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");
                
                int userId = set.getInt("userId");
                
                Post post = new Post(pid, pTitle, pContent, pcode, pPic, date, catId, userId);
                
                list.add(post);
                
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        return list;
    }


}
