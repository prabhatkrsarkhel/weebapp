<%@ Page Title="" Language="C#" MasterPageFile="~/Layout2.Master" AutoEventWireup="true" CodeBehind="home2.aspx.cs" Inherits="webapp.home2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container mt-1 px-1">
   <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://source.unsplash.com/1600x500/?book" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Home for Readers</h5>
        <p>"I have always imagined that Paradise will be a kind of a Library."</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://source.unsplash.com/1600x500/?library" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>A silent stay</h5>
        <p>"Nothing is pleasanter than exploring a library."</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://source.unsplash.com/1600x500/?book,school" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>When in doubt go to the library.</h5>
        <p>"The only thing that you absolutely have to know, is the location of the library."</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</asp:Content>
