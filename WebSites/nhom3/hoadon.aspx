﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="hoadon.aspx.cs" Inherits="hoadon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <section>
         <div id="head">
         </div>
         <div id="content">
            <div class="line">
               <div class="margin">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="tongtien" HeaderText="tongtien" SortExpression="tongtien" />
            <asp:BoundField DataField="trangthai" HeaderText="trangthai" SortExpression="trangthai" />
            <asp:BoundField DataField="ngay" HeaderText="ngay" SortExpression="ngay" />
            <asp:BoundField DataField="User_id" HeaderText="User_id" SortExpression="User_id" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
                   </asp:DetailsView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\banhang.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [hoadon] WHERE [id] = @id" InsertCommand="INSERT INTO [hoadon] ([id], [tongtien], [trangthai], [ngay], [User_id]) VALUES (@id, @tongtien, @trangthai, @ngay, @User_id)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [tongtien], [trangthai], [ngay], [User_id] FROM [hoadon]" UpdateCommand="UPDATE [hoadon] SET [tongtien] = @tongtien, [trangthai] = @trangthai, [ngay] = @ngay, [User_id] = @User_id WHERE [id] = @id">
                       <DeleteParameters>
                           <asp:Parameter Name="id" Type="String" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:Parameter Name="id" Type="String" />
                           <asp:Parameter Name="tongtien" Type="Decimal" />
                           <asp:Parameter Name="trangthai" Type="String" />
                           <asp:Parameter Name="ngay" Type="DateTime" />
                           <asp:Parameter Name="User_id" Type="String" />
                       </InsertParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="tongtien" Type="Decimal" />
                           <asp:Parameter Name="trangthai" Type="String" />
                           <asp:Parameter Name="ngay" Type="DateTime" />
                           <asp:Parameter Name="User_id" Type="String" />
                           <asp:Parameter Name="id" Type="String" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
               </div>
            </div>
         </div>
         <div id="fourth-block">
            <div class="line">
               <div id="owl-demo2" class="owl-carousel owl-theme">
               </div>
            </div>
         </div>
      </section>
</form>
</asp:Content>

