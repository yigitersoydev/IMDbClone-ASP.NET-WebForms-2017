<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        RouteTable.Routes.Add("yonetim", new Route("yigit", new PageRouteHandler("~/Login.aspx")));
        RouteTable.Routes.Add("yonetim2", new Route("yigitersoy", new PageRouteHandler("~/Login.aspx")));
        RouteTable.Routes.Add("yonetim3", new Route("login", new PageRouteHandler("~/Login.aspx")));
        RouteTable.Routes.Add("yonetim4", new Route("Login", new PageRouteHandler("~/Login.aspx")));
        RouteTable.Routes.Add("yonetim5", new Route("admin", new PageRouteHandler("~/Login.aspx")));
        RegisterRouotes(RouteTable.Routes);

    }
    
    void RegisterRouotes(RouteCollection routes)
    {
        routes.MapPageRoute("MovieDetail", "Movie/{ID}/{NewTitle}", "~/Theme/MovieDetail.aspx");
        routes.MapPageRoute("ActorDetail", "Actor/{ID}/{NewTitle}", "~/Theme/ActorDetail.aspx");
        routes.MapPageRoute("DirectorDetail", "Director/{ID}/{NewTitle}", "~/Theme/DirectorDetail.aspx");
        routes.MapPageRoute("Categories", "Category/{ID}/{NewTitle}","~/Theme/CategoryDetail.aspx");

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
