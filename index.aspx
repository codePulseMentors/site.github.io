<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content><asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col1">
        <!-- Banner -->
        <div id="banner">
            <div id="slider2">
                <div class="contentdiv">
                    <a href="#"><img src="DynamicImages/ImageRecord/BannerImage/BannerImage1.jpg" alt="" /></a>
                </div> 
                <div class="contentdiv">
                    <a href="#"><img src="DynamicImages/ImageRecord/BannerImage/BannerImage2.jpg" alt="" /></a>
                </div> 
                <div class="contentdiv">
                    <a href="#"><img src="DynamicImages/ImageRecord/BannerImage/BannerImage3.jpg" alt="" /></a>
                </div> 
                <div class="contentdiv">
                    <a href="#"><img src="DynamicImages/ImageRecord/BannerImage/BannerImage4.jpg" alt="" /></a>
                </div> 
                <div class="contentdiv">
                    <a href="#"><img src="DynamicImages/ImageRecord/BannerImage/BannerImage5.jpg" alt="" /></a>
                </div> 
            </div> 
            <div id="paginate-slider2" class="pagination"></div>
            <script type="text/javascript" src="js/slider.js" ></script>                      
        </div>
        <!-- Content Links -->
        <div class="content_links">
            <ul>
                <li><a class="our_university" href="#">Public School</a></li>
                <li><a class="admission" href="#">Primary</a></li>
                <li><a class="accommodaiton" href="#">Girls College</a></li>
                <li><a class="community" href="#">Co-ed College</a></li>
                <li><a class="schorship" href="#">Girls School </a></li>
                <li class="last"><a class="take_tour" href="#">Boys School</a></li>
            </ul>
        </div>  
        <!-- Content Heading -->
        <div class="content_heading">
            <div class="heading"><h2>Welcome to Saini Education Society(REGD)</h2> </div>
            <%--<div class="share"><a  href="#">Share with friends</a></div>--%>
        </div>
        
        <p> The idea of spreading education in the backward sections of the Society and the Saini Community in particular given a practical shape by the forefathers to establish educational institutions for the meaningful cause. Thus, legal entity of the Saini Education Society came into existence about 68 years ago on the 18th December,1950 with a very humble infrastructure of a Chaupal (community Centre) of Mohalla Chamanpura of Rohtak City in Haryana. In the long journey of 68 years an immense participation with the help of social reformers namely Munshi Sheo Narain, Mahashya Bharat Singh Saini, Babu Devi Parshad ji, Vaid Dev Dutt ji, Vaid Narain Dutt ji, Ch. Manohar Lal ji, Munshi Daulat Ram ji, Ch. Tej Ram ji, Ch. Jagga Mal ji, Ch. Nand Ram ji, Thekedar Asa Ram ji are of great importance.
 
