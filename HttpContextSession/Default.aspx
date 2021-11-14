<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HttpContextSession._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin-top: 15px !important;">
        <div class="panel panel-default">
            <div class="panel-heading">Get HttpContext.Current.Session value in JavaScript or jQuery</div>
            <div class="panel-body mt-5">
                <div class="col-md-4">
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <input id="btnSet" type="button" value="Set Session" class="btn btn-primary" />
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnSet").click(function () {
                $.ajax({
                    type: "POST",
                    url: "Default.aspx/SetSession",
                    data: '{name: "' + $("[id*=txtUserName]").val() + '" }',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        alert(response.d);
                    },
                    failure: function (response) {
                        alert(response.responseText);
                    },
                    error: function (response) {
                        alert(response.responseText);
                    }
                });
            });
        });
    </script>

</asp:Content>
