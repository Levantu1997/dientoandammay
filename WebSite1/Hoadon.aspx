<%@ Page Title="Hoa Don" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
    <div class="container_fullwidth">
        <div class="container">
          <div class="nen">
              <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Ma" DataSourceID="SqlDataSource1">
                  <EditItemTemplate>
                      Ma:
                      <asp:Label ID="MaLabel1" runat="server" Text='<%# Eval("Ma") %>' />
                      <br />
                      MaHoaDon:
                      <asp:TextBox ID="MaHoaDonTextBox" runat="server" Text='<%# Bind("MaHoaDon") %>' />
                      <br />
                      MaKH:
                      <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
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
                      MaKH:
                      <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
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
                      MaKH:
                      <asp:Label ID="MaKHLabel" runat="server" Text='<%# Bind("MaKH") %>' />
                      <br />
                      <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                      &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                      &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                  </ItemTemplate>
              </asp:FormView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [Ma] = @original_Ma AND [MaHoaDon] = @original_MaHoaDon AND [MaKH] = @original_MaKH" InsertCommand="INSERT INTO [HoaDon] ([Ma], [MaHoaDon], [MaKH]) VALUES (@Ma, @MaHoaDon, @MaKH)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaHoaDon] = @MaHoaDon, [MaKH] = @MaKH WHERE [Ma] = @original_Ma AND [MaHoaDon] = @original_MaHoaDon AND [MaKH] = @original_MaKH">
                  <DeleteParameters>
                      <asp:Parameter Name="original_Ma" Type="Int32" />
                      <asp:Parameter Name="original_MaHoaDon" Type="String" />
                      <asp:Parameter Name="original_MaKH" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="Ma" Type="Int32" />
                      <asp:Parameter Name="MaHoaDon" Type="String" />
                      <asp:Parameter Name="MaKH" Type="Int32" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="MaHoaDon" Type="String" />
                      <asp:Parameter Name="MaKH" Type="Int32" />
                      <asp:Parameter Name="original_Ma" Type="Int32" />
                      <asp:Parameter Name="original_MaHoaDon" Type="String" />
                      <asp:Parameter Name="original_MaKH" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
              </div>
        </div>
        </div>
    </form>
</asp:Content>