</p>
        <%--<div class="clear"></div>--%>
        <!-- Content Block -->
        <div class="contentblock">
            <!-- Tabs -->	
            <div class="tabwrapper hideScrollbar" style="height:380px;overflow:scroll">
                
                <div class="tabs_links">
                    <ul>
                        <li><a  href="#tab1">News</a></li>
                        <li><a href="#tab2">Events</a></li>
                        <li><a href="#tab3">Notices</a></li>
                        <li ><a class="nobg" href="#tab4">Features</a></li>
                    </ul>
                </div>
                
                <div class="tab_content" id="tab1" style="display:none" >
                    <asp:GridView ID="grdNewsRecord" AutoGenerateColumns="false" runat="server" GridLines="None" ShowHeader="False">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div style="float:left;margin-right:15px;margin-left:10px">
                                        <asp:Image ID="imgLogoIcon" style="width:60px;height:65px" ImageUrl="~/StaticImages/Icons/News/logo1.png" runat="server" />
                                    </div>
                                    <div class="hideScrollbar" style="height:65px;overflow:scroll;text-align:justify;margin-right:15px">
                                        <asp:Label style="color:blue;font-size:15px;font-weight:500;" ID="lblNewsHeading" runat="server" Text='<%#Bind("Heading") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="lblNewsDescription" runat="server" Text='<%#Bind("Description")%>'></asp:Label>
	                                    <br />
                                        <br /><em>
                                        <asp:Label style="float:right" ID="lblNewsDate" runat="server" Text='<%#Bind("Date")%>'></asp:Label></em>                          
                                    </div>
                                                <div class="clear"></div>
                                    <hr />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <a href="news.aspx"> <div style="text-align:center;color:black;font-weight:800">View More</div></a>
                    <%--<ul style="margin-top:-10px">
                        <asp:Repeater ID="rptNewsRecord" runat="server">
                            <ItemTemplate>
                                <li>
                                    <div class="thumb">
                                        <img style="width:60px;height:70px" src="StaticImages/newsLogo1.png"  alt=" " />
                                    </div>
                                    <div class="descripton hideScrollbar" style="height:70px;overflow:scroll;text-align:justify">
                                        <asp:Label style="color:blue;font-size:15px;font-weight:500;" ID="lblNewsHeading" runat="server" Text='<%#Bind("Heading") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="lblNewsDescription" runat="server" Text='<%#Bind("Description")%>'></asp:Label>
	                                    <br />
                                        <br /><em>
                                        <asp:Label style="float:right" ID="lblNewsDate" runat="server" Text='<%#Bind("Date")%>'></asp:Label></em>                          
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <li>
                           <a href="news.aspx"> <div style="text-align:center;color:black;font-weight:800">View More</div></a>
                        </li>
                    </ul>--%>
                <div class="clear"></div>
                </div>
                                            
                <div class="tab_content" id="tab2" style="display:none" >
                    <asp:GridView ID="grdEventsRecord" AutoGenerateColumns="false" runat="server" GridLines="None" ShowHeader="False">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div style="float:left;margin-right:15px;margin-left:10px">
                                        <asp:Image ID="imgLogoIcon" style="width:60px;height:65px" ImageUrl="~/StaticImages/Icons/Events/logo1.png" runat="server" />
                                    </div>
                                    <div class="hideScrollbar" style="height:65px;overflow:scroll;text-align:justify;margin-right:15px">
                                        <asp:Label style="color:blue;font-size:15px;font-weight:500;" ID="lblNewsHeading" runat="server" Text='<%#Bind("Heading") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="lblNewsDescription" runat="server" Text='<%#Bind("Description")%>'></asp:Label>
	                                    <br />
                                        <br /><em>
                                        <asp:Label style="float:right" ID="lblNewsDate" runat="server" Text='<%#Bind("Date")%>'></asp:Label></em>                          
                                    </div>
                                                <div class="clear"></div>
                                    <hr />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <a href="news.aspx"> <div style="text-align:center;color:black;font-weight:800">View More</div></a>
                    <%--<ul style="margin-top:-10px">
                        <asp:Repeater ID="rptEventRecord" runat="server">
                            <ItemTemplate>
                                <li>
                                    <div class="thumb">
                                        <img style="width:60px;height:70px" src="StaticImages/eventsLogo.png"  alt=" " />
                                    </div>
                                    <div class="descripton hideScrollbar" style="height:70px;overflow:scroll;text-align:justify">
                                        <asp:Label style="color:blue;font-size:15px;font-weight:500;" ID="lblNewsHeading" runat="server" Text='<%#Bind("Heading") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="lblNewsDescription" runat="server" Text='<%#Bind("Description")%>'></asp:Label>
	                                    <br />
                                        <br /><em>
                                        <asp:Label style="float:right" ID="lblNewsDate" runat="server" Text='<%#Bind("Date")%>'></asp:Label></em>                          
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <li>
                           <a href="news.aspx"> <div style="text-align:center;color:black;font-weight:800">View More</div></a>
                        </li>
                    </ul>--%>
                    <div class="clear"></div>
                </div>
                                            
                <div class="tab_content" id="tab3" style="display:none" >
                    <asp:GridView ID="grdNoticeRecord" AutoGenerateColumns="false" runat="server" GridLines="None" ShowHeader="False">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div style="float:left;margin-right:15px;margin-left:10px">
                                        <asp:Image ID="imgLogoIcon" style="width:60px;height:65px" ImageUrl="~/StaticImages/Icons/News/logo1.png" runat="server" />
                                    </div>
                                    <div class="hideScrollbar" style="height:65px;overflow:scroll;text-align:justify;margin-right:15px">
                                        <asp:Label style="color:blue;font-size:15px;font-weight:500;" ID="lblNewsHeading" runat="server" Text='<%#Bind("Heading") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="lblNewsDescription" runat="server" Text='<%#Bind("Description")%>'></asp:Label>
	                                    <br />
                                        <br /><em>
                                        <asp:Label style="float:right" ID="lblNewsDate" runat="server" Text='<%#Bind("Date")%>'></asp:Label></em>                          
                                    </div>
                                                <div class="clear"></div>
                                    <hr />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <a href="news.aspx"> <div style="text-align:center;color:black;font-weight:800">View More</div></a>
                    <%--<ul style="margin-top:-10px">
                        <asp:Repeater ID="rptNoticeRecord" runat="server">
                            <ItemTemplate>
                                <li>
                                    <div class="thumb">
                                        <img style="width:60px;height:70px" src="StaticImages/NoticeIcon.jpg"  alt=" " />
                                    </div>
                                    <div class="descripton hideScrollbar" style="height:70px;overflow:scroll;text-align:justify">
                                        <asp:Label style="color:blue;font-size:15px;font-weight:500;" ID="lblNewsHeading" runat="server" Text='<%#Bind("Heading") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="lblNewsDescription" runat="server" Text='<%#Bind("Description")%>'></asp:Label>
	                                    <br />
                                        <br /><em>
                                        <asp:Label style="float:right" ID="lblNewsDate" runat="server" Text='<%#Bind("Date")%>'></asp:Label></em>                          
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <li>
                           <a href="news.aspx"> <div style="text-align:center;color:black;font-weight:800">View More</div></a>
                        </li>
                    </ul>--%>
                    <div class="clear"></div>
                </div>
                                            
                <div class="tab_content" id="tab4" style="display:none;">
                    <ul>
                    <li>100% Placements</li>
                    <li>Wi-Fi Campus</li>
                    <li>Transport facility from Different parts of city.</li>
                    <li>Separate Hostel facility for boys and Girls with all modern facilities.</li>
                    <li>Effective Teaching Methodology.</li>
                    <li>Highly Qualified and Experienced Faculty drawn from Corporate and Academic.</li>
                    <li>Hi-Tech,Fully Air-conditioned Computer Center having 180 Nos. Latest Computers</li>
                    <li>Complete set of Books are provided to ebery student from Library.</li>
                    <li>Number of Scholarships is available for meritorious students.</li>
                    <li class="nbbdr">Consistent excellent results in Both MBA & MCA. Every year more than 2 students in University Merit List since 1998.</li>
                    </ul>
                    <div class="clear"></div>
                </div>
                                            
            </div>
            <!-- Search Course -->
            <div class="search_course">
                <div style="background-color:rgba(0,0,0,0.02);color:#0086b2;width:auto;font-weight:600;font-size:18px;float:left;padding:2px">
                    The Guiding Spirit
                </div>
                <br /><br />
                <div style="padding:10px;background-color:rgba(255,139,0,0.9);color:black;height:80px">
                    <img align="left" style="margin-right:10px" alt="" src="StaticImages/GuidingSpirit.jpg" />
                   In today’s competitive world, providing good education is vital. In this continuously changing world education related priorities are also changing.   Activities are also important for over all development.  
                </div>
                <div style="padding:3px 10px;background-color:rgba(0,0,0,0.08);color:black;font-weight:700">
                     Mr. Dharam Singh Dahiya(PRESIDENT)
                </div>
                <br />

               <%-- <div style="background-color:rgb(245,245,245);padding:10px;margin:2px 0">
                    <span style="font-size:15px">Admission Open For 2021-22</span>
                    <a href="DownloadableFiles/Documents/Application form.pdf" target="_blank" style="text-decoration:none;float:right;background-color:#0086b2;color:white;padding:3px 8px">Application Form</a>
                </div>--%>
              <%--  <br />--%>

