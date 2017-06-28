<%@ Page Title="San Pham" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
    <div class="container_fullwidth">
        <div class="container">
          <div class="nen">
              <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaSP" DataSourceID="SqlDataSource1">
                  <EditItemTemplate>
                      MaSP:
                      <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
                      <br />
                      MaLoaiSP:
                      <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
                      <br />
                      Loai:
                      <asp:TextBox ID="LoaiTextBox" runat="server" Text='<%# Bind("Loai") %>' />
                      <br />
                      Ten:
                      <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
                      <br />
                      Gia:
                      <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                      <br />
                      MoTa:
                      <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                      <br />
                      img:
                      <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
                      <br />
                      <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                      &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      MaSP:
                      <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                      <br />
                      MaLoaiSP:
                      <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
                      <br />
                      Loai:
                      <asp:TextBox ID="LoaiTextBox" runat="server" Text='<%# Bind("Loai") %>' />
                      <br />
                      Ten:
                      <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
                      <br />
                      Gia:
                      <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                      <br />
                      MoTa:
                      <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                      <br />
                      img:
                      <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
                      <br />
                      <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                      &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                  </InsertItemTemplate>
                  <ItemTemplate>
                      MaSP:
                      <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                      <br />
                      MaLoaiSP:
                      <asp:Label ID="MaLoaiSPLabel" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
                      <br />
                      Loai:
                      <asp:Label ID="LoaiLabel" runat="server" Text='<%# Bind("Loai") %>' />
                      <br />
                      Ten:
                      <asp:Label ID="TenLabel" runat="server" Text='<%# Bind("Ten") %>' />
                      <br />
                      Gia:
                      <asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
                      <br />
                      MoTa:
                      <asp:Label ID="MoTaLabel" runat="server" Text='<%# Bind("MoTa") %>' />
                      <br />
                      img:
                      <asp:Label ID="imgLabel" runat="server" Text='<%# Bind("img") %>' />
                      <br />
                      <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                      &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                      &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                  </ItemTemplate>
              </asp:FormView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @original_MaSP AND [MaLoaiSP] = @original_MaLoaiSP AND [Loai] = @original_Loai AND [Ten] = @original_Ten AND [Gia] = @original_Gia AND [MoTa] = @original_MoTa AND [img] = @original_img" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaLoaiSP], [Loai], [Ten], [Gia], [MoTa], [img]) VALUES (@MaSP, @MaLoaiSP, @Loai, @Ten, @Gia, @MoTa, @img)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoaiSP] = @MaLoaiSP, [Loai] = @Loai, [Ten] = @Ten, [Gia] = @Gia, [MoTa] = @MoTa, [img] = @img WHERE [MaSP] = @original_MaSP AND [MaLoaiSP] = @original_MaLoaiSP AND [Loai] = @original_Loai AND [Ten] = @original_Ten AND [Gia] = @original_Gia AND [MoTa] = @original_MoTa AND [img] = @original_img">
                  <DeleteParameters>
                      <asp:Parameter Name="original_MaSP" Type="Int32" />
                      <asp:Parameter Name="original_MaLoaiSP" Type="Int32" />
                      <asp:Parameter Name="original_Loai" Type="String" />
                      <asp:Parameter Name="original_Ten" Type="String" />
                      <asp:Parameter Name="original_Gia" Type="Decimal" />
                      <asp:Parameter Name="original_MoTa" Type="String" />
                      <asp:Parameter Name="original_img" Type="Object" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="MaSP" Type="Int32" />
                      <asp:Parameter Name="MaLoaiSP" Type="Int32" />
                      <asp:Parameter Name="Loai" Type="String" />
                      <asp:Parameter Name="Ten" Type="String" />
                      <asp:Parameter Name="Gia" Type="Decimal" />
                      <asp:Parameter Name="MoTa" Type="String" />
                      <asp:Parameter Name="img" Type="Object" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="MaLoaiSP" Type="Int32" />
                      <asp:Parameter Name="Loai" Type="String" />
                      <asp:Parameter Name="Ten" Type="String" />
                      <asp:Parameter Name="Gia" Type="Decimal" />
                      <asp:Parameter Name="MoTa" Type="String" />
                      <asp:Parameter Name="img" Type="Object" />
                      <asp:Parameter Name="original_MaSP" Type="Int32" />
                      <asp:Parameter Name="original_MaLoaiSP" Type="Int32" />
                      <asp:Parameter Name="original_Loai" Type="String" />
                      <asp:Parameter Name="original_Ten" Type="String" />
                      <asp:Parameter Name="original_Gia" Type="Decimal" />
                      <asp:Parameter Name="original_MoTa" Type="String" />
                      <asp:Parameter Name="original_img" Type="Object" />
                  </UpdateParameters>
              </asp:SqlDataSource>
              </div>
        </div>
        </div>
    </form>
</asp:Content>
