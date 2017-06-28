<%@ Page Title="Loai San Pham" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
    <div class="container_fullwidth">
        <div class="container">
          <div class="nen">
              <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaLoaiSP" DataSourceID="SqlDataSource1">
                  <EditItemTemplate>
                      MaLoaiSP:
                      <asp:Label ID="MaLoaiSPLabel1" runat="server" Text='<%# Eval("MaLoaiSP") %>' />
                      <br />
                      TenLoai:
                      <asp:TextBox ID="TenLoaiTextBox" runat="server" Text='<%# Bind("TenLoai") %>' />
                      <br />
                      parent_category_id:
                      <asp:TextBox ID="parent_category_idTextBox" runat="server" Text='<%# Bind("parent_category_id") %>' />
                      <br />
                      <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                      &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      MaLoaiSP:
                      <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
                      <br />
                      TenLoai:
                      <asp:TextBox ID="TenLoaiTextBox" runat="server" Text='<%# Bind("TenLoai") %>' />
                      <br />
                      parent_category_id:
                      <asp:TextBox ID="parent_category_idTextBox" runat="server" Text='<%# Bind("parent_category_id") %>' />
                      <br />
                      <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                      &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                  </InsertItemTemplate>
                  <ItemTemplate>
                      MaLoaiSP:
                      <asp:Label ID="MaLoaiSPLabel" runat="server" Text='<%# Eval("MaLoaiSP") %>' />
                      <br />
                      TenLoai:
                      <asp:Label ID="TenLoaiLabel" runat="server" Text='<%# Bind("TenLoai") %>' />
                      <br />
                      parent_category_id:
                      <asp:Label ID="parent_category_idLabel" runat="server" Text='<%# Bind("parent_category_id") %>' />
                      <br />
                      <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                      &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                      &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                  </ItemTemplate>
              </asp:FormView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLoaiSP] = @original_MaLoaiSP AND [TenLoai] = @original_TenLoai AND (([parent_category_id] = @original_parent_category_id) OR ([parent_category_id] IS NULL AND @original_parent_category_id IS NULL))" InsertCommand="INSERT INTO [LoaiSanPham] ([MaLoaiSP], [TenLoai], [parent_category_id]) VALUES (@MaLoaiSP, @TenLoai, @parent_category_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLoai] = @TenLoai, [parent_category_id] = @parent_category_id WHERE [MaLoaiSP] = @original_MaLoaiSP AND [TenLoai] = @original_TenLoai AND (([parent_category_id] = @original_parent_category_id) OR ([parent_category_id] IS NULL AND @original_parent_category_id IS NULL))">
                  <DeleteParameters>
                      <asp:Parameter Name="original_MaLoaiSP" Type="Int32" />
                      <asp:Parameter Name="original_TenLoai" Type="String" />
                      <asp:Parameter Name="original_parent_category_id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="MaLoaiSP" Type="Int32" />
                      <asp:Parameter Name="TenLoai" Type="String" />
                      <asp:Parameter Name="parent_category_id" Type="Int32" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="TenLoai" Type="String" />
                      <asp:Parameter Name="parent_category_id" Type="Int32" />
                      <asp:Parameter Name="original_MaLoaiSP" Type="Int32" />
                      <asp:Parameter Name="original_TenLoai" Type="String" />
                      <asp:Parameter Name="original_parent_category_id" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
              </div>
        </div>
        </div>
    </form>
</asp:Content>
