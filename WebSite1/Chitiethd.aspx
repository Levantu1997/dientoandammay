<%@ Page Title="Chi tiet" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
    <div class="container_fullwidth">
        <div class="container">
          <div class="nen">
              <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma" DataSourceID="SqlDataSource1" AllowPaging="True">
                  <EditItemTemplate>
                      Ma:
                      <asp:Label ID="MaLabel1" runat="server" Text='<%# Eval("Ma") %>' />
                      <br />
                      MaHoaDon:
                      <asp:TextBox ID="MaHoaDonTextBox" runat="server" Text='<%# Bind("MaHoaDon") %>' />
                      <br />
                      MaSP:
                      <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                      <br />
                      SoLuong:
                      <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                      <br />
                      <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                      &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      Ma:
                      <asp:TextBox ID="MaTextBox" runat="server" Text='<%# Bind("Ma") %>' />
                      <br />
                      MaHoaDon:
                      <asp:TextBox ID="MaHoaDonTextBox" runat="server" Text='<%# Bind("MaHoaDon") %>' />
                      <br />
                      MaSP:
                      <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                      <br />
                      SoLuong:
                      <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                      <br />
                      <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                      &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                  </InsertItemTemplate>
                  <ItemTemplate>
                      Ma:
                      <asp:Label ID="MaLabel" runat="server" Text='<%# Eval("Ma") %>' />
                      <br />
                      MaHoaDon:
                      <asp:Label ID="MaHoaDonLabel" runat="server" Text='<%# Bind("MaHoaDon") %>' />
                      <br />
                      MaSP:
                      <asp:Label ID="MaSPLabel" runat="server" Text='<%# Bind("MaSP") %>' />
                      <br />
                      SoLuong:
                      <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
                      <br />
                      <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                      &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                      &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                  </ItemTemplate>
              </asp:FormView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [Ma] = @original_Ma AND [MaHoaDon] = @original_MaHoaDon AND [MaSP] = @original_MaSP AND [SoLuong] = @original_SoLuong" InsertCommand="INSERT INTO [ChiTietHoaDon] ([Ma], [MaHoaDon], [MaSP], [SoLuong]) VALUES (@Ma, @MaHoaDon, @MaSP, @SoLuong)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [MaHoaDon] = @MaHoaDon, [MaSP] = @MaSP, [SoLuong] = @SoLuong WHERE [Ma] = @original_Ma AND [MaHoaDon] = @original_MaHoaDon AND [MaSP] = @original_MaSP AND [SoLuong] = @original_SoLuong">
                  <DeleteParameters>
                      <asp:Parameter Name="original_Ma" Type="Int32" />
                      <asp:Parameter Name="original_MaHoaDon" Type="Int32" />
                      <asp:Parameter Name="original_MaSP" Type="Int32" />
                      <asp:Parameter Name="original_SoLuong" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="Ma" Type="Int32" />
                      <asp:Parameter Name="MaHoaDon" Type="Int32" />
                      <asp:Parameter Name="MaSP" Type="Int32" />
                      <asp:Parameter Name="SoLuong" Type="Int32" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="MaHoaDon" Type="Int32" />
                      <asp:Parameter Name="MaSP" Type="Int32" />
                      <asp:Parameter Name="SoLuong" Type="Int32" />
                      <asp:Parameter Name="original_Ma" Type="Int32" />
                      <asp:Parameter Name="original_MaHoaDon" Type="Int32" />
                      <asp:Parameter Name="original_MaSP" Type="Int32" />
                      <asp:Parameter Name="original_SoLuong" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
              </div>
        </div>
        </div>
    </form>
</asp:Content>