<%--                <div style="background-color:rgb(245,245,245);padding:10px;margin:2px 0">
                    <span style="font-size:15px">Want's to Know More</span>
                    <a href="DownloadableFiles/Documents/Prospectus.pdf" target="_blank" style="text-decoration:none;float:right;background-color:#0086b2;color:white;padding:3px 8px">Download Prospectus</a>
                </div>--%>
             <%--   <br />--%>

                <div style="background-color:rgb(245,245,245);padding:3px 10px 10px 10px;margin:2px 0">
                    <span style="font-size:15px">Admission Helpline Contacts</span><br /><br />
                    <span style="color:black;font-weight:800">01262-253899 ,   01262-252355</span>
                </div>
                
            </div>
         <%--   <div class="clear"></div>--%>
        </div>	   
       <%-- <div class="clear"></div>--%>
        <!-- col1 ends -->	
    </div>
<!-- Col2 -->
    <div class="col2">
        <div class="ads">
            <a href="admission.aspx"><img src="StaticImages/co-ed.png" style="width:100%;height:50%;" alt="" /></a>
            <a target="_blank"  href="http://sainiinstituteofgirlseducation.in/"><img src="StaticImages/girl Edu.png" style="width:100%;height:50%;"  alt="" /></a>
            <%--<a href="admission.aspx"><img src="StaticImages/sts.jpg" style="width:100%;height:33%;"  alt="" /></a>--%>
        </div>
        <!-- Top Student -->
        <div class="college_gallery hideScrollbar" style="height:290px;overflow:scroll">
                                	<h5 class="active" style="color:#0836cf;background:white">Downloads<a style="float:right;margin-right:5px" href="Download.aspx">View More</a></h5>
            
                                    <ul style="margin-top:-20px">
                                    	<li>
                                            <a target="_blank" href="DownloadableFiles/Documents/Application form.pdf">
                                            <div class="thumb"><img style="width:30px;height:30px" src="StaticImages/pdflogo.png"  alt="" /></div> 
                                            <div class="description">
                                            	<span style="color:black;font-weight:500;font-size:16px">Application Form</span>
      		                               </div> </a>
                                        </li>
                                        <asp:Repeater ID="rptDownloadsRecord" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <a id="fileLink" runat="server" target="_blank" href='<%#Bind("downloadFilePath") %>'>
                                                    <div class="thumb">
                                                        <asp:Image ID="ImageLogo" style="width:30px;height:30px" ImageUrl='<%#Eval("imageIconPath") %>' runat="server" />
                                                    </div>
                                                         
                                                    <div class="description">
                                                        <asp:Label style="color:black;font-weight:500;font-size:14px" ID="lblDescription" runat="server" Text='<%#Bind("downloadDescription") %>'></asp:Label>
      		                                       </div> 

                                                    </a>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>  
        
        <!-- Our College Gallery -->	
       <%-- <div class="college_gallery hideScrollbar" style="height:290px;overflow:scroll">
           
          <h5 class="active" style="color:#0836cf;background:white">Results<a style="float:right;margin-right:5px" href="Result.aspx">View More</a></h5>
            
                                    <ul style="margin-top:-20px">
                                        <asp:Repeater ID="rptResults" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <a id="fileLink" runat="server" target="_blank" href='<%#Bind("downloadFilePath") %>'>
                                                    <div class="thumb">
                                                        <asp:Image ID="ImageLogo" style="width:30px;height:30px" ImageUrl='<%#Eval("imageIconPath") %>' runat="server" />
                                                    </div>
                                                         
                                                    <div class="description">
                                                        <asp:Label style="color:black;font-weight:500;font-size:14px" ID="lblDescription" runat="server" Text='<%#Bind("downloadDescription") %>'></asp:Label>
      		                                       </div> 

                                                    </a>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        
                                    </ul>
        </div>--%>
        <div class="clear"></div>	
        <!--col2 ends -->			
    </div>
    
   
            
   
    <div class="col1" style="text-align:justify; margin-top:-100px;">
        <div class="content_heading">
            <div class="heading"><h2>Faculty &amp; Facilities</h2> </div>
            <%--<div class="share"><a  href="#">Share with friends</a></div>--%>
        </div>
         The idea of spreading education in the backward sections of the Society and the Saini Community in particular given a practical shape by the forefathers to establish educational institutions for the meaningful cause. Thus, legal entity of the Saini Education Society came into existence about 68 years ago on the 18th December,1950 with a very humble infrastructure of a Chaupal (community Centre) of Mohalla Chamanpura of Rohtak City in Haryana. In the long journey of 68 years an immense participation with the help of social reformers namely Munshi Sheo Narain, Mahashya Bharat Singh Saini, Babu Devi Parshad ji, Vaid Dev Dutt ji, Vaid Narain Dutt ji, Ch. Manohar Lal ji, Munshi Daulat Ram ji, Ch. Tej Ram ji, Ch. Jagga Mal ji, Ch. Nand Ram ji, Thekedar Asa Ram ji are of great importance. Inspired by the deeds of these reformer, educated young men formed an association by the name of “Saini Youngmen Association” under the leadership of Babu Murari Lal ji Panwar. The first public program was organized very successfully in chaupal of Sainipura,
       <%-- <br /><br />--%>
 <%--       MR DAV IMS library provides stimulation to young minds, the learning resource centre has its main library in Campus of the institute. It has an air-conditioned reading room with a seating capacity for 100 students. The library is well stocked with Textbooks, Reference Works and Literature on companies. The library has meticulously selected collection of more than 10,000 volumes. The library subscribes to 72 foreign & Indian Journals most of the core journals in field of Marketing, Finance, Human Resources, Economic Business Strategies, Operations Management, I.T. etc. are acquired by the library. The library is in process of automation. It is being integrated with the DELNET, which will be linked to the countrywide library network. It also contains the record of back volumes of Journals and Periodicals for research work. Library subscribes to no. of magzines eg. Advance Edge, Business India, Business Today, Business Week, Business World, Competition Refresher (Management Refresher), Computer Vishwa Vividha, Data Quest, Electronics for you, Express Computer, I.T. Information Technology, Invention Intelligence, Living Digital , Network Magazine, PC Quest, Science Reporter, Voice & Data. Library provides no. of News Letters to its clients to scan the latest happenings all over. Some of the News Letters received are as follows, AICTE newsletter, Honeybee, IBA Bulle¬tin, The Lion, NMIMS Review, NTMIS Bulletin, University News etc.--%>
    <%--    <br /><br />--%>
        
        <div class="content_heading">
            <div class="heading"><h2>Our Vision &amp; Mission</h2> </div>
        </div>
        Our Mission is to filter out the best from every student and focus on providing the best possible educational facilities to them. We prioritize on combining the talent and dedication of the medical aspirants with the help of various learning program. We continuously experiment with new ideas to develop the students gradually through our teaching methodologies and beneficial skills.
        <br /><br />
         1) Integrity<br>
         2) Diversity<br>
         3) Excellence<br>
         4) Collaboration<br>

   
      <%--  <br /><br />--%>
        <%--<div class="content_heading">
            <div class="heading"><h2>Corporate Resource Cell</h2> </div>
            
        </div>
        The Corporate Resource Cell enables the students to make them better, more informed and creative career choices. It conducts seminars practice session and video assisted training on how to take an interview, participated in Group Discussion and Career Planning. The cell also seek to address the special circumstances that student may face when making the transition to the work, by inviting senior manager and successful consultant to share their experiences though lecturers, Question and answer session and informal get-together. The corporate resource cell maintains extensive Database of Recruiting literature, annual reports & articles and other published material about firm for the reference of students. The including a pre-placemat presentation by potential employers to pin-point the issue expectations and professional opportunity, unique to the firm and industry.
        <br /><br />
         
         
       
        <br /><br />  <br /><br />
        --%>
    </div>
  <%--  <div class="col2">
        <div class="college_gallery hideScrollbar" style="height:360px;overflow:scroll">
            <h5 class="active" style="color:#0836cf;background:white">Our Facilities<a style="float:right;margin-right:5px" href="Facilities.aspx">View More</a></h5>
            
            <ul style="margin-top:-20px">
            <li><a href="DynamicImages/ImageRecord/FacilitiesImage/Facilities1.jpg" rel="galleryimg" class="galleryimg" title="Computer Centre">
            <div class="thumb"><img style="height:40px;width:40px;" src="DynamicImages/ImageRecord/FacilitiesImage/Facilities1.jpg" alt="" /></div> 
            <div class="description">
            <span style="color:#0836cf;font-weight:700;font-size:12px">Computer Centre</span><br />
            (Posted on 17 Jan 11 , 2011)
            </div> 
            </a>
            </li>
            <li><a href="DynamicImages/ImageRecord/FacilitiesImage/Facilities2.jpg" rel="galleryimg" class="galleryimg" title="Library">
            <div class="thumb"><img style="height:40px;width:40px;" src="DynamicImages/ImageRecord/FacilitiesImage/Facilities2.jpg" alt="" /></div> 
            <div class="description">
            <span style="color:#0836cf;font-weight:700;font-size:12px">Library</span><br />
            (Posted on 17 Jan 11 , 2011)
            </div> 
            </a>
            </li>
            <li><a href="DynamicImages/ImageRecord/FacilitiesImage/Facilities3.jpg" rel="galleryimg" class="galleryimg" title="Audio Visual Hall">
            <div class="thumb"><img style="height:40px;width:40px;" src="DynamicImages/ImageRecord/FacilitiesImage/Facilities3.jpg" alt="" /></div> 
            <div class="description">
            <span style="color:#0836cf;font-weight:700;font-size:12px">Audio Visual Hall</span><br />
            (Posted on 17 Jan 11 , 2011)
            </div> 
            </a>
            </li>
            <li><a href="DynamicImages/ImageRecord/FacilitiesImage/Facilities5.jpg" rel="galleryimg" class="galleryimg" title="Cafeteria">
            <div class="thumb"><img style="height:40px;width:40px;" src="DynamicImages/ImageRecord/FacilitiesImage/Facilities5.jpg" alt="" /></div> 
            <div class="description">
            <span style="color:#0836cf;font-weight:700;font-size:12px">Cafeteria</span><br />
            (Posted on 17 Jan 11 , 2011)
            </div> 
            </a>
            </li>
            <li><a href="DynamicImages/ImageRecord/FacilitiesImage/Facilities6.jpg" rel="galleryimg" class="galleryimg" title="Medical Facilities">
            <div class="thumb"><img style="height:40px;width:40px;" src="DynamicImages/ImageRecord/FacilitiesImage/Facilities6.jpg" alt="" /></div> 
            <div class="description">
            <span style="color:#0836cf;font-weight:700;font-size:12px">Medical Facilities</span><br />
            (Posted on 17 Jan 11 , 2011)
            </div> 
            </a>
            </li>
            <li><a href="DynamicImages/ImageRecord/FacilitiesImage/Facilities7.jpg" rel="galleryimg" class="galleryimg" title="Hostel">
            <div class="thumb"><img style="height:40px;width:40px;" src="DynamicImages/ImageRecord/FacilitiesImage/Facilities7.jpg" alt="" /></div> 
            <div class="description">
            <span style="color:#0836cf;font-weight:700;font-size:12px">Hostel</span><br />
            (Posted on 17 Jan 11 , 2011)
            </div> 
            </a>
            </li>
            
            </ul>
        </div>
        <div class="clear"></div>
       <%-- <div class="rtab hideScrollbar" style="height:320px;padding-bottom:10px;overflow:scroll">
            <div class="tab_navigation">
                <ul>
                    <li class="active" ><a   href="#rtab1">Top Students</a></li>
                    <li><a href="#rtab2">Almuni</a> </li>
                </ul>
            </div>
            <div class="rtab_content" id="rtab1" style="display:none;">
                <ul>
                    <asp:Repeater ID="rptTopperRecord" runat="server">
                        <ItemTemplate>
                            <li>
                                <a id="fileLink" runat="server" rel="galleryimg" class="galleryimg" href='<%#Bind("limgPath") %>'>
                                <div class="thumb">
                                    <asp:Image ID="ImageLogo" style="width:40px;height:50px" ImageUrl='<%#Eval("simgPath") %>' runat="server" />
                                </div>
                                                         
                                <div class="description">
                                    <asp:Label style="color:blue;font-weight:500;font-size:14px" ID="lblimgName" runat="server" Text='<%#Bind("imageName") %>'></asp:Label><br />
                                    <asp:Label style="color:black;font-size:14px" ID="lblimgTitle" runat="server" Text='<%#Bind("imageTitle") %>'></asp:Label>
      		                    </div> 

                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                    
                    
                </ul>
                <div class="clear"></div>
            </div>
            <div class="rtab_content" id="rtab2" style="display:none;">
                <ul>
                <asp:Repeater ID="rptAlmuni" runat="server">
                        <ItemTemplate>
                            <li>
                                <a id="fileLink" runat="server" rel="galleryimg" class="galleryimg" href='<%#Bind("limgPath") %>'>
                                <div class="thumb">
                                    <asp:Image ID="ImageLogo" style="width:40px;height:50px" ImageUrl='<%#Eval("simgPath") %>' runat="server" />
                                </div>
                                                         
                                <div class="description">
                                    <asp:Label style="color:blue;font-weight:500;font-size:14px" ID="lblimgName" runat="server" Text='<%#Bind("imageName") %>'></asp:Label><br />
                                    <asp:Label style="color:black;font-size:14px" ID="lblimgTitle" runat="server" Text='<%#Bind("imageTitle") %>'></asp:Label>
      		                    </div> 

                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                                        
                </ul>
                <div class="clear"></div>
            </div>
        </div>--%>
        <div class="clear"></div>
        
        <div class="clear"></div>
    
</asp:Content>

