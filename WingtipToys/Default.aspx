<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WingtipToys._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="6000">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="Images/fitbit-versa.jpg" alt="ASP.NET" class="img-responsive" />
            <div class="carousel-caption" role="option">
                <p>
                    Feel fit. All new
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkID=525028&clcid=0x409">
                        Buy now
                    </a>
                </p>
            </div>
        </div>
        <div class="item">
            <img src="Images/beats.jpeg" alt="Visual Studio" class="img-responsive" />
            <div class="carousel-caption" role="option">
                <p>
                    Beats with an all new sound
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkID=525030&clcid=0x409">
                        Listen here
                    </a>
                </p>
            </div>
        </div>
        <div class="item">
            <img src="Images/samsung-qled.jpg" alt="Microsoft Azure" class="img-responsive" />
            <div class="carousel-caption" role="option">
                <p>
                    Immerse yourself in a whole new world of living
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkID=525027&clcid=0x409">
                        Discover
                    </a>
                </p>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
        <h1><%: Title %>.</h1>
        <h2>Ferox Devices can help you find the piece of technology.</h2>
        <p class="lead">We're all about technology in the modern world. You can order 
                any of our devices today. Each product has detailed 
                information to help you choose the right device.</p>
</asp:Content>