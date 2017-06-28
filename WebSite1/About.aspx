<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
    <div class="container_fullwidth">
        <div class="container">
          <div class="nen">
              <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Ma" DataSourceID="SqlDataSource2">
                  <EditItemTemplate>
                      Ma:
                      <asp:Label ID="MaLabel1" runat="server" Text='<%# Eval("Ma") %>' />
                      <br />
                      TenKH:
                      <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                      <br />
                      email:
                      <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                      <br />
                      <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                      &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      Ma:
                      <asp:TextBox ID="MaTextBox" runat="server" Text='<%# Bind("Ma") %>' />
                      <br />
                      TenKH:
                      <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                      <br />
                      email:
                      <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                      <br />
                      <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                      &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                  </InsertItemTemplate>
                  <ItemTemplate>
                      Ma:
                      <asp:Label ID="MaLabel" runat="server" Text='<%# Eval("Ma") %>' />
                      <br />
                      TenKH:
                      <asp:Label ID="TenKHLabel" runat="server" Text='<%# Bind("TenKH") %>' />
                      <br />
                      email:
                      <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                      <br />

                      <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                      &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                      &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                  </ItemTemplate>
              </asp:FormView>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [Ma] = @original_Ma AND [TenKH] = @original_TenKH AND [email] = @original_email" InsertCommand="INSERT INTO [KhachHang] ([Ma], [TenKH], [email]) VALUES (@Ma, @TenKH, @email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [email] = @email WHERE [Ma] = @original_Ma AND [TenKH] = @original_TenKH AND [email] = @original_email">
                  <DeleteParameters>
                      <asp:Parameter Name="original_Ma" Type="Int32" />
                      <asp:Parameter Name="original_TenKH" Type="String" />
                      <asp:Parameter Name="original_email" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="Ma" Type="Int32" />
                      <asp:Parameter Name="TenKH" Type="String" />
                      <asp:Parameter Name="email" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="TenKH" Type="String" />
                      <asp:Parameter Name="email" Type="String" />
                      <asp:Parameter Name="original_Ma" Type="Int32" />
                      <asp:Parameter Name="original_TenKH" Type="String" />
                      <asp:Parameter Name="original_email" Type="String" />
                  </UpdateParameters>
              </asp:SqlDataSource>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [KhachHang]"></asp:SqlDataSource>
              </div>
        </div>
        </div>
    </form>
</asp:Content>
